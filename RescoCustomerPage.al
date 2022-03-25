page 50110 "Resco Customer"
{
    PageType = API;
    Caption = 'RescoCustomer';
    APIPublisher = 'Resco';
    APIVersion = 'v2.0';
    APIGroup = 'RescoIntegrations';
    EntityName = 'RescoCustomer';
    EntitySetName = 'RescoCustomer';
    SourceTable = Customer;
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
                field(HomePage; Rec."Home Page")
                {
                    Caption = 'HomePage';
                }
                field(PrimaryContacNo; Rec."Primary Contact No.")
                {
                    Caption = 'PrimaryContactNo';
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
}