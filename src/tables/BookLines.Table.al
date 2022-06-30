table 50203 BookLines
{
    DataClassification = CustomerContent;

    fields
    {

        field(1; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Name"; Text[100])
        {
            Caption = 'Nazev';
            DataClassification = CustomerContent;
            TableRelation = Book.Name;

        }
        field(4; "Order No."; Code[30])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            TableRelation = Borrow;
        }

    }

    keys
    {
        key(PK; "Name", "Line No.")
        {
            Clustered = true;
        }
    }

}