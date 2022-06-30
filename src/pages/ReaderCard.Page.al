page 50200 ReaderCard
{
    Caption = 'Reader Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Reader;


    layout
    {
        area(Content)
        {
            group(Main)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Name of Reader';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'ID of Reader';
                }
            }
            group(ReaderAddress)
            {
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Address of Reader';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'City of Reader';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Phone number';
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Mobile phone number';
                }
                field("E-mail"; Rec."E-mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'E-mail of Reader';
                }





            }
        }
    }
}