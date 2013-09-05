unit uTableview1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.ListBox, FMX.Layouts, FMX.StdCtrls;

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
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    ChangeTabAction2: TChangeTabAction;
    CalloutPanel1: TCalloutPanel;
    Expander1: TExpander;
    Switch1: TSwitch;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    procedure ListBoxItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  changeTabAction1.ExecuteTarget(self);
end;

end.
