tableextension 50401 salesLineTabExt extends "Sales Line"
{
    fields
    {
        field(50400; "Description 3"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item."Description 3";
        }
    }
}