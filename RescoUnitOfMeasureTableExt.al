tableextension 50114 RescoUnitOfMeasureTableExt extends "Unit of Measure"
{
    fields
    {
        field(50000; RowVersionNumber; BigInteger)
        {
            Caption = 'RoW Version Number';
            DataClassification = CustomerContent;
        }
    }
    trigger OnAfterInsert()
    begin
        Rec.RowVersionNumber := GetRowVersionNumber(Rec);
        Rec.Modify(false);
    end;

    trigger OnAfterModify()
    begin
        Rec.RowVersionNumber := GetRowVersionNumber(Rec);
        Rec.Modify(false);
    end;

    procedure GetRowVersionNumber(var recordUnitOfMeasure: Record "Unit of Measure") RowVersion: BigInteger
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(recordUnitOfMeasure);
        RecRef.GetBySystemId(recordUnitOfMeasure.SystemId);
        RowVersion := RecRef.Field(0).Value();
    end;
}
