unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Unit4, Unit5,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Effects,
  FMX.Ani;

type
  TForm3 = class(TForm)
    Frame51: TFrame5;
    VertScrollBox1: TVertScrollBox;
    Frame41: TFrame4;
    Button1: TButton;
    Lay: TLayout;
    re: TRectangle;
    ShadowEffect3: TShadowEffect;
    re1: TRectangle;
    ShadowEffect1: TShadowEffect;
    btn: TButton;
    R: TRectangle;
    re2: TRectangle;
    ShadowEffect2: TShadowEffect;
    Button2: TButton;
    la1: TLabel;
    La: TLabel;
    La2: TLabel;
    valeur: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure reMouseEnter(Sender: TObject);
    procedure re1MouseEnter(Sender: TObject);
    procedure reMouseLeave(Sender: TObject);
    procedure re1MouseLeave(Sender: TObject);
    procedure re2MouseEnter(Sender: TObject);
    procedure re2MouseLeave(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;
  procedure creerElement(element : TRectangle; effet : TShadowEffect);

implementation

{$R *.fmx}

uses Unit8, Unit1, Unit2, Unit6, Unit7, Unit9;

procedure TForm3.Button1Click(Sender: TObject);
var rect : TRectangle;
    effect : TShadowEffect;


begin

  creerElement(rect, effect);


end;


procedure creerElement(element : TRectangle; effet : TShadowEffect);

  begin
  element := TRectangle.Create(Form3);
  element.Parent := Form3.Lay;
  effet := TShadowEffect.Create(Form3);
  effet.Parent := element;


  with effet do
    begin
    Distance := 2.000000000000000000;
    Direction := 45.000000000000000000;
    Softness := 0.200000002980232200;
    Opacity := 0.600000023841857900;
    ShadowColor := $FF080707;
    end;

  with element do
    begin
      Fill.Color := $FF4F25D4;
      Position.Y := 155.000000000000000000;
      Position.X := 8.000000000000000000;
      Size.Width := 193.000000000000000000;
      Size.Height := 41.000000000000000000;
      Stroke.Thickness := 0.000000000000000000;
      XRadius := 3.000000000000000000;
      YRadius := 3.000000000000000000;
    end;

  end;


procedure TForm3.Button2Click(Sender: TObject);
   var i : integer;
   labl : array[0..2] of TLabel;
   nom : array[0..2] of string;

begin


      nom[0] := 'Mott';
      nom[1] := 'Laulha';
      nom[2] := 'Mossou';


//       with lay do
//        for i := 0 to 2 do
//          begin
//            with Controls[i] do
//              begin
//                labl[i] := Controls[0] as TLabel;
//              end;
//
//            labl[i].Text := nom[i];
//          end;

          for i := 0 to 2 do
          begin
             if (lay.Controls[i].Controls[0] is TLabel) then
                labl[i] := lay.Controls[i].Controls[0] as TLabel;
             labl[i].Text := nom[i];
          end;








end;



procedure TForm3.Button3Click(Sender: TObject);
begin
  with dm.FDQuery1 do
    begin
      Close;
      SQL.Add('select nomFemme from FEMME WHERE idFemme = 2');
      open;
    end;

    dm.FDQuery1.First;
    while not dm.FDQuery1.Eof do
      begin
        valeur.Text := dm.FDQuery1.FieldByName('nomFemme').AsString;
        dm.FDQuery1.Next;
      end;
end;

procedure TForm3.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Single);
begin

  R.Fill.Color := $FF4F25D4;
end;

procedure TForm3.re1MouseEnter(Sender: TObject);
begin
re1.Fill.Color := $FF4F25D4;
end;

procedure TForm3.re1MouseLeave(Sender: TObject);
begin
re1.Fill.Color := $F3FCFCFC;
end;

procedure TForm3.re2MouseEnter(Sender: TObject);
begin
    re2.Fill.Color := $FF4F25D4;
end;

procedure TForm3.re2MouseLeave(Sender: TObject);
begin
   re2.Fill.Color := $F3FCFCFC;
end;

procedure TForm3.reMouseEnter(Sender: TObject);

begin

re.Fill.Color := $FF4F25D4;

end;

procedure TForm3.reMouseLeave(Sender: TObject);
begin
re.Fill.Color := $F3FCFCFC;

end;

end.
