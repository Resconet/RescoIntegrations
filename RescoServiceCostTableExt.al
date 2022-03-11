tableextension 50110 "Resco Service Cost" extends "Service Cost"
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

    procedure GetRowVersionNumber(var serviceCostRecord: Record "Service Cost") RowVersion: BigInteger
    var
        RecRef: RecordRef;
    begin
        RecRef.GetTable(serviceCostRecord);
        RecRef.GetBySystemId(serviceCostRecord.SystemId);
        RowVersion := RecRef.Field(0).Value();
    end;
}