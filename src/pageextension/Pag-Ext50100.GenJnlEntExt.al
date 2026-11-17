pageextension 50100 GenJnlEntExt extends "General Ledger Entries"
{
    layout
    {
        addafter("External Document No.")
        {
            field("Testing Field"; Rec."Testing Field")
            {
                ApplicationArea = All;
            }
        }
    }
}
