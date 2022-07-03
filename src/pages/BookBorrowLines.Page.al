page 50205 BookBorrowLines
{
    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = BookLines;
    //AutoSplitKey = pomaha automaticky doplnovat data do fields
    AutoSplitKey = true;
    RefreshOnActivate = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                //Pro vice knih na jednu objednavku
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Cislo radku';

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Jmeno knihy';

                }
                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;
                    ToolTip = 'International Standard Book Number';
                }
                field("No. Pages"; Rec."No. Pages")
                {
                    ApplicationArea = All;
                    ToolTip = 'Pocet stran';
                }



            }
        }
    }
}