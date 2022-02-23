page 50109 "Resco Contact"
{
    PageType = API;
    Caption = 'RescoContact', Locked = true;
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
                    ApplicationArea = All;
                    Caption = 'No', Locked = true;
                    Editable = false;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name', Locked = true;
                }
                field(Email; Rec."E-Mail")
                {
                    ApplicationArea = All;
                    Caption = 'Email', Locked = true;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address', Locked = true;
                }
                field(Address2; Rec."Address 2")
                {
                    ApplicationArea = All;
                    Caption = 'Address2', Locked = true;
                }
                field(CountryRegionCode; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                    Caption = 'CountryRegionCode', Locked = true;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    Caption = 'City', Locked = true;
                }
                field(State; Rec.County)
                {
                    ApplicationArea = All;
                    Caption = 'State', Locked = true;
                }
                field(PostCode; Rec."Post Code")
                {
                    ApplicationArea = All;
                    Caption = 'PostCode', Locked = true;
                }
                field(PhoneNo; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'PhoneNo', Locked = true;
                }
                field(CustomerNo; CustomerNo)
                {
                    ApplicationArea = All;
                    Caption = 'CustomerNo', Locked = true;
                }
                field(ContactBusinessRelation; Rec."Contact Business Relation")
                {
                    ApplicationArea = All;
                    Caption = 'ContactBusinessRelation', Locked = true;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    Caption = 'Type', Locked = true;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    Caption = 'SystemModifiedAt';
                }
                field(RowVersionNumber; Rec.RowVersionNumber)
                {
                    ApplicationArea = All;
                    Caption = 'VersionNumber', Locked = true;
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