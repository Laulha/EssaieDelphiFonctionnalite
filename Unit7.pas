unit Unit7;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.StdCtrls, FMX.Layouts,
  FMX.Ani;

type
  TForm7 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Edit2: TEdit;
    Edit1: TEdit;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    Layout1: TLayout;
    Layout2: TLayout;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    Line1: TLine;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form7: TForm7;

implementation

{$R *.fmx}

end.
