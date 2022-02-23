page 50110 "Resco Customer"
{
    PageType = API;
    Caption = 'RescoCustomer', Locked = true;
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
                field(HomePage; Rec."Home Page")
                {
                    ApplicationArea = All;
                    Caption = 'HomePage', Locked = true;
                }
                field(PrimaryContacNo; Rec."Primary Contact No.")
                {
                    ApplicationArea = All;
                    Caption = 'PrimaryContactNo', Locked = true;
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
}