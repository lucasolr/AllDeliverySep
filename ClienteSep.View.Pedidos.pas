unit ClienteSep.View.Pedidos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.DialogService;

type
  TViewPedidos = class(TForm)
    LayoutRodape: TLayout;
    LabelAguardando: TLabel;
    CircleSeparando: TCircle;
    LabelSeparando: TLabel;
    Top: TRectangle;
    TextValor: TStyleBook;
    ListBox1: TListBox;
    CircleAguardando: TCircle;
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
    ListBoxItem.StyleLookup := 'View.PedidosListBox';
    ListBoxItem.StylesData['TextNomeCliente'] := 'Cliente ' + I.ToString;
    ListBoxItem.StylesData['TextDataAgendamento'] := ' Agendado para as 16h ';
    ListBoxItem.stylesData['TextDataPedido'] := ' 2/12/2022 ';
    ListBoxItem.stylesData['TextCodigo']  := '#777' + I.ToString;
    ListBoxItem.stylesData['TextValor'] := 'R$ '+ formatcurr(',#0.00',700);
    Inc(I);
  end;
end;

procedure TViewPedidos.FormCreate(Sender: TObject);
begin
  CarregarPedidos;
end;

procedure TViewPedidos.FormResize(Sender: TObject);
begin
//  var LTamanhoListBoxIem :=  (ListBox1.Width - 20) / 2;
//  ListBox1.ItemHeight := LTamanhoListBoxIem;
//  ListBox1.ItemWidth  := LTamanhoListBoxIem;

end;

procedure TViewPedidos.ListBoxItem1Click(Sender: TObject);
begin
  ViewPedidosItens.Show;
end;


end.
