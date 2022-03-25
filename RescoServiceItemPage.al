page 50112 "Resco Service Item"
{
    PageType = API;
    Caption = 'RescoServiceItem';
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
                    Caption = 'No';
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(SerialNo; Rec."Serial No.")
                {
                    Caption = 'SerialNo';
                }
                field(Status; Rec.Status)
                {
                    Caption = 'Status';
                }
                field(LastServiceDate; Rec."Last Service Date")
                {
                    Caption = 'LastServiceDate';
                }
                field(WarrantyStartingDateLabor; Rec."Warranty Starting Date (Labor)")
                {
                    Caption = 'WarrantyStartingDateLabor';
                }
                field(CustomerNo; Rec."Customer No.")
                {
                    Caption = 'CustomerNo';
                }
                field(SalesUnitPrice; Rec."Sales Unit Price")
                {
                    Caption = 'SalesUnitPrice';
                }
                field(Type; Rec."Type Filter")
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
}