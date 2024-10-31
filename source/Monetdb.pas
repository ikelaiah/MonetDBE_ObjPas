unit Monetdb;

{$R-,T-,H+,X+}
{$WARN SYMBOL_DEPRECATED OFF}

interface

uses
  system.IOUtils , System.Classes, monetdbe, vcl.Dialogs,  Data.DB, Data.SqlExpr,  Data.FMTBcd ,  System.SysUtils,
  Data.DBCommon,
  Data.DBCommonTypes,
  Data.DBXCommon,
  vcl.ComCtrls ,     Windows,
  System.Generics.Collections, designintf;

type

   //DONE :monetdbe_version
   //DONE :monetdbe_open
   //DONE :monetdbe_close


   //TODO :monetdbe_error

   //TODO :monetdbe_get_autocommit
   //TODO :monetdbe_set_autocommit
   //TODO :monetdbe_in_transaction
   //TODO :monetdbe_query
   //TODO :monetdbe_cleanup_result
   //TODO :monetdbe_prepare
   //TODO :monetdbe_cleanup_statement
   //TODO :monetdbe_append
   //TODO :monetdbe_null
   //TODO :monetdbe_get_columns
   //TODO :monetdbe_dump_database
   //TODO :monetdbe_dump_table
   //TODO :monetdbe_mapi_dump_database
   //TODO :monetdbe_mapi_dump_table

   //TODO :monetdbe_result_fetch

   //TODO :monetdbe_bind
   //TODO :monetdbe_execute

   //TODO :monetdbe_get_mapi_port

   //TODO :monetdbe_mapi_error
   //TODO :monetdbe_mapi_query
   //TODO :monetdbe_mapi_explain
   //TODO :monetdbe_mapi_close_handle
   //TODO :monetdbe_mapi_fetch_row
   //TODO :monetdbe_mapi_fetch_field
   //TODO :monetdbe_mapi_get_type
   //TODO :monetdbe_mapi_seek_row
   //TODO :monetdbe_mapi_get_row_count
   //TODO :monetdbe_mapi_rows_affected
   //TODO :monetdbe_mapi_get_field_count
   //TODO :monetdbe_mapi_result_error
   //TODO :monetdbe_mapi_get_len
   //TODO :monetdbe_mapi_explain_query
   //TODO :monetdbe_mapi_explain_result


  TMonetOption = (scoExplicitConnect, scoApplyUpdatesChecksRowsAffected);
  TMonetOptions = Set of TMonetOption;

  TMonetdbConnection = class(TComponent)
  private
    { Private declarations }
       LibraryHandle : THandle;
      DatabaseHandle : monetdbe_database;
      FLibraryLoaded : boolean;

    flibrarylocation : TFileName;
           f_db_path : string;
            fMonetOptions : TMonetOptions;
          fconnected : boolean;
   fmonetdbe_options : tmonetdbe_options;
   fremote : monetdbe_remote ;


    monetdbe_version : function: PUTF8Char; stdcall;
    monetdbe_open    : function(db: Pmonetdbe_database; url: PUTF8Char; opts: Pmonetdbe_options): Integer; stdcall;
    monetdbe_close   : function(db: monetdbe_database): Integer; stdcall;

    monetdbe_error          : function (db: monetdbe_database): PUTF8Char; stdcall;
    monetdbe_get_autocommit : function (dbhdl: monetdbe_database; result: PInteger): PUTF8Char; stdcall;
    monetdbe_set_autocommit : function(dbhdl: monetdbe_database; value: Integer): PUTF8Char; stdcall;

    monetdbe_in_transaction:function (dbhdl: monetdbe_database): Integer; stdcall;
    monetdbe_query:function (dbhdl: monetdbe_database; query: PUTF8Char; result: PPmonetdbe_result; affected_rows: Pmonetdbe_cnt): PUTF8Char; stdcall;
    monetdbe_result_fetch:function (mres: Pmonetdbe_result; res: PPmonetdbe_column; column_index: NativeUInt): PUTF8Char; stdcall;
    monetdbe_cleanup_result:function (dbhdl: monetdbe_database; result: Pmonetdbe_result): PUTF8Char; stdcall;
    monetdbe_prepare:function (dbhdl: monetdbe_database; query: PUTF8Char; stmt: PPmonetdbe_statement; result: PPmonetdbe_result): PUTF8Char; stdcall;

    monetdbe_bind :   function (stmt: Pmonetdbe_statement; data: Pointer; parameter_nr: NativeUInt): PUTF8Char; stdcall;
    monetdbe_execute:function (stmt: Pmonetdbe_statement; result: PPmonetdbe_result; affected_rows: Pmonetdbe_cnt): PUTF8Char; stdcall;
    monetdbe_cleanup_statement:function (dbhdl: monetdbe_database; stmt: Pmonetdbe_statement): PUTF8Char; stdcall;
    monetdbe_append:function (dbhdl: monetdbe_database; const schema: PUTF8Char; const table: PUTF8Char; input: PPmonetdbe_column; column_count: NativeUInt): PUTF8Char; stdcall;
    monetdbe_null:function (dbhdl: monetdbe_database; t: monetdbe_types): Pointer; stdcall;
    monetdbe_get_columns:function (dbhdl: monetdbe_database; const schema_name: PUTF8Char; const table_name: PUTF8Char; column_count: PNativeUInt; columns: PPmonetdbe_column): PUTF8Char; stdcall;

    monetdbe_dump_database:function (dbhdl: monetdbe_database; const backupfile: PUTF8Char): PUTF8Char; stdcall;
    monetdbe_dump_table:function (dbhdl: monetdbe_database; const schema_name: PUTF8Char; const table_name: PUTF8Char; const backupfile: PUTF8Char): PUTF8Char; stdcall;
    monetdbe_get_mapi_port:function : PUTF8Char; stdcall;
    monetdbe_mapi_dump_database:function (dbhdl: monetdbe_database; const filename: PUTF8Char): PUTF8Char; stdcall;
    monetdbe_mapi_dump_table:function (dbhdl: monetdbe_database; const sname: PUTF8Char; const tname: PUTF8Char; const filename: PUTF8Char): PUTF8Char; stdcall;
    monetdbe_mapi_error:function (mid: monetdbe_Mapi): monetdbe_MapiMsg; stdcall;

    monetdbe_mapi_query:function (mid: monetdbe_Mapi; const query: PUTF8Char): monetdbe_MapiHdl; stdcall;
    monetdbe_mapi_close_handle:function (hdl: monetdbe_MapiHdl): monetdbe_MapiMsg; stdcall;
    monetdbe_mapi_fetch_row:function (hdl: monetdbe_MapiHdl): Integer; stdcall;
    monetdbe_mapi_fetch_field:function (hdl: monetdbe_MapiHdl; fnr: Integer): PUTF8Char; stdcall;
    monetdbe_mapi_get_type:function (hdl: monetdbe_MapiHdl; fnr: Integer): PUTF8Char; stdcall;
    monetdbe_mapi_seek_row:function (hdl: monetdbe_MapiHdl; rowne: Int64; whence: Integer): monetdbe_MapiMsg; stdcall;
    monetdbe_mapi_get_row_count:function (hdl: monetdbe_MapiHdl): Int64; stdcall;
    monetdbe_mapi_rows_affected:function (hdl: monetdbe_MapiHdl): Int64; stdcall;
    monetdbe_mapi_get_field_count:function (hdl: monetdbe_MapiHdl): Integer; stdcall;
    monetdbe_mapi_result_error:function(hdl: monetdbe_MapiHdl): PUTF8Char; stdcall;
    monetdbe_mapi_get_len:function(hdl: monetdbe_MapiHdl; fnr: Integer): Integer; stdcall;
    monetdbe_mapi_explain:procedure (mid: monetdbe_Mapi; fd: PInteger); stdcall;
    monetdbe_mapi_explain_query:procedure (hdl: monetdbe_MapiHdl; fd: PInteger); stdcall;
    monetdbe_mapi_explain_result:procedure (hdl: monetdbe_MapiHdl; fd: PInteger); stdcall;


    procedure FreeLib;
    procedure fsetconnect(value:boolean);
    procedure setLibraryLocation(value:tfilename);
    function fgetMonetVersion:string;
    function LoadLibrary: boolean;
  protected
    { Protected declarations }
  public

  published
    { Published declarations }
    property MonetOptions : TMonetOptions     read fMonetOptions     write fMonetOptions;
    property options      : TMonetdbe_options read fmonetdbe_options write fmonetdbe_options;
    property remote       : monetdbe_remote   read fremote           write fremote;

    property connected       : boolean        read fconnected       write fsetconnect ;
    property librarylocation : tFileName      read flibrarylocation write setlibrarylocation;
    property DB_path         : string         read f_db_path        write f_db_path;

    property Version         : string         read fgetMonetVersion;
  end;


  TMonetDBQuery = class(tcomponent)
    private
      FSQL :tstringlist;
      fMonetDBConnection:tmonetdbConnection;
      procedure SetSQL(value:tstringlist);
      function  GetSQL:tstringlist;
    public
      constructor Create(AOwner: TComponent);
      destructor destroy;
    published
      property Connection : TMonetDBConnection read fMonetDBConnection write fMonetDBConnection;
      property SQL        : TStringlist read GetSQL write setsql;
  end;

