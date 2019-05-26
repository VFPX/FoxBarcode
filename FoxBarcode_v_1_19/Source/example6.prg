SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc, lcImage
m.loFbc = CREATEOBJECT("FoxBarcode")

*-- Set the properties
WITH loFbc
         .cImageType = "BMP"
          .nBarcodeType = 132 && Interleaved 2 of 5
          .nImageWidth = 200          
          .nFactor = 2
ENDWITH

_CLIPTEXT = m.loFbc.cTempPath
*-- Generate image
m.lcImage = m.loFbc.BarcodeImage("1234567890")

? m.lcImage


*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
m.loForm.CAPTION = "FoxBarcode Example 6: TempFiles folder"
m.loForm.WIDTH = 800
m.loForm.HEIGHT = 400
m.loForm.AUTOCENTER = .T.
m.loForm.ADDOBJECT("Label1", "MyLabel")
m.loForm.Label1.CAPTION = "The temporary folder name is:"  + ;
  CHR(13) + m.loFbc.cTempPath + ;
  CHR(13) + "and is copied to the clipboard."
m.loForm.Label1.VISIBLE = .T.

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

DEFINE CLASS MyLabel AS LABEL

  BACKSTYLE = 0
  HEIGHT = 100
  WIDTH = 800
  TOP = 120
  FONTSIZE = 14
  WORDWRAP = .T.
  FORECOLOR = RGB(255, 0, 0)

ENDDEFINE

