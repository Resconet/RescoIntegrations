page 50114 RescoServiceCost
{
    PageType = API;
    Caption = 'RescoServiceCost';
    APIPublisher = 'Resco';
    APIVersion = 'v2.0';
    APIGroup = 'RescoIntegrations';
    EntityName = 'RescoServiceCost';
    EntitySetName = 'RescoServiceCost';
    SourceTable = "Service Cost";
    DelayedInsert = true;
    ChangeTrackingAllowed = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("code"; Rec."Code")
                {
                    Caption = 'Code';
                }
                field(accountNo; Rec."Account No.")
                {
                    Caption = 'Account No.';
                }
                field(costType; Rec."Cost Type")
                {
                    Caption = 'Cost Type';
                }
                field(defaultQuantity; Rec."Default Quantity")
                {
                    Caption = 'Default Quantity';
                }
                field(defaultUnitCost; Rec."Default Unit Cost")
                {
                    Caption = 'Default Unit Cost';
                }
                field(defaultUnitPrice; Rec."Default Unit Price")
                {
                    Caption = 'Default Unit Price';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(rescoIsService; true)
                {
                    Caption = 'Resco IsService';
                }
                field(rowVersionNumber; Rec.RowVersionNumber)
                {
                    Caption = 'RoW Version Number';
                }
                field(serviceZoneCode; Rec."Service Zone Code")
                {
                    Caption = 'Service Zone Code';
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'SystemCreatedAt';
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'SystemCreatedBy';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    Caption = 'SystemModifiedBy';
                }
                field(unitOfMeasureCode; Rec."Unit of Measure Code")
                {
                    Caption = 'Unit of Measure Code';
                }
            }
        }
    }

}
