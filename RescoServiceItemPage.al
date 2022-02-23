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
                field(RescoStatus; RescoStatus)
                {
                    ApplicationArea = All;
                    Caption = 'RescoStatus', Locked = true;
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

    //Note: RescoStatus and Status are disabled in default mapping
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        ConvertRescoStatusToBCStatus();
    end;

    trigger OnModifyRecord(): Boolean
    begin
        ConvertRescoStatusToBCStatus();
    end;

    trigger OnAfterGetCurrRecord()
    begin
        //Convert Business Central Status to Resco Status
        // B.Central            - RescoCloud 0 Active, 1 Inactive
        // '' 0                 - Inactive 1
        // Own Service Item 1   - Active 0
        // Installed 2          - Active 0
        // Temporrarly Installed 3   - Active 0
        // Deffective 4         - Inactive 1
        case Rec.Status of
            "Service Item Status"::" ":
                RescoStatus := 1;
            "Service Item Status"::"Own Service Item":
                RescoStatus := 0;
            "Service Item Status"::Installed:
                RescoStatus := 0;
            "Service Item Status"::"Temporarily Installed":
                RescoStatus := 0;
            "Service Item Status"::Defective:
                RescoStatus := 1;
        end;
    end;

    var
        RescoStatus: Integer;

    local procedure ConvertRescoStatusToBCStatus()
    begin
        case RescoStatus of
            0:
                Rec.Status := "Service Item Status"::Installed;
            1:
                Rec.Status := "Service Item Status"::" ";
        end;
    end;
}