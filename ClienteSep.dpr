program ClienteSep;

uses
  System.StartUpCopy,
  FMX.Forms,
  ClienteSep.View.Login in 'ClienteSep.View.Login.pas' {ViewLogin},
  Infra.Styles in 'Infra.Styles.pas' {InfraStyles},
  ClienteSep.View.Pedidos in 'ClienteSep.View.Pedidos.pas' {ViewPedidos},
  ClienteSep.View.Pedidos.Itens in 'ClienteSep.View.Pedidos.Itens.pas' {ViewPedidosItens};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TViewLogin, ViewLogin);
  Application.CreateForm(TInfraStyles, InfraStyles);
  Application.CreateForm(TViewPedidos, ViewPedidos);
  Application.CreateForm(TViewPedidosItens, ViewPedidosItens);
  Application.Run;
end.
