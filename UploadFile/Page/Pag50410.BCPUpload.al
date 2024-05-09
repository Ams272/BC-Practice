page 50410 "BCP Upload"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "BCP Upload";

    layout
    {
        area(Content)
        {
            repeater("File Upload")
            {

                field("BCP File Name"; Rec."BCP File Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Filename';
                    trigger OnDrillDown()
                    var
                        downloadFunc: Codeunit "BCP UploadFile";
                    begin
                        CurrPage.Update();
                        downloadFunc.DownloadFile(rec."BCP Table ID", rec."BCP No.", rec."BCP ID");
                    end;
                }

            }
        }
    }

}