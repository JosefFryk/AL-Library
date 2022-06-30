page 50205 BookBorrowLines
{
    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = BookLines;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Name of Book';

                }


            }
        }
    }
}