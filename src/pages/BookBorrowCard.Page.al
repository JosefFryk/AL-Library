page 50204 "BookBorrowCard"
{
    Caption = 'Book Borrow Card';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Borrow;
    //page id 42
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General Info';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of borrow';
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Reader Name';
                    ToolTip = 'Name of Reader';
                }
                field(BorrowDate; Rec.BorrowDate)
                {
                    ApplicationArea = All;
                    Caption = 'Borrow Date';
                    ToolTip = 'Date';
                }




            }
            part(Lines; BookBorrowLines)
            {
                ApplicationArea = All;
                SubPageLink = "Order No." = field("No.");
            }
        }
    }

}