tableextension 50100 GenJnlExt extends "Gen. Journal Line"
{
    fields
    {
        field(50100; "Testing Field"; Text[100])
        {
            Caption = 'Testing Field';
            DataClassification = ToBeClassified;
        }
    }
}
