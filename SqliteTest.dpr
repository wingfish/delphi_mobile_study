program SqliteTest;

uses
  System.StartUpCopy,
  FMX.Forms,
  uSqliteTest in 'uSqliteTest.pas' {frmSqliteTest};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSqliteTest, frmSqliteTest);
  Application.Run;
end.
