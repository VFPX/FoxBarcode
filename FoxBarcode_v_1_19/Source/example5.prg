LOCAL lcObj, ln, loObj
SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc, lcImage
m.loFbc = CREATEOBJECT("FoxBarcode")

*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
m.loForm.CAPTION = "FoxBarcode Example 5: nImageWidth and nAlignBarcode properties"
m.loForm.WIDTH = 800
m.loForm.HEIGHT = 400
m.loForm.AUTOCENTER = .T.
FOR ln = 0 TO 2
  m.lcObj = "Image" + TRANSFORM(ln)
  m.loForm.ADDOBJECT(m.lcObj, "MyImage") && The MyImage class definition is below
  m.loObj = EVALUATE("m.loForm.Image" + TRANSFORM(ln))
  m.loObj.PICTURE = m.loFbc.BarcodeImage("", "", [nBarcodeType=110, cText="nAlignBarcode=] + TRANSFORM(ln) + [", nFactor=2, nImageWidth=700,nAlignBarcode=] + TRANSFORM(ln) + [,nBackColor=65535])
  m.loObj.TOP = ln * 120
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


