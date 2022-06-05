unit ClienteSep.View.Pedidos.Itens;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.ListBox;

type
  TViewPedidosItens = class(TForm)
    ListBox1: TListBox;
    Top: TRectangle;
    StyleBook1: TStyleBook;
    ListBoxItem1: TListBoxItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPedidosItens: TViewPedidosItens;

implementation

{$R *.fmx}

end.
