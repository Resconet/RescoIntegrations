codeunit 50100 RescoNextNoGenerator
{
    Access = Public;
    Subtype = Normal;

    //Service Item Line
    procedure GetNextLineNoForServiceItemLine(var documentType: Enum "Service Document Type"; var documentNo: Code[20]; var lineNo: Integer): Integer
    var
        ServItemLine: Record "Service Item Line";
    begin
        if lineNo <> 0 then
            if not ServItemLine.Get(documentType, documentNo, lineNo) then
                exit(lineNo);

        ServItemLine.SetRange("Document Type", documentType);
        ServItemLine.SetRange("Document No.", documentNo);
        if ServItemLine.FindLast() then
            exit(ServItemLine."Line No." + 10000);
        exit(10000);
    end;

    //Service Line
    procedure GetNextLineNoForServiceLine(var documentType: Enum "Service Document Type"; var documentNo: Code[20]; var lineNo: Integer): Integer
    var
        ServLine: Record "Service Line";
    begin
        if lineNo <> 0 then
            if not ServLine.Get(documentType, documentNo, lineNo) then
                exit(lineNo);

        ServLine.SetRange("Document Type", documentType);
        ServLine.SetRange("Document No.", documentNo);
        if ServLine.FindLast() then
            exit(ServLine."Line No." + 10000);
        exit(10000);
    end;
}
