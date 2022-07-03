table 50203 BookLines
{
    DataClassification = CustomerContent;
    DrillDownPageId = BookBorrowLines;

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(4; "Name"; Text[100])
        {
            Caption = 'Nazev';
            DataClassification = CustomerContent;
            TableRelation = Book.Name;

        }
        field(5; ISBN; Text[150])
        {
            //link na name
            FieldClass = FlowField;
            CalcFormula = lookup(Book.ISBN where(Name = field(Name)));

        }
        field(6; "No. Pages"; Integer)
        {
            //link na name
            FieldClass = FlowField;
            CalcFormula = lookup(Book."No. Pages" where(Name = field(Name)));
        }

    }

    keys
    {
        key(PK; "Name", "Order No.", "No.")
        {
            Clustered = true;
        }
    }

}