page 50109 "Resco Contact"
{
    PageType = API;
    Caption = 'RescoContact';
    APIPublisher = 'Resco';
    APIVersion = 'v2.0';
    APIGroup = 'RescoIntegrations';
    EntityName = 'RescoContact';
    EntitySetName = 'RescoContact';
    SourceTable = Contact;
    DelayedInsert = true;
    ChangeTrackingAllowed = true;
    ODataKeyFields = "No.";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(No; Rec."No.")
                {
                    Caption = 'No';
                    Editable = false;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(Email; Rec."E-Mail")
                {
                    Caption = 'Email';
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Address';
                }
                field(Address2; Rec."Address 2")
                {
                    Caption = 'Address2';
                }
                field(CountryRegionCode; Rec."Country/Region Code")
                {
                    Caption = 'CountryRegionCode';
                }
                field(City; Rec.City)
                {
                    Caption = 'City';
                }
                field(State; Rec.County)
                {
                    Caption = 'State';
                }
                field(PostCode; Rec."Post Code")
                {
                    Caption = 'PostCode';
                }
                field(PhoneNo; Rec."Phone No.")
                {
                    Caption = 'PhoneNo';
                }
                field(CustomerNo; CustomerNo)
                {
                    Caption = 'CustomerNo';
                }
                field(ContactBusinessRelation; Rec."Contact Business Relation")
                {
                    Caption = 'ContactBusinessRelation';
                }
                field(Type; Rec.Type)
                {
                    Caption = 'Type';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(RowVersionNumber; Rec.RowVersionNumber)
                {
                    Caption = 'VersionNumber';
                }
            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Rec.Insert(true);
        //allways set Person Type
        Rec.Type := "Contact Type"::Person;
        SetCompanyNo();
        Rec.Modify(true);
        exit(false);
    end;

    trigger OnModifyRecord(): Boolean
    begin
        SetCompanyNo();
    end;

    trigger OnAfterGetCurrRecord()
    begin
        if Rec.Type = Rec.Type::Person then
            GetCustomerNo()
        else
            CustomerNo := '';
    end;

    var
        CustomerNo: Code[20];

    local procedure GetCustomerNo()
    var
        ContactBusinessRelation: Record "Contact Business Relation";
    begin
        ContactBusinessRelation.SetCurrentKey("Link to Table", "Contact No.");
        ContactBusinessRelation.SetRange("Link to Table", ContactBusinessRelation."Link to Table"::Customer);
        ContactBusinessRelation.SetRange("Contact No.", Rec."Company No.");
        if ContactBusinessRelation.FindFirst then begin
            CustomerNo := ContactBusinessRelation."No.";
        end else
            CustomerNo := '';
    end;

    local procedure SetCompanyNo()
    var
        ContactBusinessRelation: Record "Contact Business Relation";
        CustomerRecord: Record Customer;
    begin
        ContactBusinessRelation.SetCurrentKey("Link to Table", "No.");
        ContactBusinessRelation.SetRange("Link to Table", ContactBusinessRelation."Link to Table"::Customer);
        ContactBusinessRelation.SetRange("No.", CustomerNo);
        if ContactBusinessRelation.FindFirst then begin
            Rec."Company No." := ContactBusinessRelation."Contact No.";
            if CustomerRecord.Get(CustomerNo) then begin
                Rec."Company Name" := CustomerRecord.Name;
            end;
            Rec.UpdateBusinessRelation();
        end
    end;
}