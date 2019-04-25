unit UnitClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TfrmClientes = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dstClientes: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    Label13: TLabel;
    edtPesquisa: TEdit;
    btnPesquisar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses UnitDM;

procedure TfrmClientes.btnCancelarClick(Sender: TObject);
begin
  DM.qryClientes.Cancel;
end;

procedure TfrmClientes.btnEditarClick(Sender: TObject);
begin
  DM.qryClientes.Edit;// metodo de edi��o
end;

procedure TfrmClientes.btnExcluirClick(Sender: TObject);
begin
    DM.qryClientes.Delete//
end;

procedure TfrmClientes.btnGravarClick(Sender: TObject);
begin
  DM.qryClientes.Post;
end;

procedure TfrmClientes.btnNovoClick(Sender: TObject);
begin
  DM.qryClientes.Insert// tbm poderia ser utulizado o metodo append
end;

procedure TfrmClientes.btnPesquisarClick(Sender: TObject);

  const
    PesqVazia = 'SELECT * FROM CUSTOMER';
  var
    PesqPorCli : String;

begin
    PesqPorCli := 'SELECT * FROM CUSTOMER WHERE CUSTOMER = ' + QuotedStr(edtPesquisa.Text);
    DM.qryClientes.Active := False;


    if edtPesquisa.Text = '' then
      DM.qryClientes.SQL.Text := PesqVazia
    else
      DM.qryClientes.SQL.Text := PesqPorCli;

    DM.qryClientes.Active := True;


end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.qryClientes.Active := false;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  DM.qryClientes.Active := true;
end;

end.
