unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Effects, FMX.Objects;

type
  TFrame6 = class(TFrame)
    Lb: TLabel;
    ret: TRectangle;
    procedure retMouseEnter(Sender: TObject);
    procedure retMouseLeave(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

implementation
var effet : TShadowEffect;

{$R *.fmx}

procedure TFrame6.retMouseEnter(Sender: TObject);

begin
  effet := TShadowEffect.Create(self);
  effet.Parent := ret;


  with effet do
    begin
    Distance := 2.000000000000000000;
    Direction := 45.000000000000000000;
    Softness := 0.300000002980232200;
    Opacity := 0.600000023841857900;
    ShadowColor := $FF080707;
    end;
lb.TextSettings.FontColor := $FFF8F8F8;
ret.Fill.Color := $FF4F25D4;
end;

procedure TFrame6.retMouseLeave(Sender: TObject);
begin
ret.Fill.Color := $F3E6E9F5;
effet.Destroy;
lb.TextSettings.FontColor := $FF6D6F77;
end;

end.
