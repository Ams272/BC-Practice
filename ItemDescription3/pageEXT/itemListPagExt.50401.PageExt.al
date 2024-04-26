pageextension 50401 "BCP itemListPagExt" extends "Item List"
{
    layout
    {
        addafter("Description 2")
        {
            field("BCP Description 3"; Rec."BCP Description 3")
            {
                ApplicationArea = All;
                Caption = 'Description 3';
                ToolTip = 'Further description';
            }
        }
    }

}