pageextension 50411 "BCP ItemListExt" extends "Item List"
{
    layout
    {
        addfirst(factboxes)
        {
            part(BCPPicture; "BCP Upload")
            {
                ApplicationArea = All;
                Caption = 'Upload File Factbox';
                SubPageLink = "BCP Table ID" = const(27),
                                "BCP No." = field("No.");
            }
        }
    }

    actions
    {
        addfirst(processing)
        {
            action("BCP UploadFile")
            {
                ApplicationArea = All;
                Caption = 'Upload File';
                ToolTip = 'Upload File to BC';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Import;

                trigger OnAction()
                var
                    BCPPictureCodeunit: Codeunit "BCP UploadFile";
                begin
                    //Message('Worked');
                    BCPPictureCodeunit.UploadFile(Database::Item, Rec."No.");

                end;
            }
        }
    }

}