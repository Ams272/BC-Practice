tableextension 50401 "BCP salesLineTabExt" extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            begin
                item.SetRange("No.", "No.");
                if item.FindFirst() then
                    "BCP Description 3" := item."BCP Description 3"
            end;
        }

        field(50400; "BCP Description 3"; Text[100])
        {
            DataClassification = CustomerContent;
            caption = 'Description 3';
        }
    }

    var
        item: Record Item;
}