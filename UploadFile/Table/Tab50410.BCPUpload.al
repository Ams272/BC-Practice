table 50410 "BCP Upload"
{
    DataClassification = CustomerContent;
    InherentPermissions = RIMDX;

    fields
    {
        field(1; "BCP ID"; Integer)
        {
            DataClassification = CustomerContent;
            AutoIncrement = true;
            Editable = false;
            Caption = 'ID';
        }
        field(10; "BCP Table ID"; Integer)
        {
            DataClassification = CustomerContent;
            NotBlank = true;
            Caption = 'Table ID';
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Table));

        }
        field(20; "BCP No."; Code[20])
        {
            DataClassification = customercontent;
            Caption = 'No.';
            NotBlank = true;


        }
        field(30; "BCP File"; Media)
        {
            DataClassification = CustomerContent;
            Caption = 'File';
        }
        field(40; "BCP File Name"; text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'File Name';
        }
        field(50; "BCP File Extension"; text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'File Extension';
        }
    }

    keys
    {
        key(PK; "BCP No.", "BCP Table ID", "BCP ID")
        {
            Clustered = true;
        }
    }

}