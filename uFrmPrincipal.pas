unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.UITypes, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, uFrmDataHora;

type
  TFrmPrincipal = class(TForm)
    PnlTitulo: TPanel;
    pgControlPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtCaracteres: TEdit;
    btnExibirDataHora: TButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    Button1: TButton;
    RGListaOpcoes: TRadioGroup;
    btnAdicionar: TButton;
    Label2: TLabel;
    LstBxItensSelecionados: TListBox;
    Button2: TButton;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Label3: TLabel;
    Button5: TButton;
    Button6: TButton;
    Panel3: TPanel;
    Button7: TButton;
    procedure FormShow(Sender: TObject);
    procedure EdtCaracteresEnter(Sender: TObject);
    procedure EdtCaracteresExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btnExibirDataHoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnExibirDataHoraClick(Sender: TObject);
begin
  FrmDataHora.ShowModal
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  pgControlPrincipal.ActivePageIndex := 1;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  LstBxItensSelecionados.Items.Clear;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
  pgControlPrincipal.ActivePageIndex := 2;
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
begin
  pgControlPrincipal.ActivePageIndex := 0;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
begin
  Memo1.SelectAll;
  Memo1.SetFocus;
end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
begin
  pgControlPrincipal.ActivePageIndex := 1;
end;

procedure TFrmPrincipal.EdtCaracteresEnter(Sender: TObject);
begin
  EdtCaracteres.Color := $00B9FFFF
end;



procedure TFrmPrincipal.EdtCaracteresExit(Sender: TObject);
begin
  if EdtCaracteres.Text = '' then
    begin
        MessageDlg('Voce nao digitou nenhum conteudo', mtError, [mbOK], 0);
        EdtCaracteres.SetFocus;
    end
  else
    if Length(EdtCaracteres.Text)<> 4 then
      begin
        MessageDlg('Voce nao digitou 4 caracteres', mtError, [mbOK], 0);
        EdtCaracteres.SetFocus;
        EdtCaracteres.SelectAll;
      end
      else
        EdtCaracteres.Color := clWindow;
end;


procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PnlTitulo.Caption := 'Mundando o caption do Panel com onShow!';
  PnlTitulo.Color := $00B9FFFF;
end;

procedure TFrmPrincipal.btnAdicionarClick(Sender: TObject);
begin
  if RGListaOpcoes.ItemIndex >= 0 then
  begin
    LstBxItensSelecionados.Items.add(RGListaOpcoes.Items[RGListaOpcoes.ItemIndex]);
    RGListaOpcoes.ItemIndex := -1;
  end
  else
    MessageDlg('Voce nao selecionou nenhum item', mtError, [mbOK], 0);
end;

end.
