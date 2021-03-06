query 50200 Join
{
    QueryType = Normal;


    elements
    {
        dataitem(Reader; Reader)


        {
            column(ReaderId; "No.")
            {

            }
            column(ReaderName; Name)
            {

            }

            dataitem(BookTable; Borrow)
            {
                //datalink podle jmena reader
                DataItemLink = "Name" = Reader.Name;
                column(BorrowDate; BorrowDate)
                {

                }
                column("BorrowID"; "No.")
                {

                }

                dataitem(BorrowedBooks; BookLines)
                {
                    //datalink podle cisla vypujcky
                    DataItemLink = "Order No." = BookTable."No.";
                    SqlJoinType = LeftOuterJoin;
                    column(BookName; Name)
                    {

                    }
                    column(ISBN; ISBN)
                    {

                    }
                    column(NoPages; "No. Pages")
                    {

                    }
                }
            }
        }
    }
}