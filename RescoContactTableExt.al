tableextension 50102 "Resco Contact" extends Contact
{
    fields
    {
        field(50000; RowVersionNumber; BigInteger)
        {
            Caption = 'Row Version Number';
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

    procedure GetRowVersionNumber(var recordContact: Record Contact) RowVersion: BigInteger
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(recordContact);
        RecRef.GetBySystemId(recordContact.SystemId);
        RowVersion := RecRef.Field(0).Value();
    end;
}