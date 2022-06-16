unit ClienteSep.View.Pedidos.Itens;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.ListBox, FMX.Controls.Presentation, FMX.StdCtrls, Utils;

type
  TViewPedidosItens = class(TForm)
    ListBox1: TListBox;
    Top: TRectangle;
    StyleBook1: TStyleBook;
    ImageUnChecked: TImage;
    ImageChecked: TImage;
    Layout1: TLayout;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FQuantidadeItensChecked : integer;
    procedure CarregarItensDosPedidos;
    procedure ImageCheckClick(Sender : TObject);
  public
    { Public declarations }
  end;

var
  ViewPedidosItens: TViewPedidosItens;

implementation

uses
  System.Rtti,
  ClienteSep.View.Pedidos;

{$R *.fmx}

procedure TViewPedidosItens.Button1Click(Sender: TObject);
begin
  MensagemYesNo('Confirmar Separação? ',
  procedure
  begin
   Close;
   ViewPedidos.Show;
  end)
end;

procedure TViewPedidosItens.CarregarItensDosPedidos;
begin
  ListBox1.Content.Controls.Clear;
  var I := 0;
  while I < 10 do
  begin
    var ListBoxItem := TListBoxItem.Create(ListBox1);
    ListBoxItem.Parent := ListBox1;
    ListBoxItem.Height := 25;
    ListBoxItem.StyleLookup := 'LayoutItemQuantidade';
    ListBoxItem.StylesData['ImageCheck.OnClick'] := TValue.From<TNotifyEvent>(ImageCheckClick);
    Inc(I);
  end;
end;

procedure TViewPedidosItens.FormShow(Sender: TObject);
begin
  FQuantidadeItensChecked := 0;
  CarregarItensDosPedidos;
  Layout1.Visible := False;
end;

procedure TViewPedidosItens.ImageCheckClick(Sender: TObject);
begin
  if TImage(Sender).Tag = 0 then
  begin
    Inc(FQuantidadeItensChecked);
    TImage(Sender).Tag := 1;
    TImage(Sender).Bitmap := ImageChecked.Bitmap;
  end
  else
  begin
    Dec(FQuantidadeItensChecked);
    TImage(Sender).Tag := 0;
    TImage(Sender).Bitmap := ImageUnChecked.Bitmap;
  end;

  if FQuantidadeItensChecked = ListBox1.Content.ChildrenCount then
    Layout1.Visible := True
  else
    Layout1.Visible := False;
end;

end.
