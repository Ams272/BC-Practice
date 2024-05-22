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
                Image = Import;

                trigger OnAction()
                var
                    BCPContentMgt: Codeunit "BCP Content Mgt";
                begin
                    //Message('Worked');
                    BCPContentMgt.UploadFile(Database::Item, Rec."No.");

                end;
            }

        }
        addfirst(Category_Process)
        {
            actionref("BCP UploadFile_Promoted"; "BCP UploadFile")
            {
            }
        }
    }


}