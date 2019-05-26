SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc, lcImage
m.loFbc = CREATEOBJECT("FoxBarcode")

loFBC = CREATEOBJECT("FoxBarcode")
WITH loFBC
  .nBarCodeType = 159
  .cSet128 = "B"
  .nFactor = 2
  .nImageHeight = 220
  .nRotation = 3
  .lShowHumanReadableText = .T.
ENDWITH

*-- Generate image
m.lcImage = m.loFbc.BarcodeImage("123456")

*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
m.loForm.CAPTION = "FoxBarcode Example 2: Rotation"
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
