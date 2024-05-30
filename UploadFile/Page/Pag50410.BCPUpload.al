page 50410 "BCP Upload"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "BCP Content";


    layout
    {
        area(Content)
        {
            repeater("File Upload")
            {

                field("File Name"; Rec."File Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Filename';
                    trigger OnDrillDown()
                    var
                        BCPContentMgt: Codeunit "BCP Content Mgt";
                    begin
                        BCPContentMgt.DownloadFile(rec."ID");
                    end;
                }

            }
        }
    }

}