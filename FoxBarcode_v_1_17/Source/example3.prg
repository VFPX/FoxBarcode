SET PROCEDURE TO LOCFILE("Source\FoxBarcode.prg"), LOCFILE("Source\gpImage2.prg") ADDITIVE

*--- Create FoxBarcode Object
LOCAL loFbc
m.loFbc = CREATEOBJECT("FoxBarcode")

*-- Generate a test (Ej: EAN-8 -> nBarcodeType = 150)
IF m.loFbc.BarcodeTest("123456", "", [nBarcodeType = 150])
  MESSAGEBOX(["] + loFbc.cText + ["] + " Ok", 64, "FoxBarcode Example 3: BarcodeTest()")
ELSE
  MESSAGEBOX(m.loFbc.cMsgError, 16, "FoxBarcode Example 3: BarcodeTest() method")
ENDIF

RETURN
