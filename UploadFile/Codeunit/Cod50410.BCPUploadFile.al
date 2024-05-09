codeunit 50410 "BCP UploadFile"
{

    procedure UploadFile(TableID: Integer; RecordNo: Code[20])

    var
        uploadTable: Record "BCP Upload";
        FileInStream: InStream;
        tempfilename: text;
        DialogTitleMsg: Label 'Please select a File...';

    begin
        if UploadIntoStream(DialogTitleMsg, '', 'All Files (*.*)|*.*', tempfilename, FileInStream) then begin

            uploadTable.Init();
            //clear(uploadtable."BCP File");
            uploadTable.Insert(true);
            uploadTable."BCP Table ID" := TableID;
            uploadTable."BCP No." := RecordNo;
            uploadTable."BCP File".ImportStream(FileInStream, tempfilename);
            uploadtable."BCP File Name" := tempfilename;
            uploadTable.Insert(true);
            uploadTable.Modify(true);
            //Message('media uploaded : media id: %1', uploadTable."BCP File".MediaId);

        end;
    end;

    procedure DownloadFile(tableId: integer; recordNo: code[20]; recid: integer)
    var
        tenantMedia: Record "Tenant Media";
        uploadTable: Record "BCP Upload";
        ResponseStream: InStream;
        Filename: text;
    begin
        if uploadTable.get(recordNo, tableId, recid) then begin
            if tenantMedia.Get(uploadTable."BCP File".MediaId) then begin
                tenantMedia.CalcFields(Content);
                Filename := uploadtable."BCP File Name";
                if Filename = '' then
                    exit;
                if tenantMedia.Content.HasValue then begin
                    tenantMedia.Content.CreateInStream(ResponseStream);
                    DownloadFromStream(ResponseStream, '', '', '', Filename);
                end
                else
                    error('No content');
            end
            else
                error('couldn''t find mediaid');
        end
        else
            Error('couldnt get record unfortunately: %1 %2', tableid, recordno);
    end;


}