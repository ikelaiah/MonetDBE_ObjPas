unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,monetdb, monetdbe, Data.FMTBcd, Data.DB, Data.SqlExpr, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
 system.IniFiles, SVGIconImageListBase, SVGIconImageList, Vcl.Buttons, Vcl.ComCtrls, Vcl.FileCtrl, Vcl.Menus;

type
  //treeimages = (tiDisconnectedDatabase, );
  TForm1 = class(TForm)
    Memo1: TMemo;
    Btn_Connect: TButton;
    Btn_Run_Query: TButton;
    SQLMemo: TMemo;
    Label1: TLabel;
    Btn_Disconnect: TButton;
    Panel1: TPanel;
    Splitter1: TSplitter;
    SVGIconImageList1: TSVGIconImageList;
    Panel3: TPanel;
    Panel4: TPanel;
    databaseTreeview: TTreeView;
    Panel5: TPanel;
    Splitter4: TSplitter;
    SaveDialog1: TSaveDialog;
    TreeImages: TSVGIconImageList;
    Label2: TLabel;
    EditDBPath: TEdit;
    Panel2: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    TreePopup: TPopupMenu;
    Connect1: TMenuItem;
    Disconnect1: TMenuItem;
    procedure Btn_VersionClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure Disconnect1Click(Sender: TObject);
  private
    { Private declarations }

    procedure populateTreeview;
  public
    { Public declarations }
    datafarmdirectory, databasedirectory : string;
    connection : monetdb.TMonetDBConnection;
  end;

var
         Form1 : TForm1;
  mdbe_options : monetdbe_options;
implementation

{$R *.dfm}

procedure TForm1.Btn_VersionClick(Sender: TObject);
begin
   memo1.Lines.add('version : ' +  connection.monet_version );
end;

procedure TForm1.Connect1Click(Sender: TObject);
var      i : integer;
    dbpath : string;
  function TrailSlash(val:string):string;
    begin
      if val[length(val)-1]='\'
        then  result:=val
        else result:=val+'\'
    end;
begin
  for I := 0 to self.databaseTreeview.items.Count-1 do
    begin
      if self.databaseTreeview.Items.Item[I].ImageIndex = self.TreeImages.GetIndexByName('connected_database')
        then
          begin
            self.databaseTreeview.Items.Item[I].ImageIndex := self.TreeImages.GetIndexByName('Disconnected_database')    ;
            self.databaseTreeview.Items.Item[i].SelectedIndex := self.databaseTreeview.Items.Item[I].ImageIndex ;
            connection.connected := false;
            break;
          end;
    end;
  self.databaseTreeview.Selected.ImageIndex := self.TreeImages.GetIndexByName('connected_database');
  self.databaseTreeview.selected.SelectedIndex := self.databaseTreeview.selected.ImageIndex ;
  connection.db :=  trailslash(self.datafarmdirectory)+ self.databaseTreeview.Selected.text;
  connection.connected := true;
  memo1.Lines.Add('Connected database : '+connection.db);
end;

procedure TForm1.Disconnect1Click(Sender: TObject);
begin
   if self.databaseTreeview.Selected.ImageIndex = self.TreeImages.GetIndexByName('connected_database')
     then
       begin;
         connection.connected := false;
         databaseTreeview.Selected.ImageIndex := self.TreeImages.GetIndexByName('Disconnected_database') ;
         databasetreeview.Selected.SelectedIndex := databasetreeview.Selected.ImageIndex;
       end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  settings:tinifile;
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
   self.populateTreeview;
   memo1.Lines.Add('Monetdbe version :'+connection.monet_version);
end;


procedure TForm1.populateTreeview;
var
  sr: TSearchRec;
  fn:string;
  tn:ttreenode;
begin
  self.databaseTreeview.items.clear;
  FindFirst( self.datafarmdirectory +'\*',(faDirectory),sr);
  while FindNext(sr) = 0 do
    begin
      fn:=trim(sr.FindData.cFileName);
      tn:=databaseTreeview.Items.AddChild(nil, fn );
      tn.ImageIndex :=  self.TreeImages.GetIndexByName('Disconnected_database');
      tn.SelectedIndex := tn.ImageIndex;
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

end.
