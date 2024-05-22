pageextension 50414 "BCP VendorCardExt" extends "Vendor Card"
{
    layout
    {
        addfirst(factboxes)
        {
            part(BCPPicture; "BCP Upload")
            {
                ApplicationArea = All;
                Caption = 'Upload File Factbox';
                SubPageLink = "BCP Table ID" = const(23),
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
                Image = Import;

                trigger OnAction()
                var
                    BCPContentMgt: Codeunit "BCP Content Mgt";
                begin
                    //Message('Worked');
                    BCPContentMgt.UploadFile(Database::Vendor, Rec."No.");

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