unit ClienteSep.View.Pedidos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox;

type
  TViewPedidos = class(TForm)
    LayoutRodape: TLayout;
    CircleAguardando: TCircle;
    LabelAguardando: TLabel;
    CircleSeparando: TCircle;
    LabelSeparando: TLabel;
    Top: TRectangle;
    StyleBook1: TStyleBook;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPedidos: TViewPedidos;

implementation

{$R *.fmx}

procedure TViewPedidos.FormCreate(Sender: TObject);
var
  I : integer;
begin
 I := 0;
  while I < 50 do
  begin
    var ListBoxItem := TListBoxItem.Create(ListBox1);
    ListBoxItem.Parent := ListBox1;
    ListBoxItem.StyleLookup := 'ListBoxItemPedidos';
    ListBoxItem.StylesData['TextNomeCliente'] := 'Cliente ' + I.ToString;
    ListBoxItem.StylesData['TextDataAgendamento'] := ' Agendado para a hora que balofo acordar ' + I.ToString;
    Inc(I);
  end;
end;

procedure TViewPedidos.FormResize(Sender: TObject);
begin
  var LTamanhoListBoxIem :=  (ListBox1.Width - 40) / 2;
  ListBox1.ItemHeight := LTamanhoListBoxIem;
  ListBox1.ItemWidth  := LTamanhoListBoxIem;

end;

end.
