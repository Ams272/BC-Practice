tableextension 50401 "BCP salesLineTabExt" extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                item: Record Item;
            begin
                if Type = Type::Item then begin
                    item.Get("No.");
                    "BCP Description 3" := item."BCP Description 3";
                end;

            end;
        }

        field(50400; "BCP Description 3"; Text[100])
        {
            DataClassification = CustomerContent;
            caption = 'Description 3';
        }
    }

}