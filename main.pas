unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,monetdb, monetdbe, Data.FMTBcd, Data.DB, Data.SqlExpr, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
 system.IniFiles, SVGIconImageListBase, SVGIconImageList, Vcl.Buttons, Vcl.ComCtrls, Vcl.FileCtrl;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Btn_Connect: TButton;
    Btn_Run_Query: TButton;
    SQLMemo: TMemo;
    Label1: TLabel;
    Btn_Disconnect: TButton;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    BtnConnection: TSpeedButton;
    SVGIconImageList1: TSVGIconImageList;
    EditDBPath: TEdit;
    Label2: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    TreeView1: TTreeView;
    SpeedButton1: TSpeedButton;
    Panel5: TPanel;
    Splitter4: TSplitter;
    databaseCombo: TComboBox;
    SpeedButton2: TSpeedButton;
    SaveDialog1: TSaveDialog;
    procedure Btn_VersionClick(Sender: TObject);
    procedure BtnConnectionClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure databaseComboChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure populateDatabaseCombo;
  public
    { Public declarations }
    datafarmdirectory, databasedirectory : string;
    connection : monetdb.TMonetDBConnection;

  end;

var
  Form1: TForm1;
  mdbe_options :  monetdbe_options;
implementation

{$R *.dfm}

procedure TForm1.Btn_VersionClick(Sender: TObject);
begin
   memo1.Lines.add('version : ' +  connection.monet_version );
end;

procedure TForm1.databaseComboChange(Sender: TObject);
var settings:tinifile;
begin
   settings:= system.IniFiles.TIniFile.Create(extractfilepath(application.ExeName)+'settings.ini');
  self.databasedirectory := databaseCombo.Text;
  settings.writestring('DBLocation','DataBaseDirectory', self.databaseCombo.Text);
  settings.free;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var settings:tinifile;
begin
   settings:= system.IniFiles.TIniFile.Create(extractfilepath(application.ExeName)+'settings.ini');

   settings.UpdateFile;
   settings.free;
end;

procedure TForm1.FormCreate(Sender: TObject);
var settings:tinifile;     i:integer;
begin
  if connection=nil
    then connection:=monetdb.TMonetDBConnection.create;

  if fileexists(extractfilepath(application.ExeName)+'settings.ini')
    then
      begin
        settings:= system.IniFiles.TIniFile.Create(extractfilepath(application.ExeName)+'settings.ini');
        self.datafarmdirectory := settings.ReadString('DBLocation','DataFarmDirectory','c:\monetdbfarm');
        self.databasedirectory := settings.ReadString('DBLocation','DataBaseDirectory','default');
      end
    else
      begin
        settings:= system.IniFiles.TIniFile.Create(extractfilepath(application.ExeName)+'settings.ini');
        settings.WriteString('DBLocation','DataFarmDirectory','c:\monetdbfarm');
        settings.WriteString('DBLocation','DataBaseDirectory','default');         //complete dir path is combination of datafarmdirectory
      end;                                                                          //and databasedirectory --> c:\monetdbfarm\default
   self.EditDBPath.Text    := datafarmdirectory;
   self.populateDatabaseCombo ;
   memo1.Lines.Add('Monetdbe version :'+connection.monet_version);
end;

procedure TForm1.populateDatabaseCombo;
var sr: TSearchRec;   fn:string; i:integer;
begin
  i:=-1;
  databasecombo.clear;
  FindFirst( self.datafarmdirectory +'\*',(faDirectory),sr);
  while FindNext(sr) = 0 do
    begin

      fn:=trim(sr.FindData.cFileName);
      databasecombo.Items.Add(fn);
      inc(i);
      if fn=self.databasedirectory then databasecombo.itemindex := i;

    end;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var e:string;
begin
  e:=connection.Error;
  trim(e);
  if e='' then e:='OK';

  memo1.Lines.Add('database status : '+e);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var dropresult:string;
begin
//  dropresult :=   connection.Dump_Database('c:\temp\backupdb')        ;
  if savedialog1.Execute
    then
      begin
        dropresult  := connection.Dump_Database(savedialog1.FileName);
        if dropresult='' then dropresult:=savedialog1.filename;

        memo1.Lines.Add('Database Dump :'+ dropresult );
      end;
end;

procedure TForm1.BtnConnectionClick(Sender: TObject);
  function TrailSlash(val:string):string;
    begin
      if val[length(val)-1]='\'
        then  result:=val
        else result:=val+'\'
    end;
begin

  if BtnConnection.down
    then
      begin
        if connection.connected=false
          then
            begin
              connection.db := PAnsiChar(AnsiString( trailslash(self.datafarmdirectory)+ self.databasedirectory));
              connection.connected := true;
              if connection.connected
                then memo1.Lines.Add('Connected : '+trailslash(datafarmdirectory)+self.databasedirectory)
                else memo1.Lines.Add('Error : '+connection.Error);
            end;
      end
    else
      begin
        if connection.connected
          then
            begin
              connection.connected:=false;
              memo1.Lines.Add('Disconnected ');
            end;
      end;
end;

end.
