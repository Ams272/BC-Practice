pageextension 50400 "BCP itemCardPagExt" extends "Item Card"
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