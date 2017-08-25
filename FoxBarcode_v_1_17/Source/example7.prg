LOCAL lcObj, ln, loObj
SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc, lcImage
m.loFbc = CREATEOBJECT("FoxBarcode")

*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
m.loForm.CAPTION = "FoxBarcode Example 7: Different Sets for Code 128"
m.loForm.WIDTH = 800
m.loForm.HEIGHT = 400
m.loForm.AUTOCENTER = .T.
FOR ln = 0 TO 3
  m.lcSet = SUBSTR("*ABC",ln+1,1)
  * Image
  m.lcObj = "Image" + TRANSFORM(ln)
  m.loForm.ADDOBJECT(m.lcObj, "MyImage") && The MyImage class definition is below
  m.loObj = EVALUATE("m.loForm.Image" + TRANSFORM(ln))
  m.loObj.PICTURE = m.loFbc.BarcodeImage("AB12345678901234567890", "", [nBarcodeType=110, cSet128="] + m.lcSet + [", nFactor=2, nImageHeight=80])
  m.loObj.TOP = ln * 100
  m.loObj.VISIBLE = .T.
  * Label
  m.lcObj = "Label" + TRANSFORM(ln)
  m.loForm.ADDOBJECT(m.lcObj, "Label")
  m.loObj = EVALUATE("m.loForm.Label" + TRANSFORM(ln))
  m.loObj.CAPTION = "Set " + IIF(m.lcSet="*", "Auto", m.lcSet)
  m.loObj.FONTSIZE = 24
  m.loObj.LEFT = 600
  m.loObj.TOP = 20 + ln * 100
  m.loObj.AUTOSIZE = .T.
  m.loObj.VISIBLE = .T.
ENDFOR
m.loForm.SHOW(1)
m.loForm = NULL
m.loFbc = NULL

RETURN

DEFINE CLASS MyImage AS IMAGE
  PROCEDURE DESTROY
    THIS.PICTURE = ""
  ENDPROC
ENDDEFINE


