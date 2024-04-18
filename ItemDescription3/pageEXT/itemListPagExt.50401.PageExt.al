pageextension 50401 appitemListPagExt extends "Item List"
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