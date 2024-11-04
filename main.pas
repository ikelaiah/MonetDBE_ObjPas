unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,monetdb, monetdbe, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    SQLQuery1: TSQLQuery;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var c:pansichar;
begin
  memo1.Lines.add('version : ' +  connection.monet_version );
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  self.SQLQuery1.ExecSQL()
end;

procedure TForm1.Button4Click(Sender: TObject);

//var mdbe:monetdbe_database;
//    pmdbe:monetdbe.Pmonetdbe_database ;
//    openresult:integer;
//    closeresult:integer;
//    pmdbe_options:Pmonetdbe_options ;
//    db:pansichar;
//    res:pansichar;
//    monetresult:monetdbe.monetdbe_result ;
//    pmonetresult:monetdbe.Pmonetdbe_result ;
//    ppmonetresult:monetdbe.PPmonetdbe_result ;
//    affectedrows:monetdbe.monetdbe_cnt ;
//    paffectedrows:monetdbe.Pmonetdbe_cnt ;
begin
//  mdbe := nil;
//  pmdbe := @mdbe;
//
//  pmdbe_options:=@mdbe_options ;
//
//  Pmonetresult:=@pmonetresult ;
//  PPmonetresult:=@ppmonetresult;
//
//
//
//
//  db:='c:\temp\MonetDBData';
//  openresult:= monetdbe.monetdbe_open(pmdbe,db, pmdbe_options  ) ;
//
//  case openresult of
//    0: Memo1.Lines.Add('open success');
//    -1:Memo1.Lines.Add('Allocation Failed');
//    -2:Memo1.Lines.Add('Error in Db');
//  end;
//
//  if openresult=0
//    then
//      begin
//        memo1.Lines.Add( 'Try creating table');
//
//        res:=   monetdbe.monetdbe_query(mdbe, 'CREATE TABLE integers(i INTEGER, j INTEGER);', PPMonetresult, Paffectedrows) ;
//        memo1.Lines.Add( 'Affected rows : '+affectedrows.ToString );
//
//        memo1.Lines.Add( res);
//      end;
//
//
//  closeresult:=monetdbe.monetdbe_close(mdbe);
//    if closeresult=0
//      then Memo1.Lines.Add( 'Closed succesfully')
//      else Memo1.Lines.Add( 'Error closing');
end;

procedure TForm1.Button5Click(Sender: TObject);
//var mdbe:monetdbe_database;
//    pmdbe:monetdbe.Pmonetdbe_database ;
//    openresult:integer;
//    closeresult:integer;
//    pmdbe_options:Pmonetdbe_options ;
//    db:pansichar;
//    res:pansichar;
//    monetresult:monetdbe.monetdbe_result ;
//    pmonetresult:monetdbe.Pmonetdbe_result ;
//    ppmonetresult:monetdbe.PPmonetdbe_result ;
//    affectedrows:monetdbe.monetdbe_cnt ;
//    paffectedrows:monetdbe.Pmonetdbe_cnt ;
begin
//  mdbe := nil;
//  pmdbe := @mdbe;
//
//  pmdbe_options:=@mdbe_options ;
//
//  Pmonetresult:=@pmonetresult ;
//  PPmonetresult:=@ppmonetresult;
//
//
//
//
//  db:='c:\temp\MonetDBData';
//  openresult:= monetdbe.monetdbe_open(pmdbe,db, pmdbe_options  ) ;
//
//  case openresult of
//    0: Memo1.Lines.Add('open success');
//    -1:Memo1.Lines.Add('Allocation Failed');
//    -2:Memo1.Lines.Add('Error in Db');
//  end;
//
//  if openresult=0
//    then
//      begin
//        memo1.Lines.Add( 'Try inserting in table');
//
//        res:=   monetdbe.monetdbe_query(mdbe, 'INSERT INTO integers VALUES (3, 4), (5, 6), (7, NULL);', PPMonetresult, Paffectedrows) ;
//        memo1.Lines.Add( 'Affected rows : '+affectedrows.ToString );
//
//        memo1.Lines.Add( res);
//      end;
//
//
//  closeresult:=monetdbe.monetdbe_close(mdbe);
//    if closeresult=0
//      then Memo1.Lines.Add( 'Closed succesfully')
//      else Memo1.Lines.Add( 'Error closing');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  self.connection := tmonetdbconnection.create;
  self.connection.db := 'c:\temp\newmonetdata'; // nil;

  connection.connected := true;
  if connection.connected
    then
      begin
        memo1.Lines.Add('Connected');
      end
    else
      begin
         memo1.Lines.Add('Disconnected');
      end;


end;

end.
