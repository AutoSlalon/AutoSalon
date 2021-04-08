unit Rabotnik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IBX.IBTable;

type
  Trab = class(TForm)
    GroupBox1: TGroupBox;
    ClearBtn: TButton;
    AddButton: TButton;
    Button3: TButton;
    Deletebtn: TButton;
    GroupBox2: TGroupBox;
    BeginningBtn: TButton;
    NextBtn: TButton;
    PrevBtn: TButton;
    LastBtn: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    IndexEdit: TEdit;
    NameEdit: TEdit;
    FamEdit: TEdit;
    Tel: TEdit;
    DoljnCB: TComboBox;
    Adr: TEdit;
    IBDatabase1: TIBDatabase;
    Transaction: TIBTransaction;
    Query: TIBQuery;
    DolQuery: TIBQuery;
    DolQueryID_DOLJ: TIntegerField;
    DolQueryNAMEDOLJ: TIBStringField;
    navquery: TIBQuery;
    procedure AddButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpdateData;
    procedure NextBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure BeginningBtnClick(Sender: TObject);
    procedure LastBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rab: Trab;
  id_dol,name_dol: TStringList;//����������� ������
implementation

{$R *.dfm}

procedure Trab.AddButtonClick(Sender: TObject);
//������ ���������� �������
begin
QUery.Active:=False;
Query.SQL.Clear();
Query.SQL.Clear;
Query.SQL.Add('insert into Rabotnic values');
Query.SQL.Add('(gen_id(gen_rab,1),'''+NameEdit.text+''','''+FamEdit.text+''','''+Tel.Text+''','''+Adr.text+''','''+id_dol[DoljnCB.ItemIndex]+''')');
Query.Open;
QUery.Active:=true;
Transaction.Commit();
end;

procedure Trab.BeginningBtnClick(Sender: TObject);
begin
if not NavQuery.Bof then
 NavQuery.First else
 messagedlg('���������� ������ �������',mtInformation,[mbOk],0);
 UpdateData;
end;

procedure Trab.ClearBtnClick(Sender: TObject);
begin
NavQuery.Last;
IndexEdit.Text:=NavQuery.FieldByName('Id_Rab').Value+ '1';
NameEdit.clear;
FamEdit.clear;
Tel.Clear;
Adr.clear;
end;

procedure Trab.FormCreate(Sender: TObject);
//���������� combobox �����������
begin
id_dol:=TStringList.Create;
name_dol:=TStringList.Create;
   while not DolQuery.eof do
    begin
     id_dol.Add(inttostr(DolQueryID_DOLJ.Value));//������� ���������
     name_dol.Add(DolQueryNAMEDOLJ.Value);//������������ ���������
     DolQuery.next;
   end;
   DoljnCB.Items.AddStrings(name_dol);
   UpdateData;
end;

procedure Trab.LastBtnClick(Sender: TObject);
begin
if not NavQuery.Eof then
 NavQuery.Last else
 messagedlg('�� ���������� �� ��������� ������',mtInformation,[mbOk],0);
 UpdateData;
end;

procedure Trab.NextBtnClick(Sender: TObject);
begin
if not NavQuery.Eof then
 NavQuery.Next else
 messagedlg('�� ���������� �� ��������� ������',mtInformation,[mbOk],0);
 UpdateData;
end;

procedure Trab.PrevBtnClick(Sender: TObject);
begin
if not NavQuery.Bof then
 NavQuery.Prior else
 messagedlg('�� ���������� �� ������ ������',mtInformation,[mbOk],0);
 UpdateData;
end;

procedure Trab.UpdateData;  //��������� ��� ���������� ������
begin
IndexEdit.Text:=navquery.Fields[0].Value;
NameEdit.Text:=navquery.Fields[1].Value;
FamEdit.Text:=navquery.Fields[2].Value;
tel.Text:=navquery.Fields[3].Value;
adr.Text:=navquery.Fields[4].Value;
DoljnCB.Text:=navquery.Fields[5].Value;

end;
end.
