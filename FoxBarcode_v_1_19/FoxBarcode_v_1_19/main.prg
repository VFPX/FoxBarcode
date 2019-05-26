*--------------------------------------------------------------------------------------
* MAIN.PRG
*--------------------------------------------------------------------------------------
* Version: 1.19
* Date   : 2019.05.21
* Author : VFPEncoding
* Email  : vfpencoding@gmail.com
*
* Note   : VFPEncoding are 
*          Guillermo Carrero (Barcelona, Spain) and 
*          Luis Maria Guayan (Tucuman, Argentina)
*--------------------------------------------------------------------------------------
LOCAL lcPath

m.lcPath = ADDBS(JUSTPATH(SYS(16,1)))

SET DEFAULT TO (m.lcPath)
SET PROCEDURE TO Source\FoxBarcode, Source\gpImage2 ADDITIVE
DO FORM ("Forms\FoxBarcode")
READ EVENTS

CLEAR RESOURCES

*--------------------------------------------------------------------------------------