pageextension 50402 "BCP SalesOrderSubformPageExt" extends "Sales Order Subform"
{
    layout
    {
        addafter("Description 2")
        {
            field("BCP Description 3"; Rec."BCP Description 3")
            {
                ToolTip = 'for further item description';
                ApplicationArea = All;
                caption = 'Description 3';
            }
        }
    }

}