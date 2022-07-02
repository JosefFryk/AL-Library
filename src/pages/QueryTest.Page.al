page 50208 QueryTest
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = QueryTest;
    SourceTableTemporary = true;
    Editable = false;
    DeleteAllowed = false;
    InsertAllowed = false;


    layout
    {
        area(Content)
        {

            repeater(content1)
            {
                field(ReaderName; Rec.ReaderName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Reader name';

                }

                field(BookName; Rec.BookName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Reader name';

                }
                field(BorrowID; Rec.BorrowID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Borrow ID';
                }

            }
        }
    }
    trigger OnOpenPage()
    var
        Join: Query Join;
    begin
        Join.Open();
        while Join.Read() do begin
            Rec.Init();
            Rec.ReaderName := Join.ReaderName;
            Rec.BookName := Join.BookName;
            Rec.BorrowID := Join.BorrowID;
            Rec.Insert()

        end;
    end;







}

