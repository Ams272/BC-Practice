tableextension 50402 "BCP salesInvoiceLineTabExt" extends "Sales Invoice Line"
{
    fields
    {

        field(50400; "BCP Description 3"; Text[100])
        {
            DataClassification = CustomerContent;
            caption = 'Description 3';


        }
    }



}