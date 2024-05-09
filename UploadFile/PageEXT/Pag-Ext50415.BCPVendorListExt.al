pageextension 50415 "BCP VendorListExt" extends "Vendor List"
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
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Import;

                trigger OnAction()
                var
                    BCPPictureCodeunit: Codeunit "BCP UploadFile";
                begin
                    //Message('Worked');
                    BCPPictureCodeunit.UploadFile(Database::Vendor, Rec."No.");

                end;
            }
        }
    }


}