unit monetdb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, monetdbe,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TMonetDBConnection = class;

  TMonetDBQuery = class
     private
       fsql: PUtf8char;
        function getSQL:string;
       procedure setSQL(_sql:string);
     public
       connection : TmonetDBConnection;
       result:monetdbe.PPmonetdbe_result;
       affected_rows : monetdbe.monetdbe_cnt;

       property sql:string read getSQL write setSQL;
       function ExecSQL:integer;
       procedure Open;
       procedure Close;
       constructor Create(Connection:tmonetDBConnection);
     end;

  TMonetDBConnection = class
    private
       fisconnected : boolean;
                fdb : putf8char;
      pmdbe_options : Pmonetdbe_options ;
      procedure setconnection(value:boolean);
      procedure setDB(value:string);
      function getdb:string;
      function fgetmonetversion:string;
      function get_autocommit:boolean;
      procedure set_autocommit(value:boolean);
    public
      mdbe          : monetdbe_database;
      mdbe_options  : monetdbe_options;

      function Dump_Database(backupfile:string):string;
      function Dump_Table(schema_name, table_name, backupfile:string):string;

      function Query_Open(sql:string):tmonetdbquery;
      function Query_execSQL(sql:string):string;
      function Error:string;

      property autocommit:boolean read get_autocommit write set_autocommit;
      property monet_version:string read fgetmonetversion;
      property db:string read getdb write setdb;
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

function TMonetDBConnection.Dump_Database(backupfile:string): string;
var
  dumpresult:pansichar;
  utf_backupfile:utf8string;
begin
  utf_backupfile:=utf8encode(backupfile);
  result :=  monetdbe_dump_database( self.mdbe, putf8char(utf_backupfile));
end;

function TMonetDBConnection.Dump_Table(schema_name, table_name, backupfile: string): string;
var
  utf_schema_name, utf_table_name, utf_backupfile:utf8string;
begin
  utf_schema_name:=utf8encode(schema_name);
  utf_table_name:=utf8encode(table_name);
  utf_backupfile:=utf8encode(backupfile);
  result:= monetdbe_dump_table(self.mdbe, putf8char(utf_schema_name),putf8char(utf_table_name),putf8char(utf_backupfile));
end;

function TMonetDBConnection.Error: string;
begin
  if self.fisconnected=false
    then
      result:='Not connected to database'
    else
      result:=string( monetdbe.monetdbe_error(self.mdbe));
end;

function TMonetDBConnection.fgetmonetversion: string;
begin
  result:=utf8tostring(monetdbe.monetdbe_version);
end;

function TMonetDBConnection.getdb: string;
begin
  result := utf8tostring(fdb);
end;

function TMonetDBConnection.get_autocommit: boolean;
var res:integer;
begin
  monetdbe.monetdbe_get_autocommit(@mdbe, @res);
  if res=0
    then
      result:=false
    else
      result:=true;
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
        openresult:= monetdbe.monetdbe_open(@mdbe,fdb, pmdbe_options  ) ;
        case openresult of
           0: fisconnected:=true;
          -1: begin fisconnected:=false; showmessage('Allocation Failed');  end;
          -2: begin fisconnected:=false; showmessage('Error in Db');        end;
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

procedure TMonetDBConnection.setDB(value:string);
var
  utf_db:utf8string;
begin
  if value=''
    then
      fdb := nil
    else
      begin
        utf_db := utf8encode(value);
           fdb := putf8char(utf_db);
      end;
end;

procedure TMonetDBConnection.set_autocommit(value: boolean);
var res:integer;
begin
  if value=true then res:=1 else res:=0;
  monetdbe.monetdbe_set_autocommit(@mdbe, res);
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

function TMonetDBQuery.getSQL: string;
begin
  result:=utf8tostring( fsql);
end;

procedure TMonetDBQuery.Open;
begin
  if connection.connected
    then
      begin
        //  todo:Open

        monetdbe.monetdbe_query(connection.mdbe, fsql, self.result, @affected_rows  ) ;
      end;
end;

procedure TMonetDBQuery.setSQL(_sql: string);
var
  utf_sql:utf8string;
begin
  utf_sql :=utf8encode(_sql);
  self.fsql := putf8char(utf_sql);
end;

end.
