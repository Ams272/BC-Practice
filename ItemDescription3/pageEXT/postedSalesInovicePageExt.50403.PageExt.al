pageextension 50403 "BCP postedSalesOrdLinePageExt" extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("Description 2")
        {
            field("BCP Description 3"; Rec."BCP Description 3")
            {
                ApplicationArea = All;
                ToolTip = 'Further item description';
                caption = 'Description 3';

            }
        }
    }

}