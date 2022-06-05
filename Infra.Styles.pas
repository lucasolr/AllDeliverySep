unit Infra.Styles;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,

  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.Edit,
  FMX.StdCtrls,
  FMX.ListBox,
  FMX.TabControl,
  FMX.EditBox,
  FMX.NumberBox,
  FMX.Layouts;

type
  TInfraStyles = class(TForm)
    Edit1: TEdit;
    StyleBook1: TStyleBook;
    Button1: TButton;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    NumberBox1: TNumberBox;
    ListBox2: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    SpeedButton2: TSpeedButton;
    Button2: TButton;
    Button3: TButton;
    NumberBox2: TNumberBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ListBox1: TListBox;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfraStyles: TInfraStyles;

implementation

{$R *.fmx}

end.
