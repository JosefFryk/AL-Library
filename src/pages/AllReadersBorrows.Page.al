page 50208 AllReadersBorrows
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
                    ToolTip = 'ID ctenare';
                }


                field(ReaderName; Rec.ReaderName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Jmeno ctenare';

                }

                field(BookName; Rec.BookName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Jmeno knihy';

                }
                field(BorrowID; Rec.BorrowID)
                {
                    ApplicationArea = All;
                    ToolTip = 'ID vypujcky';
                }
                field(BorrowDate; Rec.BorrowDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Datum vypujcky';
                }


            }
        }
    }
    //prenos dat z query.al 
    trigger OnOpenPage()
    var
        Join: Query Join;
    begin
        Join.Open();
        while Join.Read() do begin
            Rec.Init();
            //pridani +1 k cislu radku, kvuli duplicite jmen readerName
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