procedure Register;

implementation



procedure Register;
begin
  RegisterComponents('MonetDB', [TMonetDBConnection, TMonetDBQuery]);
end;

{ TMonetdb }

constructor TMonetDBQuery.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
 // FCommandType := ctQuery;
  FSQL := TStringList.Create;
//  FGetMetaData := False;
//  TStringList(SQL).OnChange := QueryChanged;
end;

destructor TMonetDBQuery.Destroy;
begin
  FSQL.Free;
  inherited Destroy;
end;

function TMonetDBQuery.GetSQL: tstringlist;
begin
  if assigned(FSQL)=false
    then FSQL:=tstringlist.create;
  result:=FSQL;
end;

procedure TMonetDBQuery.SetSQL(Value: TStringlist);
begin
  FSQL.Assign( value )   ;
end;

function TMonetdbConnection.fgetMonetVersion: string;
var
  ver : pansichar;
begin
  ver :=  self.monetdbe_version;
  result :=string( ver^ );
end;

procedure TMonetdbConnection.FreeLib;
begin
  if (self.LibraryHandle <> INVALID_HANDLE_VALUE) and (self.LibraryHandle <> 0) and self.FLibraryLoaded then
    freeLibrary(LibraryHandle);
    self.FLibraryLoaded := false;
end;

