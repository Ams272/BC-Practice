pageextension 50401 itemListPagExt extends "Item List"
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