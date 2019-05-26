SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc, lcImage, lcBarCode
m.loFbc = CREATEOBJECT("FoxBarcode")

*-- Set properties
m.loFbc.nBarcodeType = 132 && Interleaved 2 of 5
m.loFbc.nFactor = 2
m.loFbc.cImageType = "BMP"
m.loFbc.nImageWidth = 900
m.loFbc.nResolution = 600
m.loFbc.nRatio = 2
 
* Cadena a codificar
* 3055683658911000265199412001908201505176
* el digito de control "6" lo añade automáticamente Foxbarcode
m.lcBarCode = "305568365891100026519941200190820150517" && si el digito de control "6"
* cambiar la carpeta de la imagen si UAC esta habilitado
* alli se guardara la imagen BMP para que pruebes 
m.lcImage = m.loFbc.BarcodeImage(m.lcBarCode, "C:\i2of5.bmp") 

*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
m.loForm.CAPTION = "FoxBarcode - Interleaved 2 of 5"
m.loForm.WIDTH = 900
m.loForm.HEIGHT = 400
m.loForm.AUTOCENTER = .T.
m.loForm.ADDOBJECT("Image1", "MiImagen") && La definición de la clase MiImagen esta mas abajo
m.loForm.Image1.PICTURE = lcImage
m.loForm.Image1.VISIBLE = .T.
m.loForm.SHOW(1)
m.loForm = NULL
m.loFbc = NULL

RETURN

DEFINE CLASS MiImagen AS IMAGE
  PROCEDURE DESTROY
    THIS.PICTURE = ""
  ENDPROC
ENDDEFINE


