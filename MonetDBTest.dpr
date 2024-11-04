program MonetDBTest;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  monetdbe in 'monetdbe.pas',
  monetdb in 'monetdb.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
