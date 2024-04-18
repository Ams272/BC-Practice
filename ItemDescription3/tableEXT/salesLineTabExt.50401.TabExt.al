tableextension 50401 appsalesLineTabExt extends "Sales Line"
{
    fields
    {
        field(50400; "appDescription 3"; Text[100])
        {
            DataClassification = CustomerContent;
            TableRelation = Item."appDescription 3";
            caption = 'Description 3';
        }
    }
}