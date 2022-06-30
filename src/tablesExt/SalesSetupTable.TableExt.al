tableextension 50200 SalesSetupTable extends "Sales & Receivables Setup"
{
    fields
    {
        field(50200; "Reader Nos."; Code[20])
        {
            Caption = 'Reader Nos.';
            TableRelation = "No. Series";
        }
        field(50201; "Borrow Nos."; Code[20])
        {
            Caption = 'Borrow Nos.';
            TableRelation = "No. Series";
        }
    }
}