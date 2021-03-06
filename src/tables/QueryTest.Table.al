table 50207 QueryTest
{
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; BorrowID; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Borrow ID';
        }

        field(2; ReaderName; Text[150])
        {
            Caption = 'Reader Name';
            DataClassification = ToBeClassified;
        }
        field(3; "BookName"; Text[200])
        {
            Caption = 'Book Name';
            DataClassification = ToBeClassified;
        }
        field(4; "RowNo."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RowNo.';
        }
        field(5; "BorrowDate"; Date)
        {
            Caption = 'Borrow Date';
            DataClassification = ToBeClassified;
        }
        field(6; ReaderId; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Reader ID';
        }




    }

    keys
    {
        key(PK; "ReaderName", "RowNo.")
        {
            Clustered = true;
        }
    }

}