unit _KdbDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TKdbDataModule = class(TDataModule)
    FDConnection: TFDConnection;
    FDQuery: TFDQuery;
  private
    { Private declarations }
    function  GetInsertWebLinkSQL(const URL, Title, Host, Author, Domain, Tags, Estimate, Rating: string): string;
    function  GetUpdateWebLinkSQL(const URL, Title, Host, Author, Domain, Tags, Estimate, Rating: string): string;
    function  IsDomainNullOrExisting(const Domain: string): boolean;
    function  IsWebLinkExisting(const URL:string): boolean;
    function  StrToSQLInteger(const FieldValue: string): string;
    function  StrToSQLString(const FieldValue: string): string;
  public
    { Public declarations }
    procedure InsertWebLink(const URL, Title, Host, Author, Domain, Tags, Estimate, Rating: string);
    procedure UpdateWebLink(const URL, Title, Host, Author, Domain, Tags, Estimate, Rating: string);
  end;

var
  KdbDataModule: TKdbDataModule;

implementation

uses
  System.StrUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


const CrLf = #13#10;


//

function TKdbDataModule.GetInsertWebLinkSQL(const URL, Title, Host, Author, Domain, Tags, Estimate, Rating: string): string;
begin
  Result :=
    'INSERT INTO ' + CrLf +
        'WebLink (URL, Title, Host, Author, Tags, DomainID, Estimate, Rating) ' + CrLf +
    'VALUES (' +
        StrToSQLString(URL) + ', ' +
        StrToSQLString(Title) + ', ' +
        StrToSQLString(Host) + ', ' +
        StrToSQLString(Author) + ', ' +
        '(SELECT IDDomain FROM Domain WHERE Name = ' + StrToSQLString(Domain) + '), ' +
        StrToSQLString(Tags) + ', ' +
        StrToSQLInteger(Estimate) + ', ' +
        StrToSQLInteger(Rating) + ')';
end;


//

function TKdbDataModule.GetUpdateWebLinkSQL(const URL, Title, Host, Author, Domain, Tags, Estimate, Rating: string): string;
begin
  Result :=
    '';
end;


//

procedure TKdbDataModule.InsertWebLink(const URL, Title, Host, Author, Domain, Tags, Estimate, Rating: string);
begin
  if IsWebLinkExisting(URL) then
    raise Exception.Create('Web link is already present in the database!');
  if IsDomainNullOrExisting(Domain) then
    raise Exception.Create('Domain is NOT present in the database!');
  with FDQuery do
    begin
      SQL.Clear;
      SQL.Add(GetInsertWebLinkSQL(URL, Title, Host, Author, Domain, Tags, Estimate, Rating));
      if (ExecSQL(false) <> 1) then
        raise Exception.Create('Unssuccesful insert of the new web link!');
    end;
end;


//

function TKdbDataModule.IsDomainNullOrExisting(const Domain: string): boolean;
begin
  if (Domain = '') then
    Result := true
  else
    with FDQuery do
      begin
        SQL.Clear;
        SQL.Add('SELECT Count(*) AS ''RecordCount'' FROM Domain WHERE URL = ' + Domain);
        Prepare;
        Open;
        Result := (FieldByName('RecordCount').AsInteger > 0);
        Close;
      end;
end;


function TKdbDataModule.IsWebLinkExisting(const URL: string): boolean;
begin
  with FDQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT Count(*) AS ''RecordCount'' FROM WebLink WHERE URL = ' + URL);
      Prepare;
      Open;
      Result := (FieldByName('RecordCount').AsInteger > 0);
      Close;
    end;
end;


//

function TKdbDataModule.StrToSQLInteger(const FieldValue: string): string;
begin
  if (Trim(FieldValue) = '') then
    Result := 'Null'
  else
    Result := IntToStr(StrToInt(FieldValue));
end;


//

function TKdbDataModule.StrToSQLString(const FieldValue: string): string;
begin
  if (Trim(FieldValue) = '') then
    Result := 'Null'
  else
    Result := '''' + StringReplace(Trim(FieldValue), '''', '''''', [rfReplaceAll]) + '''';
end;


//

procedure TKdbDataModule.UpdateWebLink(const URL, Title, Host, Author, Domain, Tags, Estimate, Rating: string);
begin

end;


end.
