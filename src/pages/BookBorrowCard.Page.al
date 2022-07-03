page 50204 "BookBorrowCard"
{
    Caption = 'Book Borrow Card';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Borrow;
    //page id 42 vzor
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
                    ToolTip = 'Cislo Vypujcky';
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Reader Name';
                    ToolTip = 'Jmeno Ctenare';
                }
                field(BorrowDate; Rec.BorrowDate)
                {
                    ApplicationArea = All;
                    Caption = 'Borrow Date';
                    ToolTip = 'Datum vypujceni';
                }




            }
            //tabulka pro vyber knih
            part(Lines; BookBorrowLines)
            {
                ApplicationArea = All;
                SubPageLink = "Order No." = field("No.");
                UpdatePropagation = Both;
            }
        }
    }
    actions
    {

        area(Reporting)
        {
            //prechod na query list
            action(BorrowCard)
            {
                ToolTip = 'Vypujcka';
                ApplicationArea = All;
                Caption = 'All Borrow Cards';
                RunObject = page AllReadersBorrows;
                Promoted = true;
                PromotedIsBig = true;
            }
        }
    }

}