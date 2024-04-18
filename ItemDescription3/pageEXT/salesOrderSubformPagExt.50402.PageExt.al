pageextension 50402 appSalesOrderSubformPageExt extends "Sales Order Subform"
{
    layout
    {
        addafter("Description 2")
        {
            field("appDescription 3"; Rec."appDescription 3")
            {
                ToolTip = 'for further item description';
                ApplicationArea = All;
                caption = 'Description 3';
            }
        }
    }

}