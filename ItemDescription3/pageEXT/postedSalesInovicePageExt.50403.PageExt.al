pageextension 50403 apppostedSalesOrderLinePageExt extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("Description 2")
        {
            field("appDescription 3"; Rec."appDescription 3")
            {
                ApplicationArea = All;
                ToolTip = 'Further item description';
                caption = 'Description 3';
            }
        }
    }

}

pageextension 50404 apppostedSalesInvLinePageExt extends "Posted Sales Invoice Lines"
{
    layout
    {
        addafter("Description 2")
        {
            field("appDescription 3"; Rec."appDescription 3")
            {
                ApplicationArea = All;
                ToolTip = 'Further item description';
                caption = 'Description 3';
            }
        }
    }

}