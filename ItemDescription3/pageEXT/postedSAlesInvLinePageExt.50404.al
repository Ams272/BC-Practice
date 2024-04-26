pageextension 50404 "BCP postedSalesInvLinePageExt" extends "Posted Sales Invoice Lines"
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