table 50201 Book
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[30])
        {
            Caption = 'Cislo';
            DataClassification = CustomerContent;

        }
        field(2; "ISBN"; Text[150])
        {
            Caption = 'ISBN';
            DataClassification = CustomerContent;
        }
        field(3; "Name"; Text[100])
        {
            Caption = 'Nazev';
            DataClassification = CustomerContent;

        }
        field(4; "No. Pages"; Integer)
        {
            Caption = 'Pocet Stranek';
            DataClassification = CustomerContent;
        }



    }

    keys
    {
        key(PK; Name, ISBN, "No. Pages")
        {
            Clustered = true;
        }
    }

}