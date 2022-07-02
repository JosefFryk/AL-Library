query 50200 Join
{
    QueryType = Normal;


    elements
    {
        dataitem(Reader; Reader)


        {

            column(ReaderName; Name)
            {

            }
            dataitem(BookTable; Borrow)
            {
                DataItemLink = "Name" = Reader."Name";
                SqlJoinType = LeftOuterJoin;
                column(BorrowDate; BorrowDate)
                {

                }
                column("BorrowID"; "No.")
                {

                }

                dataitem(BorrowedBooks; BookLines)
                {
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