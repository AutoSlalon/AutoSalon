unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Image1: TImage;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}
//procedure Auotoriz(AOwner:TComponent); external 'AutoDll.dll';
procedure ShowPokup(AOwner:TComponent); external 'Customers.dll';
procedure AutoCar(AOwner:TComponent); external 'Car.dll';
procedure ShowPost(AOwner:TComponent); external 'Postavka.dll';
procedure ShowDog(AOwner:TComponent); external 'Dogovor.dll';
procedure ShowRab(AOwner:TComponent); external 'Rabotnic.dll';


procedure TFrmMain.N10Click(Sender: TObject);
begin
ShowPokup(Self);
end;

procedure TFrmMain.N11Click(Sender: TObject);
begin
ShowDog(Self);
end;

procedure TFrmMain.N14Click(Sender: TObject);
begin
 AutoCar(Self);
end;

procedure TFrmMain.N15Click(Sender: TObject);
begin
ShowRab(Self);
end;

procedure TFrmMain.N16Click(Sender: TObject);
begin
ShowPost(Self);
end;

procedure TFrmMain.N6Click(Sender: TObject);
begin
//Auotoriz(self);
end;

procedure TFrmMain.N8Click(Sender: TObject);
begin
FrmMain.Close;
end;

end.
