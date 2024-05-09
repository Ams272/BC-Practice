pageextension 50410 "BCP ItemCardExt" extends "Item Card"
{
    layout
    {
        addfirst(factboxes)
        {
            part(BCPUpload; "BCP Upload")
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
        addlast(processing)
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