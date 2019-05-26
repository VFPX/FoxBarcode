SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc, lcImage
m.loFbc = CREATEOBJECT("FoxBarcode")

*-- Set the properties
WITH loFbc
  .cImageType = "PNG"
  .nBarcodeType = 182 && KIX Code
  .nFactor = 3
  .nImageHeight = 100
  .nMargin = 10
  .lShowHumanReadableText = .T.
ENDWITH

*-- Generate image
m.lcImage = m.loFbc.BarcodeImage("1234AB56XC")

*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
m.loForm.CAPTION = "FoxBarcode Example 4: KIX Code"
m.loForm.WIDTH = 800
m.loForm.HEIGHT = 400
m.loForm.AUTOCENTER = .T.
m.loForm.ADDOBJECT("Image1", "MyImage") && The MyImage class definition is below
m.loForm.Image1.PICTURE = m.lcImage
m.loForm.Image1.VISIBLE = .T.
m.loForm.SHOW(1)
m.loForm = NULL
m.loFbc = NULL

RETURN

DEFINE CLASS MyImage AS IMAGE
  PROCEDURE DESTROY
    THIS.PICTURE = ""
  ENDPROC
ENDDEFINE
