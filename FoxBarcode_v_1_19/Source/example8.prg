SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc, lcImage
m.loFbc = CREATEOBJECT("FoxBarcode")

LOCAL lnMethod
m.lnMethod = 0

IF m.lnMethod = 1
  *----------------------
  *-- Method 1
  *----------------------
  *-- Set properties
  m.loFbc.nBarcodeType = 159 && GS1-128
  m.loFbc.nFactor = 2
  m.loFbc.nImageWidth = 700
  m.lcImage = m.loFbc.BarcodeImage("(01)01234567890128(15)101231(10)123X")
ELSE
  *----------------------
  *-- Method 2
  *----------------------
  *-- Generate the image with the 3rd parameter
  m.lcImage = m.loFbc.BarcodeImage("","",[nBarcodeType=159, cText="(01)01234567890128(15)101231(10)123X", nFactor=2, nMaxImageWidth=700])
ENDIF


*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
m.loForm.CAPTION = "FoxBarcode Example 1: Use 3rd parameter"
m.loForm.WIDTH = 800
m.loForm.HEIGHT = 400
m.loForm.AUTOCENTER = .T.
m.loForm.ADDOBJECT("Image1", "MyImage") && The MyImage class definition is below
m.loForm.Image1.PICTURE = lcImage
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


