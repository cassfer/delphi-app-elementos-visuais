program app_elementos_visuais;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmDataHora in 'uFrmDataHora.pas' {FrmDataHora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
    Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmDataHora, FrmDataHora);
  Application.Run;
end.
