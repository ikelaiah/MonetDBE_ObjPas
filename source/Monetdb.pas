unit Monetdb;

{$R-,T-,H+,X+}
{$WARN SYMBOL_DEPRECATED OFF}

interface

uses
  system.IOUtils , System.Classes, monetdbe, vcl.Dialogs,  Data.DB, Data.SqlExpr,  Data.FMTBcd ,  System.SysUtils,
  Data.DBCommon,
  Data.DBCommonTypes,
  Data.DBXCommon,
  vcl.ComCtrls ,
  System.Generics.Collections, designintf;

type
  //todo : too much..

  TMonetOption = (scoExplicitConnect, scoApplyUpdatesChecksRowsAffected);
  TMonetOptions = Set of TMonetOption;

  TMonetdbConnection = class(TComponent)
  private
    { Private declarations }
    fdatabaseversion : dtap;
    flibrarylocation : TFileName;
           f_db_path : string;
            fOptions : TMonetOptions;

    procedure setLibraryLocation(value:tfilename);

  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property databaseversion : dtap read fdatabaseversion write fdatabaseversion;
    property librarylocation : tFileName read flibrarylocation write flibrarylocation;
    property DB_path  :string read f_db_path  write f_db_path;
    property Options:TMonetOptions read fOptions write fOptions;
  end;


  TMonetDBQuery = class(tcomponent)
    private
      FSQL :tstringlist;
      fMonetDBConnection:tmonetdbConnection;
      procedure SetSQL(value:tstringlist);
      function GetSQL:tstringlist;
    public
      constructor Create(AOwner: TComponent);
      destructor destroy;
    published
      property Connection : TMonetDBConnection read fMonetDBConnection write fMonetDBConnection;
      property SQL: TStringlist read GetSQL write setsql;
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
  if assigned(FSQL)=false then FSQL:=tstringlist.create;

  result:=FSQL;
end;

procedure TMonetDBQuery.SetSQL(Value: TStringlist);
begin
  FSQL.Assign( value )   ;

end;



procedure TMonetdbConnection.setLibraryLocation(value: tfilename);
var
  FileDialog: TFileOpenDialog;
  ftitem:tfiletypeitem;
begin
  if self.flibrarylocation  <> Value then
  begin
    FileDialog := TFileOpenDialog.Create(nil);
    try
      FileDialog.Options := [fdoFileMustExist];

      ftitem:= FileDialog.FileTypes.Add;
      ftitem.FileMask :='*.dll';
      ftitem.DisplayName:= 'dll';

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
