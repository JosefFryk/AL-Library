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
                // field("RowNo."; Rec."RowNo.")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Cislo radku';
                // }
                field(ReaderId; Rec.ReaderId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Reader ID';
                }


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
                field(BorrowDate; Rec.BorrowDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Borrow date';
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
            Rec."RowNo." := Rec."RowNo." + 1;
            Rec.ReaderId := Join.ReaderId;
            Rec.ReaderName := Join.ReaderName;
            Rec.BookName := Join.BookName;
            Rec.BorrowID := Join.BorrowID;
            Rec.BorrowDate := Join.BorrowDate;
            Rec.Insert()

        end;
    end;







}

