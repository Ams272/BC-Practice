tableextension 50402 salesInvoiceLineTabExt extends "Sales Invoice Line"
{
    fields
    {
        field(50400; "Description 3"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = IF (Type = CONST(Item)) Item."Description 3" WHERE(Blocked = CONST(false),
                                                    "Sales Blocked" = CONST(false));
        }
    }
}