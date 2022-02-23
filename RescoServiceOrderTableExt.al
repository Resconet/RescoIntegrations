tableextension 50103 "Resco Service Order" extends "Service Header"
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

    procedure GetRowVersionNumber(var recordServiceHeader: Record "Service Header") RowVersion: BigInteger
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(recordServiceHeader);
        RecRef.GetBySystemId(recordServiceHeader.SystemId);
        RowVersion := RecRef.Field(0).Value();
    end;
}