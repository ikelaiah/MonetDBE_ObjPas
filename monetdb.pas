unit monetdb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, monetdbe,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TMonetDBConnection = class;

  TMonetDBQuery = class
     public
       connection : TmonetDBConnection;
       sql:string;
       function ExecSQL:integer;
       procedure Open;
       procedure Close;
       constructor Create(Connection:tmonetDBConnection);
     end;

  TMonetDBConnection = class
    private
       fisconnected : boolean;
                fdb : pansichar;
      pmdbe_options : Pmonetdbe_options ;
      procedure setconnection(value:boolean);
      procedure setDB(value:pansichar);
      function fgetmonetversion:pansichar;
    public
      mdbe          : monetdbe_database;
      mdbe_options  : monetdbe_options;
      function Query_New:tmonetdbquery;
      function Query_Open(sql:string):tmonetdbquery;
      function Query_execSQL(sql:string):string;

      property monet_version:pansichar read fgetmonetversion;
      property db:pansichar read fdb write setdb;
      property connected:boolean read fisconnected write setconnection;
      constructor create;
  end;



implementation


{ TMonetDBConnection }
constructor TMonetDBConnection.create;
begin
  mdbe := nil;
  pmdbe_options:=@mdbe_options ;
end;

function TMonetDBConnection.fgetmonetversion: pansichar;
begin
  result:=monetdbe.monetdbe_version;
end;

function TMonetDBConnection.Query_execSQL(sql: string): string;
var query:tmonetdbquery;
begin
  result:='';
  try
    query:=tmonetdbquery.Create(self);
    query.sql:=sql;
    result:=  query.ExecSQL.ToString;
  finally
    query.free;
  end;
end;

function TMonetDBConnection.Query_New: tmonetdbquery;
begin
  result:=tmonetdbquery.Create(self);
end;

function TMonetDBConnection.Query_Open(sql: string): tmonetdbquery;
begin
  result:=tmonetdbquery.Create(self);
  result.sql := sql;
  result.Open;
end;

procedure TMonetDBConnection.setconnection(value: boolean);
var
  closeresult,openresult:integer;
begin
  if value=true
    then
      begin
        openresult:= monetdbe.monetdbe_open(@mdbe,db, pmdbe_options  ) ;
        case openresult of
           0: fisconnected:=true;
          -1: showmessage('Allocation Failed');
          -2: showmessage('Error in Db');
        end;
      end
    else
      begin
        closeresult:=monetdbe.monetdbe_close(mdbe);
        if closeresult=0
          then fisconnected:=false
          else showmessage('Could not disconnect database') ;
      end;
end;

procedure TMonetDBConnection.setDB(value: pansichar);
begin
  if value=''
    then
      fdb := nil
    else
      begin
        fdb := value;
      end;
end;

{ TMonetDBQuery }

procedure TMonetDBQuery.Close;
begin
  //todo:close
end;

constructor TMonetDBQuery.Create(Connection: tmonetDBConnection);
begin
  self.connection := connection ;
end;

function TMonetDBQuery.ExecSQL: integer;
begin
  result:=0;
  if connection.connected
    then
      begin
        //todo:execsql
      end;
end;

procedure TMonetDBQuery.Open;
begin
  if connection.connected
    then
      begin
        //  todo:Open
      end;
end;

end.
