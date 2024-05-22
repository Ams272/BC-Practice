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

                field("BCP File Name"; Rec."BCP File Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Filename';
                    trigger OnDrillDown()
                    var
                        BCPContentMgt: Codeunit "BCP Content Mgt";
                    begin
                        BCPContentMgt.DownloadFile(rec."BCP Table ID", rec."BCP No.", rec."BCP ID");
                    end;
                }

            }
        }
    }

}