codeunit 50100 PurchNarrationFlowMgt
{
    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyDocumentFields', '', false, false)]
    local procedure OnAfterCopyDocumentFields(var GenJournalLine: Record "Gen. Journal Line")
    begin
        GenJournalLine."Testing Field" := GenJournalLine."Document No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Tax Document GL Posting", 'OnAfterCopyTaxGenJnlLine', '', false, false)]
    local procedure OnAfterCopyTaxGenJnlLine(var TaxGenJnlLine: Record "Gen. Journal Line")
    begin
        TaxGenJnlLine."Testing Field" := TaxGenJnlLine."Document No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitGLEntry', '', false, false)]
    local procedure OnAfterInitGLEntry(GenJournalLine: Record "Gen. Journal Line"; var GLEntry: Record "G/L Entry")
    begin
        GLEntry."Testing Field" := GenJournalLine."Testing Field";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inventory Posting To G/L", OnPostInvtPostBufOnAfterUpdateGlobalDimFromDimSetID, '', false, false)]
    local procedure "Inventory Posting To G/L_OnPostInvtPostBufOnAfterUpdateGlobalDimFromDimSetID"(var GenJournalLine: Record "Gen. Journal Line"; var GlobalInvtPostBuf: Record "Invt. Posting Buffer" temporary)
    begin
        GenJournalLine."Testing Field" := GenJournalLine."Document No.";
    end;


    var
        myInt: Integer;
}