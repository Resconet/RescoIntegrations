page 50112 "Resco Service Item"
{
    PageType = API;
    Caption = 'RescoServiceItem', Locked = true;
    APIPublisher = 'Resco';
    APIVersion = 'v2.0';
    APIGroup = 'RescoIntegrations';
    EntityName = 'RescoServiceItem';
    EntitySetName = 'RescoServiceItem';
    SourceTable = "Service Item";
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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description', Locked = true;
                }
                field(SerialNo; Rec."Serial No.")
                {
                    ApplicationArea = All;
                    Caption = 'SerialNo', Locked = true;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Caption = 'Status', Locked = true;
                }
                field(LastServiceDate; Rec."Last Service Date")
                {
                    ApplicationArea = All;
                    Caption = 'LastServiceDate', Locked = true;
                }
                field(WarrantyStartingDateLabor; Rec."Warranty Starting Date (Labor)")
                {
                    ApplicationArea = All;
                    Caption = 'WarrantyStartingDateLabor', Locked = true;
                }
                field(CustomerNo; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    Caption = 'CustomerNo', Locked = true;
                }
                field(SalesUnitPrice; Rec."Sales Unit Price")
                {
                    ApplicationArea = All;
                    Caption = 'SalesUnitPrice', Locked = true;
                }
                field(Type; Rec."Type Filter")
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
}