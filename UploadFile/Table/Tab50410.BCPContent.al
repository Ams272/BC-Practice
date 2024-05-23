table 50410 "BCP Content"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true;
            Editable = false;
            Caption = 'ID';
        }
        field(10; "Table ID"; Integer)
        {
            DataClassification = CustomerContent;
            NotBlank = true;
            Caption = 'Table ID';
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Table));

        }
        field(20; "No."; Code[20])
        {
            DataClassification = customercontent;
            Caption = 'No.';
            NotBlank = true;


        }
        field(30; "File"; Media)
        {
            DataClassification = CustomerContent;
            Caption = 'File';
        }
        field(40; "File Name"; text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'File Name';
        }
        field(50; "File Extension"; text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'File Extension';
        }
    }

    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }

}