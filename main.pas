unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,monetdb, monetdbe, Data.FMTBcd, Data.DB, Data.SqlExpr, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  SVGIconImageListBase, SVGIconImageList, Vcl.Buttons, Vcl.ComCtrls;

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
    Btn_Version: TSpeedButton;
    TreeView1: TTreeView;
    procedure Btn_VersionClick(Sender: TObject);
    procedure BtnConnectionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    connection:monetdb.TMonetDBConnection;
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

procedure TForm1.BtnConnectionClick(Sender: TObject);
begin
  if connection=nil
    then connection:=monetdb.TMonetDBConnection.create;
  if BtnConnection.down
    then
      begin
        if connection.connected=false
          then
            begin
              connection.db := PAnsiChar(AnsiString(editdbpath.Text));
              connection.connected := true;
              memo1.Lines.Add('Connected');
            end;
      end
    else
      begin
        if connection.connected
          then
            begin
              connection.connected:=false;
              memo1.Lines.Add('Disconnected');
            end;
      end;
end;

end.
