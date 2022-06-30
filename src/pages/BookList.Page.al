page 50203 BookList
{
    Caption = 'Book List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Book;
    CardPageId = BookCard;
    ModifyAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(General)
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