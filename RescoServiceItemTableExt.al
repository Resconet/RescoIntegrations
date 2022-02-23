tableextension 50104 "Resco Service Item" extends "Service Item"
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

    procedure GetRowVersionNumber(var recordServItem: Record "Service Item") RowVersion: BigInteger
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(recordServItem);
        RecRef.GetBySystemId(recordServItem.SystemId);
        RowVersion := RecRef.Field(0).Value();
    end;
}