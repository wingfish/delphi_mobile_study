unit uSqliteTest;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, Data.DbxSqlite, Data.FMTBcd,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  Data.SqlExpr, FMX.StdCtrls, FMX.ListBox, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView;

type
  TfrmSqliteTest = class(TForm)
    test_sqlite: TSQLConnection;
    common: TSQLDataSet;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    ListView1: TListView;
    LinkFillControlToField3: TLinkFillControlToField;
    btnOpenSqlite: TButton;
    SQLQueryInsert: TSQLQuery;
    btnAddRecord: TButton;
    procedure test_sqliteBeforeConnect(Sender: TObject);
    procedure btnOpenSqliteClick(Sender: TObject);
    procedure btnAddRecordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSqliteTest: TfrmSqliteTest;

implementation

uses System.Math;

{$R *.fmx}

procedure TfrmSqliteTest.btnOpenSqliteClick(Sender: TObject);
begin
  test_sqlite.Open;
  common.Open;
end;

procedure TfrmSqliteTest.btnAddRecordClick(Sender: TObject);
begin
  SqlQueryInsert.ParamByName('cm_money').AsFloat:=RandomRange(100,2000);
  SqlQueryInsert.ExecSQL();
  common.Refresh;
end;

procedure TfrmSqliteTest.test_sqliteBeforeConnect(Sender: TObject);
begin
{$IFDEF IOS}
  test_sqlite.Params.Values['Database'] := GetHomePath + PathDelim + 'Documents' +
    PathDelim + 'money.sqlite'
{$ENDIF}
end;

end.
