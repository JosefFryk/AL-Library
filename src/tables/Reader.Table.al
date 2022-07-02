table 50200 Reader
{
    DataClassification = CustomerContent;
    Caption = 'Reader';
    DrillDownPageId = ReaderList;
    LookupPageId = ReaderList;



    fields
    {

        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            //auto. pridani No.
            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    SalesSetup.Get();
                    NoSeriesManagement.TestManual(SalesSetup."Reader Nos.");
                    "No. Series" := '';

                end;
            end;

        }
        field(2; "Name"; Text[200])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Address"; Text[200])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(4; "City"; Text[30])
        {
            Caption = 'City';
            DataClassification = CustomerContent;
        }
        field(5; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
        }

        field(6; "E-mail"; Text[80])
        {
            Caption = 'E-mail';
            DataClassification = CustomerContent;
            //page id 5050
            trigger OnValidate()
            var
                MailManagement: Codeunit "Mail Management";
            begin

                MailManagement.CheckValidEmailAddress("E-Mail")
            end;
        }

        field(7; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";

        }
        field(8; "Mobile Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
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
            SalesSetup.TestField("Reader Nos.");
            NoSeriesManagement.InitSeries(SalesSetup."Reader Nos.", xRec."No. Series", 0D, "No.", "No. Series");

        end;
    end;
}