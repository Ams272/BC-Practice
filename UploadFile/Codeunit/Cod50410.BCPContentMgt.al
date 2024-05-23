codeunit 50410 "BCP Content Mgt"
{

    procedure UploadFile(TableID: Integer; RecordNo: Code[20])

    var
        uploadTable: Record "BCP Content";
        FileInStream: InStream;
        fileName: text;
        DialogTitleMsg: Label 'Please select a File...';

    begin
        if not UploadIntoStream(DialogTitleMsg, '', 'All Files (*.*)|*.*', fileName, FileInStream) then
            exit;

        uploadTable.Init();
        uploadTable."Table ID" := TableID;
        uploadTable."No." := RecordNo;
        uploadTable."File".ImportStream(FileInStream, fileName);
        uploadtable."File Name" := fileName;
        uploadTable.Insert(true);
        //Message('media uploaded : media id: %1', uploadTable."File".MediaId);


    end;

    procedure DownloadFile(recid: integer)
    var
        tenantMedia: Record "Tenant Media";
        uploadTable: Record "BCP Content";
        ResponseStream: InStream;
        Filename: text;
    begin
        if not uploadTable.get(recid) then
            exit;
        if not tenantMedia.Get(uploadTable."File".MediaId) then
            exit;
        tenantMedia.CalcFields(Content);
        Filename := uploadtable."File Name";
        if Filename = '' then
            exit;
        if not tenantMedia.Content.HasValue then
            exit;
        tenantMedia.Content.CreateInStream(ResponseStream);
        DownloadFromStream(ResponseStream, '', '', '', Filename);
    end;


}