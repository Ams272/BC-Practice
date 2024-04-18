pageextension 50400 appitemCardPagExt extends "Item Card"
{
    layout
    {
        addafter("No.")
        {
            field("appDescription 3"; Rec."appDescription 3")
            {
                ApplicationArea = All;
                Caption = 'Description 3';
                ToolTip = 'Further description';
            }
        }
    }

}