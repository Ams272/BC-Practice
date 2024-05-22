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
        //clear(uploadtable."BCP File");
        uploadTable.Insert(true);
        uploadTable."BCP Table ID" := TableID;
        uploadTable."BCP No." := RecordNo;
        uploadTable."BCP File".ImportStream(FileInStream, fileName);
        uploadtable."BCP File Name" := fileName;
        uploadTable.Insert(true);
        uploadTable.Modify(true);
        //Message('media uploaded : media id: %1', uploadTable."BCP File".MediaId);


    end;

    procedure DownloadFile(tableId: integer; recordNo: code[20]; recid: integer)
    var
        tenantMedia: Record "Tenant Media";
        uploadTable: Record "BCP Content";
        ResponseStream: InStream;
        Filename: text;
    begin
        if not uploadTable.get(recordNo, tableId, recid) then
            exit;
        if not tenantMedia.Get(uploadTable."BCP File".MediaId) then
            exit;
        tenantMedia.CalcFields(Content);
        Filename := uploadtable."BCP File Name";
        if Filename = '' then
            exit;
        if not tenantMedia.Content.HasValue then
            exit;
        tenantMedia.Content.CreateInStream(ResponseStream);
        DownloadFromStream(ResponseStream, '', '', '', Filename);
    end;


}