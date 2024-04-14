pageextension 50400 itemCardPagExt extends "Item Card"
{
    layout
    {
        addafter("No.")
        {
            field("Description 3"; Rec."Description 3")
            {
                ApplicationArea = All;
                ToolTip = 'Further description';
            }
        }
    }

}