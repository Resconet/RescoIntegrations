tableextension 50106 RescoServiceLineTableExt extends "Service Line"
{
    fields
    {
        field(50100; RowVersionNumber; BigInteger)
        {
            Caption = 'RowVersionNumber';
            DataClassification = ToBeClassified;
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

    procedure GetRowVersionNumber(var recordServLine: Record "Service Line") RowVersion: BigInteger
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(recordServLine);
        RecRef.GetBySystemId(recordServLine.SystemId);
        RowVersion := RecRef.Field(0).Value();
    end;
}
