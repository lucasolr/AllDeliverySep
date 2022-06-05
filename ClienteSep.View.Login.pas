unit ClienteSep.View.Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ExtCtrls, FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, ClienteSep.View.Pedidos;

type
  TViewLogin = class(TForm)
    imageLogo: TImage;
    EditCNPJ: TEdit;
    LayoutCampoLogin: TLayout;
    EditSenha: TEdit;
    ButtonAcessar: TButton;
    procedure ButtonAcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.fmx}

procedure TViewLogin.ButtonAcessarClick(Sender: TObject);
begin
  ViewPedidos.Show;
end;

end.
