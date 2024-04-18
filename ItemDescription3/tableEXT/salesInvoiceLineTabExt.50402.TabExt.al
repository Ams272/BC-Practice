tableextension 50402 appsalesInvoiceLineTabExt extends "Sales Invoice Line"
{
    fields
    {
        field(50400; "appDescription 3"; Text[100])
        {
            DataClassification = CustomerContent;
            caption = 'Description 3';
            TableRelation = IF (Type = CONST(Item)) Item."appDescription 3" WHERE(Blocked = CONST(false),
                                                    "Sales Blocked" = CONST(false));
        }
    }
}