procedure TMonetdbConnection.fsetconnect(value: boolean);
var connectresult:integer;
begin
  if value=true
    then
      begin
        if self.FLibraryLoaded=false
          then
            begin
              self.LoadLibrary;
            end;
        if self.DB_path<>''
          then
            begin
              connectresult:=monetdbe_open( DatabaseHandle, @db_path, @fMonetOptions) ;
              if connectresult=0
                then
                  begin
                    fconnected := value;
                  end
                else
                  begin
                    //todo:   raise some exception here
                    fconnected:=false;
                  end;
            end;
      end
    else
      begin
        connectresult:= monetdbe_close(self.DatabaseHandle);
        self.FreeLib;
        //todo: if connectresult<>0 then raise some exception here.
      end;
end;

function TMonetdbConnection.LoadLibrary: boolean;
var
  newpath : String;
begin
  if self.FLibraryLoaded then
    self.FreeLib;

  FLibraryLoaded := False;
          Result := False;
         newpath := ExtractFilePath( flibrarylocation );
  {$IF declared(LoadLibraryEx)}
    If newpath <> ''
      Then LibraryHandle := LoadLibraryEx(PChar(ExpandFileName(flibraryLocation)), 0, LOAD_WITH_ALTERED_SEARCH_PATH)
      Else LibraryHandle := LoadLibraryEx(PChar(flibraryLocation), 0, 0);
  {$ELSE !LoadLibraryEx}
    LibraryHandle := LoadLibrary(PChar(flibaryLocation));
  {$IFEND !LoadLibraryEx}

  {$IF not declared(LoadLibraryEx)}
    // AB modif BEGIN
    finally
      {$IFDEF WINDOWS}
      if temp<>'' then
        SetCurrentDir(temp);
      {$ENDIF}
    end;
  {$IFEND !LoadLibraryEx}

  if (LibraryHandle <> INVALID_HANDLE_VALUE) and (libraryHandle <> 0) then  begin
    FLibraryLoaded := True;
    Result := True;
  end;


  if FLibraryLoaded
    then
      begin
        @monetdbe_version              := GetProcAddress(self.LibraryHandle, 'monetdbe_version');
        @monetdbe_open                 := GetProcAddress(self.LibraryHandle, 'monetdbe_open');
        @monetdbe_close                := GetProcAddress(self.libraryhandle, 'monetdbe_close');
        @monetdbe_error                := GetProcAddress(self.LibraryHandle, 'monetdbe_error'          );
        @monetdbe_get_autocommit       := GetProcAddress(self.LibraryHandle, 'monetdbe_get_autocommit' );
        @monetdbe_set_autocommit       := GetProcAddress(self.LibraryHandle, 'monetdbe_set_autocommit' );
        @monetdbe_in_transaction       := GetProcAddress(self.LibraryHandle, 'monetdbe_in_transaction' );
        @monetdbe_query                := GetProcAddress(self.LibraryHandle, 'monetdbe_query'          );
        @monetdbe_result_fetch         := GetProcAddress(self.LibraryHandle, 'monetdbe_result_fetch'   );
        @monetdbe_cleanup_result       := GetProcAddress(self.LibraryHandle, 'monetdbe_cleanup_result' );
        @monetdbe_prepare              := GetProcAddress(self.LibraryHandle, 'monetdbe_prepare'        );
        @monetdbe_bind                 := GetProcAddress(self.LibraryHandle, 'monetdbe_bind'           );
        @monetdbe_execute              := GetProcAddress(self.LibraryHandle, 'monetdbe_execute'        );
        @monetdbe_cleanup_statement    := GetProcAddress(self.LibraryHandle, 'monetdbe_cleanup_statement');
        @monetdbe_append               := GetProcAddress(self.LibraryHandle, 'monetdbe_append'           );
        @monetdbe_null                 := GetProcAddress(self.LibraryHandle, 'monetdbe_null'             );
        @monetdbe_get_columns          := GetProcAddress(self.LibraryHandle, 'monetdbe_get_columns'      );
        @monetdbe_dump_database        := GetProcAddress(self.LibraryHandle, 'monetdbe_dump_database');
        @monetdbe_dump_table           := GetProcAddress(self.LibraryHandle, 'monetdbe_dump_table');
        @monetdbe_get_mapi_port        := GetProcAddress(self.LibraryHandle, 'monetdbe_get_mapi_port');
        @monetdbe_mapi_dump_database   := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_dump_database');
        @monetdbe_mapi_dump_table      := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_dump_table');
        @monetdbe_mapi_error           := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_error');
        @monetdbe_mapi_query           := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_query');
        @monetdbe_mapi_close_handle    := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_close_handle');
        @monetdbe_mapi_fetch_row       := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_fetch_row');
        @monetdbe_mapi_fetch_field     := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_fetch_field');
        @monetdbe_mapi_get_type        := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_get_type');
        @monetdbe_mapi_seek_row        := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_seek_row');
        @monetdbe_mapi_get_row_count   := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_get_row_count');
        @monetdbe_mapi_rows_affected   := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_rows_affected');
        @monetdbe_mapi_get_field_count := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_get_field_count');
        @monetdbe_mapi_result_error    := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_result_error');
        @monetdbe_mapi_get_len         := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_get_len');
        @monetdbe_mapi_explain         := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_explain');
        @monetdbe_mapi_explain_query   := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_explain_query');
        @monetdbe_mapi_explain_result  := GetProcAddress(self.LibraryHandle, 'monetdbe_mapi_explain_result');
      end;
end;

procedure TMonetdbConnection.setLibraryLocation(value: tfilename);
var
  FileDialog: TOpenDialog;
  ftitem:tfiletypeitem;
begin
  if self.flibrarylocation  <> Value then
  begin
    FileDialog := TOpenDialog.Create(nil);
    try
      FileDialog.Filter:='DLL|*.dll';
      FileDialog.FilterIndex := 1;
      if FileDialog.Execute then
      begin
        FLibrarylocation := FileDialog.FileName;
      end;
    finally
      FileDialog.Free;
    end;
  end;
end;


end.
