page 50201 ReaderList
{
    Caption = 'Reader List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Reader;
    CardPageId = ReaderCard;

    layout
    {
        area(Content)
        {
            repeater(Readers)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'ID of Reader';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Name of Reader';
                }
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
                field("E-mail"; Rec."E-mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'Email of Reader';
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Mobile number';
                }


            }
        }
    }
}