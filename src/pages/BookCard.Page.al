page 50202 BookCard
{
    Caption = 'Book Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            group(Control)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Cislo knizky';
                }
                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;
                    ToolTip = 'International Standard Book Number';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Nazev knihy';
                }
                field("No. Pages"; Rec."No. Pages")
                {
                    ApplicationArea = All;
                    ToolTip = 'Pocet stranek';
                }

            }
        }
    }
}