program BancoDeDados;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {frmPrincipal},
  UnitClientes in 'UnitClientes.pas' {frmClientes},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
