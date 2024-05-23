pageextension 50412 "BCP CustomerCardExt" extends "Customer Card"
{
    layout
    {
        addfirst(factboxes)
        {
            part(BCPPicture; "BCP Upload")
            {
                ApplicationArea = All;
                Caption = 'Upload File Factbox';
                SubPageLink = "Table ID" = const(18),
                                "No." = field("No.");
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
                Image = Import;

                trigger OnAction()
                var
                    BCPContentMgt: Codeunit "BCP Content Mgt";
                begin
                    //Message('Worked');
                    BCPContentMgt.UploadFile(Database::Customer, Rec."No.");

                end;
            }
        }
        addlast(Category_Process)
        {
            actionref("BCP UploadFile_Promoted"; "BCP UploadFile")
            {
            }
        }
    }

}