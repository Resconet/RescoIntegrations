page 50117 RescoUnitOfMeasurePage
{
    APIGroup = 'RescoIntegrations';
    APIPublisher = 'Resco';
    APIVersion = 'v2.0';
    Caption = 'RescoUnitOfMeasure';
    DelayedInsert = true;
    EntityName = 'RescoUnitOfMeasure';
    EntitySetName = 'RescoUnitOfMeasure';
    PageType = API;
    SourceTable = "Unit of Measure";

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
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(internationalStandardCode; Rec."International Standard Code")
                {
                    Caption = 'International Standard Code';
                }
                field(lastModifiedDateTime; Rec."Last Modified Date Time")
                {
                    Caption = 'Last Modified Date Time';
                }
                field(rowVersionNumber; Rec.RowVersionNumber)
                {
                    Caption = 'RoW Version Number';
                }
                field(symbol; Rec.Symbol)
                {
                    Caption = 'Symbol';
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
            }
        }
    }
}
