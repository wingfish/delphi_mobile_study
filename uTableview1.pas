unit uTableview1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.ListBox, FMX.Layouts, FMX.StdCtrls, FMX.ListView.Types,
  FMX.ListView, Data.Bind.GenData, Fmx.Bind.GenData, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.ObjectScope, FMX.Edit,
  FMX.TreeView, FMX.Memo, FMXTee.Engine, FMXTee.Procs, FMXTee.Chart,
  FMXTee.Chart3D, FMX.Objects3D, FMX.Controls3D;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBox2: TListBox;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    TabControl2: TTabControl;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    Switch1: TSwitch;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    ListBox3: TListBox;
    ListBoxHeader1: TListBoxHeader;
    SearchBox1: TSearchBox;
    Button2: TButton;
    SpeedButton2: TSpeedButton;
    ListView1: TListView;
    Cube1: TCube;
    Plane1: TPlane;
    Chart3DChart1: TChart;
    Chart3D1: TChart3D;
    Chart3DChart2: TChart;
    Chart3D2: TChart3D;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure actAddItemExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.actAddItemExecute(Sender: TObject);
begin
  listbox3.Items.Add('test '+FormatDatetime('hh:mm:ss',now));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  listbox3.Items.Clear;
  listbox3.Items.Add('1');
  listbox3.Items.Add('2');
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  changeTabAction1.ExecuteTarget(self);
end;

end.
