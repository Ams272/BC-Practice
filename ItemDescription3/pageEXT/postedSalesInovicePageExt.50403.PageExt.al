pageextension 50403 postedSalesOrderSubformPageExt extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("Description 2")
        {
            field("Description 3"; Rec."Description 3")
            {
                ApplicationArea = All;
                ToolTip = 'Further item description';
            }
        }
    }

}

pageextension 50404 postedSalesInvoiceLinePageExt extends "Posted Sales Invoice Lines"
{
    layout
    {
        addafter("Description 2")
        {
            field("Description 3"; Rec."Description 3")
            {
                ApplicationArea = All;
                ToolTip = 'Further item description';
            }
        }
    }

}