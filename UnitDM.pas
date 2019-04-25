unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    fdConexao: TFDConnection;
    qryClientes: TFDQuery;
    qryClientesCUST_NO: TIntegerField;
    qryClientesCUSTOMER: TStringField;
    qryClientesCONTACT_FIRST: TStringField;
    qryClientesCONTACT_LAST: TStringField;
    qryClientesPHONE_NO: TStringField;
    qryClientesADDRESS_LINE1: TStringField;
    qryClientesADDRESS_LINE2: TStringField;
    qryClientesCITY: TStringField;
    qryClientesSTATE_PROVINCE: TStringField;
    qryClientesCOUNTRY: TStringField;
    qryClientesPOSTAL_CODE: TStringField;
    qryClientesON_HOLD: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
