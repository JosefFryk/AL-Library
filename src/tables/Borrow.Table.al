table 50202 Borrow
{
    DataClassification = CustomerContent;
    Caption = 'Borrow Table';


    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            //auto. pridani No.
            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    SalesSetup.Get();
                    NoSeriesManagement.TestManual(SalesSetup."Borrow Nos.");
                    "Document No." := '';

                end;
            end;

        }

        field(2; Name; Text[50])
        {
            Caption = 'Reader Name';
            DataClassification = CustomerContent;
            TableRelation = Reader.Name;

        }
        field(3; BorrowDate; Date)
        {
            Caption = 'Borrow Date';
            DataClassification = CustomerContent;
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "No. Series";
            Editable = false;

        }


    }

    keys
    {
        key(PK; "No.", Name)
        {
            Clustered = true;
        }
    }

    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Borrow Nos.");
            NoSeriesManagement.InitSeries(SalesSetup."Borrow Nos.", xRec."Document No.", 0D, "No.", "Document No.");

        end;
    end;

}