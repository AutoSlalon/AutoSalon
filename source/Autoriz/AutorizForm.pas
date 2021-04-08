unit AutorizForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, Vcl.StdCtrls,
  IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
IBQuery1.sql.Add('select login,passward from autoriz where (login=:login) and (passward=:passward)');
//SQL ��� ������� ������ � ������ �� ��
IBQuery1.Params.ParamByName('login').Value:=edit1.Text;
//�������� edit1 �������������� � ���� ����� �� ��
IBQuery1.Params.ParamByName('passward').Value:=edit2.Text;
// �������� edit2 �������������� � ���� ������ �� ��
IBQuery1.execSQL; //��������� ���� SQL
IBQuery1.Open;
IBTransaction1.Commit();
if IBQuery1.FieldByName('login').AsString<>'' then //�������� �� ����� � ������
begin
  showmessage('�������'); //����� ��������� �� �������� �����������

end
else
 showmessage('�������� ������ ��� �����');
 //����� ��������� � �������� ������ ��� ������
end;

end.
