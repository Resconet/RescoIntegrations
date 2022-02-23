page 50107 RescoServiceItemLine
{
    APIGroup = 'RescoIntegrations';
    APIPublisher = 'Resco';
    APIVersion = 'v2.0';
    Caption = 'RescoServiceItemLine';
    DelayedInsert = true;
    EntityName = 'RescoServiceItemLine';
    EntitySetName = 'RescoServiceItemLine';
    PageType = API;
    SourceTable = "Service Item Line";
    Editable = true;
    InsertAllowed = true;
    ModifyAllowed = true;
    SourceTableView = WHERE("Document Type" = CONST(Order));

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                    ApplicationArea = All;
                }
                field(serviceItemNo; Rec."Service Item No.")
                {
                    Caption = 'Service Item No.';
                    ApplicationArea = All;
                }
                field(documentNo; Rec."Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'Document No.';
                }
                field(documentType; Rec."Document Type")
                {
                    ApplicationArea = All;
                    Caption = 'Document Type';
                }
                field(itemNo; Rec."Item No.")
                {
                    Caption = 'Item No.';
                }
                field(serviceOrderFilter; Rec."Service Order Filter")
                {
                    Caption = 'Service Order Filter';
                }
                field(actualResponseTimeHours; Rec."Actual Response Time (Hours)")
                {
                    Caption = 'Actual Response Time (Hours)';
                }
                field(adjustmentType; Rec."Adjustment Type")
                {
                    Caption = 'Adjustment Type';
                }
                field(baseAmountToAdjust; Rec."Base Amount to Adjust")
                {
                    Caption = 'Base Amount to Adjust';
                }
                field(contractLineNo; Rec."Contract Line No.")
                {
                    Caption = 'Contract Line No.';
                }
                field(contractNo; Rec."Contract No.")
                {
                    Caption = 'Contract No.';
                }
                field(customerNo; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(description2; Rec."Description 2")
                {
                    Caption = 'Description 2';
                }
                field(dimensionSetID; Rec."Dimension Set ID")
                {
                    Caption = 'Dimension Set ID';
                }
                field(faultAreaCode; Rec."Fault Area Code")
                {
                    Caption = 'Fault Area Code';
                }
                field(faultCode; Rec."Fault Code")
                {
                    Caption = 'Fault Code';
                }
                field(faultComment; Rec."Fault Comment")
                {
                    Caption = 'Fault Comment';
                }
                field(faultReasonCode; Rec."Fault Reason Code")
                {
                    Caption = 'Fault Reason Code';
                }
                field(finishingDate; Rec."Finishing Date")
                {
                    Caption = 'Finishing Date';
                }
                field(finishingTime; Rec."Finishing Time")
                {
                    Caption = 'Finishing Time';
                }
                field(loanerNo; Rec."Loaner No.")
                {
                    Caption = 'Loaner No.';
                }
                field(locationOfServiceItem; Rec."Location of Service Item")
                {
                    Caption = 'Location of Service Item';
                }
                field(noOfActiveFinishedAllocs; Rec."No. of Active/Finished Allocs")
                {
                    Caption = 'No. of Active/Finished Allocs';
                }
                field(noOfAllocations; Rec."No. of Allocations")
                {
                    Caption = 'No. of Allocations';
                }
                field(noOfPreviousServices; Rec."No. of Previous Services")
                {
                    Caption = 'No. of Previous Services';
                }
                field(priority; Rec.Priority)
                {
                    Caption = 'Priority';
                }
                field(releaseStatus; Rec."Release Status")
                {
                    Caption = 'Release Status';
                }
                field(repairStatusCode; Rec."Repair Status Code")
                {
                    Caption = 'Repair Status Code';
                }
                field(resolutionCode; Rec."Resolution Code")
                {
                    Caption = 'Resolution Code';
                }
                field(resolutionComment; Rec."Resolution Comment")
                {
                    Caption = 'Resolution Comment';
                }
                field(responseDate; Rec."Response Date")
                {
                    Caption = 'Response Date';
                }
                field(responseTime; Rec."Response Time")
                {
                    Caption = 'Response Time';
                }
                field(responseTimeHours; Rec."Response Time (Hours)")
                {
                    Caption = 'Response Time (Hours)';
                }
                field(responsibilityCenter; Rec."Responsibility Center")
                {
                    Caption = 'Responsibility Center';
                }
                field(rowVersionNumber; Rec.RowVersionNumber)
                {
                    Caption = 'RoW Version Number';
                }
                field(serialNo; Rec."Serial No.")
                {
                    Caption = 'Serial No.';
                }
                field(servPriceAdjmtGrCode; Rec."Serv. Price Adjmt. Gr. Code")
                {
                    Caption = 'Serv. Price Adjmt. Gr. Code';
                }
                field(serviceItemGroupCode; Rec."Service Item Group Code")
                {
                    Caption = 'Service Item Group Code';
                }
                field(serviceItemLoanerComment; Rec."Service Item Loaner Comment")
                {
                    Caption = 'Service Item Loaner Comment';
                }
                field(servicePriceGroupCode; Rec."Service Price Group Code")
                {
                    Caption = 'Service Price Group Code';
                }
                field(serviceShelfNo; Rec."Service Shelf No.")
                {
                    Caption = 'Service Shelf No.';
                }
                field(shipToCode; Rec."Ship-to Code")
                {
                    Caption = 'Ship-to Code';
                }
                field(shortcutDimension1Code; Rec."Shortcut Dimension 1 Code")
                {
                    Caption = 'Shortcut Dimension 1 Code';
                }
                field(shortcutDimension2Code; Rec."Shortcut Dimension 2 Code")
                {
                    Caption = 'Shortcut Dimension 2 Code';
                }
                field(startingDate; Rec."Starting Date")
                {
                    Caption = 'Starting Date';
                }
                field(startingTime; Rec."Starting Time")
                {
                    Caption = 'Starting Time';
                }
                field(symptomCode; Rec."Symptom Code")
                {
                    Caption = 'Symptom Code';
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
                field(variantCode; Rec."Variant Code")
                {
                    Caption = 'Variant Code';
                }
                field(vendorItemNo; Rec."Vendor Item No.")
                {
                    Caption = 'Vendor Item No.';
                }
                field(vendorNo; Rec."Vendor No.")
                {
                    Caption = 'Vendor No.';
                }
                field(warranty; Rec.Warranty)
                {
                    Caption = 'Warranty';
                }
                field(warrantyLabor; Rec."Warranty % (Labor)")
                {
                    Caption = 'Warranty % (Labor)';
                }
                field(warrantyParts; Rec."Warranty % (Parts)")
                {
                    Caption = 'Warranty % (Parts)';
                }
                field(warrantyEndingDateLabor; Rec."Warranty Ending Date (Labor)")
                {
                    Caption = 'Warranty Ending Date (Labor)';
                }
                field(warrantyEndingDateParts; Rec."Warranty Ending Date (Parts)")
                {
                    Caption = 'Warranty Ending Date (Parts)';
                }
                field(warrantyStartingDateLabor; Rec."Warranty Starting Date (Labor)")
                {
                    Caption = 'Warranty Starting Date (Labor)';
                }
                field(warrantyStartingDateParts; Rec."Warranty Starting Date (Parts)")
                {
                    Caption = 'Warranty Starting Date (Parts)';
                }
                field(RescoFinishingDateTime; RescoFinishingDateTime)
                {
                    ApplicationArea = All;
                    Caption = 'RescoFinishingDateTime', Locked = true;
                }
                field(RescoResponseDateTime; RescoResponseDateTime)
                {
                    ApplicationArea = All;
                    Caption = 'RescoResponseDateTime', Locked = true;
                }
                field(RescoStartingDateTime; RescoStartingDateTime)
                {
                    ApplicationArea = All;
                    Caption = 'RescoStartingDateTime', Locked = true;
                }
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        noGenerator: Codeunit RescoNextNoGenerator;
    begin
        Rec."Line No." := noGenerator.GetNextLineNoForServiceItemLine(Rec."Document Type", Rec."Document No.", Rec."Line No.");
        SplitRescoDateTimeFieldsTo_Date_Time();
    end;

    trigger OnModifyRecord(): Boolean
    begin
        SplitRescoDateTimeFieldsTo_Date_Time();
    end;

    trigger OnAfterGetCurrRecord()
    begin
        //combine Date and Time to DateTime, because Resco does not have time only type
        RescoFinishingDateTime := CreateDateTime(Rec."Finishing Date", Rec."Finishing Time");
        RescoResponseDateTime := CreateDateTime(Rec."Response Date", Rec."Response Time");
        RescoStartingDateTime := CreateDateTime(Rec."Starting Date", Rec."Starting Time");
    end;

    var
        RescoFinishingDateTime: DateTime;
        RescoResponseDateTime: DateTime;
        RescoStartingDateTime: DateTime;

    local procedure SplitRescoDateTimeFieldsTo_Date_Time()
    begin
        Rec."Finishing Date" := DT2Date(RescoFinishingDateTime);
        Rec."Finishing Time" := DT2Time(RescoFinishingDateTime);
        Rec."Response Date" := DT2Date(RescoResponseDateTime);
        Rec."Response Time" := DT2Time(RescoResponseDateTime);
        Rec."Starting Date" := DT2Date(RescoStartingDateTime);
        Rec."Starting Time" := DT2Time(RescoStartingDateTime);
    end;
}
