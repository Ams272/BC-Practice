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
                SubPageLink = "Table ID" = const(27),
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
                    BCPContentMgt.UploadFile(Database::Item, Rec."No.");

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