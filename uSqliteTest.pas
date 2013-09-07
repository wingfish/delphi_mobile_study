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
  TForm8 = class(TForm)
    test_sqlite: TSQLConnection;
    common: TSQLDataSet;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    ListView1: TListView;
    LinkFillControlToField3: TLinkFillControlToField;
    Button1: TButton;
    procedure test_sqliteBeforeConnect(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.fmx}

procedure TForm8.Button1Click(Sender: TObject);
begin
  test_sqlite.Open;
  common.Open;
end;

procedure TForm8.test_sqliteBeforeConnect(Sender: TObject);
begin
{$IFDEF IOS}
  test_sqlite.Params.Values['Database'] := GetHomePath + PathDelim + 'db' +
    PathDelim + 'money.sqlite'
{$ENDIF}
end;

end.
