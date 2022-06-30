page 50205 BookBorrowLines
{
    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = BookLines;
    AutoSplitKey = true;
    RefreshOnActivate = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Number';

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Name of Book';

                }
                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;
                    ToolTip = 'ID';
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