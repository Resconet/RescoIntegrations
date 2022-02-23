tableextension 50107 "Resco Resource" extends Resource
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

    procedure GetRowVersionNumber(var recordResource: Record Resource) RowVersion: BigInteger
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(recordResource);
        RecRef.GetBySystemId(recordResource.SystemId);
        RowVersion := RecRef.Field(0).Value();
    end;
}
