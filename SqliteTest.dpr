program SqliteTest;

uses
  System.StartUpCopy,
  FMX.Forms,
  uSqliteTest in 'uSqliteTest.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
