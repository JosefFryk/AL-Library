pageextension 50200 SalesSetupPage extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Reader Nos."; Rec."Reader Nos.")
            {
                Caption = 'Reader Nos.';
                ApplicationArea = All;
                ToolTip = 'Reader number series';
            }
            field("Borrow Nos."; Rec."Borrow Nos.")
            {
                Caption = 'Borrow Nos.';
                ApplicationArea = All;
                ToolTip = 'Borrow number series';
            }
        }
    }
}