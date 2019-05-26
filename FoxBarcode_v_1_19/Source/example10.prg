SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc, lcImage
m.loFbc = CREATEOBJECT("FoxBarcode")

*-- Generate image
m.lcImage1 = m.loFbc.BarcodeImage("123456",,[nBarCodeType = 110, nFactor = 2, nRotation = 0])
m.lcImage2 = m.loFbc.BarcodeImage("123456",,[nBarCodeType = 110, nFactor = 2, nRotation = 3])

*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
m.loForm.CAPTION = "FoxBarcode Example 10: Normal and Rotate"
m.loForm.WIDTH = 400
m.loForm.HEIGHT = 400
m.loForm.AUTOCENTER = .T.
m.loForm.ADDOBJECT("Image1", "MyImage") && The MyImage class definition is below
m.loForm.ADDOBJECT("Image2", "MyImage") && The MyImage class definition is below
m.loForm.Image2.Left = 50
m.loForm.Image2.Top = 150
m.loForm.Image1.PICTURE = m.lcImage1
m.loForm.Image2.PICTURE = m.lcImage2
m.loForm.Image1.VISIBLE = .T.
m.loForm.Image2.VISIBLE = .T.
m.loForm.SHOW(1)
m.loForm = NULL
m.loFbc = NULL

RETURN

DEFINE CLASS MyImage AS IMAGE
  PROCEDURE DESTROY
    THIS.PICTURE = ""
  ENDPROC
ENDDEFINE
