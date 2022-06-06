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
    procedure ListBoxItem1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarPedidos;
  public
    { Public declarations }
  end;

var
  ViewPedidos: TViewPedidos;

implementation

Uses ClienteSep.View.Pedidos.Itens;

{$R *.fmx}

procedure TViewPedidos.CarregarPedidos;
begin
  var I := 0;
  while I < 50 do
  begin
    var ListBoxItem := TListBoxItem.Create(ListBox1);
    ListBoxItem.Parent := ListBox1;
    ListBoxItem.OnClick := ListBoxItem1Click;
    ListBoxItem.StyleLookup := 'ListBoxitemPedidos';
    ListBoxItem.StylesData['TextNomeCliente'] := 'Cliente ' + I.ToString;
    ListBoxItem.StylesData['TextDataAgendamento'] := ' Agendado para as 16h ' + I.ToString;
    Inc(I);
  end;
end;

procedure TViewPedidos.FormCreate(Sender: TObject);
begin
  CarregarPedidos;
end;

procedure TViewPedidos.FormResize(Sender: TObject);
begin
  var LTamanhoListBoxIem :=  (ListBox1.Width - 20) / 2;
  ListBox1.ItemHeight := LTamanhoListBoxIem;
  ListBox1.ItemWidth  := LTamanhoListBoxIem;

end;

procedure TViewPedidos.ListBoxItem1Click(Sender: TObject);
begin
  ViewPedidosItens.Show;
end;

end.
