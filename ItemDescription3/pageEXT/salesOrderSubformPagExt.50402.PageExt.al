pageextension 50402 SalesOrderSubformPageExt extends "Sales Order Subform"
{
    layout
    {
        addafter("Description 2")
        {
            field("Description 3"; Rec."Description 3")
            {
                ToolTip = 'for further item description';
                ApplicationArea = All;
            }
        }
    }

}