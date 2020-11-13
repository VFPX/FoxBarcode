*--------------------------------------------------------------------------------------
* FoxBarcode.prg
*--------------------------------------------------------------------------------------
* FoxBarcode is a application free software and offers a Barcode tool for
* the Visual FoxPro Community.
* This software is provided "as is" without express or implied warranty.
* Use it at your own risk
*--------------------------------------------------------------------------------------
* Version: 1.19
* Date   : 2019.05.21
* Author : VFPEncoding
* Email  : vfpencoding@gmail.com
*
* Note   : VFPEncoding are
*          Guillermo Carrero (Barcelona, Spain) and
*          Luis Maria Guayan (Tucuman, Argentina)
*
* Note   : This application use GPIMAGE2 (http://sites.google.com/site/gpimage2)
*          of Alexander Golovlev (Russian Federation) and Cesar Chalom (Brazil)
*--------------------------------------------------------------------------------------

*--------------------------------------------------------------------------------------
* FoxBarcode Language
* To add or correct a language send an email to: vfpencoding@gmail.com
*--------------------------------------------------------------------------------------
*--------------------------------
* AVAILABLE LANGUAGE
* Uncomment your choice
* Language by default: "ENGLISH"
*--------------------------------
#DEFINE FBC_LANGUAGE "ENGLISH"
* #DEFINE FBC_LANGUAGE "SPANISH"
* #DEFINE FBC_LANGUAGE "CZECH"
* #DEFINE FBC_LANGUAGE "DUTCH"
* #DEFINE FBC_LANGUAGE "PORTUGUESE"
* #DEFINE FBC_LANGUAGE "TURKISH"
* #DEFINE FBC_LANGUAGE "INDONESIAN"
* #DEFINE FBC_LANGUAGE "GERMAN"
* #DEFINE FBC_LANGUAGE "FILIPINO"
* #DEFINE FBC_LANGUAGE "FRENCH"
* #DEFINE FBC_LANGUAGE "SERBIAN"
* #DEFINE FBC_LANGUAGE "ITALIAN"
* #DEFINE FBC_LANGUAGE "ROMANIAN"

#IF FBC_LANGUAGE = "SPANISH"
  *--------------------------------
  * SPANISH LANGUAGE
  * Translate by VFPEncoding
  *--------------------------------
  #DEFINE FBC_FBC_01    "Fuente o estilo no permitido por GDI+"
  #DEFINE FBC_FBC_02    "Simbología de código de barras no implementada."
  #DEFINE FBC_FBC_03    "El texto a codificar está en blanco."
  #DEFINE FBC_I2O5_01    "El código Interleaved 2 of 5 solo acepta caracteres numéricos."
  #DEFINE FBC_S2O5_01    "El código Standard 2 of 5 solo acepta caracteres numéricos."
  #DEFINE FBC_CODABAR_01  "El código Codabar solo acepta los siguientes caracteres: 0123456789-$:/.+"
  #DEFINE FBC_128A_01    "Caracteres inválidos para el Código 128 Set A."
  #DEFINE FBC_128B_01    "Caracteres inválidos para el Código 128 Set B."
  #DEFINE FBC_128C_01    "El Código 128 Set C solo acepta caracteres numéricos."
  #DEFINE FBC_39EXT_01    "Caracteres inválidos para el Código 39 Full ASCII."
  #DEFINE FBC_39_01      "Caracteres inválidos para el Código Code 39."
  #DEFINE FBC_93EXT_01    "Caracteres inválidos para el Código 93 Full ASCII."
  #DEFINE FBC_93_01      "Caracteres inválidos para el Código 93."
  #DEFINE FBC_ITF14_01    "El código ITF-14 solo acepta caracteres numéricos."
  #DEFINE FBC_ITF14_02    "ITF-14: El largo de la cadena debe ser 13 ó 14."
  #DEFINE FBC_ITF14_03    "ITF-14: El dígito de verificación correcto es "
  #DEFINE FBC_EAN13_01    "El código EAN-13 solo acepta caracteres numéricos."
  #DEFINE FBC_EAN13_02    "EAN13: El largo de la cadena debe ser 12 ó 13. Con suplemento entre 14 y 18."
  #DEFINE FBC_EAN13_03    "EAN-13: El dígito de verificación correcto es "
  #DEFINE FBC_EAN8_01    "El código EAN-8 solo acepta caracteres numéricos"
  #DEFINE FBC_EAN8_02    "EAN-8: El largo de la cadena debe ser 7 ú 8. Con suplemento entre 9 y 13."
  #DEFINE FBC_EAN8_03    "EAN-8:  El dígito de verificación correcto es "
  #DEFINE FBC_UPCA_01    "El código UPC-A solo acepta caracteres numéricos"
  #DEFINE FBC_UPCA_02    "UPC-A: El largo de la cadena debe ser 11 ó 12. Con suplemento entre 13 y 17."
  #DEFINE FBC_UPCA_03    "UPC-A: El dígito de verificación correcto es "
  #DEFINE FBC_UPCB_01    "El código UPC-E solo acepta caracteres numéricos"
  #DEFINE FBC_UPCB_02    "UPC-E: El largo de la cadena debe ser 6 ó 7. Con suplemento entre 8 y 12."
  #DEFINE FBC_UPCB_03    "UPC-E: El dígito de verificación correcto es "
  #DEFINE FBC_MSI_01    "El código  MSI/Plessey solo acepta caracteres numéricos"
  #DEFINE FBC_11_01      "El Código 11 solo acepta caracteres numéricos y - (guión)"
  #DEFINE FBC_POSTNET_01  "El código PostNet solo acepta caracteres numéricos"
  #DEFINE FBC_POSTNET_02  "PostNet: El largo de la cadena debe ser 5, 9 ú 11"
  #DEFINE FBC_IMB_01    "El código Intelligent Mail Barcode solo acepta caracteres numéricos"
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode: El largo de la cadena debe ser 5, 9 ú 11"
  #DEFINE FBC_IMB_99    "El código Intelligent Mail Barcode muy pronto ..."
  #DEFINE FBC_TELEPEN_01  "Caracter inválido para el código Telepen"
  #DEFINE FBC_PHARMA1_01  "El código Pharmacode solo acepta caracteres numéricos"
  #DEFINE FBC_PHARMA1_02  "El código Pharmacode acepta valores entre 3 y 131070"
  #DEFINE FBC_PHARMA1_03  "El código Pharmacode solo acepta caracteres numéricos"
  #DEFINE FBC_PHARMA2_01  "El código Two Track Pharmacode acepta valores entre 4 y 64570080"
  #DEFINE FBC_SUPP5_01    "El código Supplemental 5 solo acepta caracteres numéricos"
  #DEFINE FBC_SUPP2_01    "El código Supplemental 2 solo acepta caracteres numéricos"
  #DEFINE FBC_EAN128_01    "Caracter inválido para el Código EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Caracteres inválidos para el Código RM4SCC"
  #DEFINE FBC_KIX_01    "Caracteres inválidos para el Código KIX"


#ELIF FBC_LANGUAGE = "CZECH"
  *--------------------------------
  * CZECH LANGUAGE
  * Translate by Martin Krivka
  *--------------------------------
  #DEFINE FBC_FBC_01    "Font nebo styl není dostupný v GDI+"
  #DEFINE FBC_FBC_02    "Symboly èárového kódu nejsou implementovány."
  #DEFINE FBC_FBC_03    "Text je prázdný."
  #DEFINE FBC_I2O5_01    "Interleaved 2 of 5 code podporuje pouze numerické znaky."
  #DEFINE FBC_S2O5_01    "Standard 2 of 5 code podporuje pouze numerické znaky."
  #DEFINE FBC_CODABAR_01  "Codabar podporuje pouze znaky: 0123456789-$:/.+"
  #DEFINE FBC_128A_01    "Neplatné znaky pro Code 128 Set A."
  #DEFINE FBC_128B_01    "Neplatné znaky pro Code 128 Set B."
  #DEFINE FBC_128C_01    "Code 128 Set C podporuje pouze numerické znaky."
  #DEFINE FBC_39EXT_01    "Neplatné znaky pro Code 39 Full ASCII."
  #DEFINE FBC_39_01      "Neplatné znaky pro Code 39."
  #DEFINE FBC_93EXT_01    "Neplatné znaky pro Code 93 Full ASCII."
  #DEFINE FBC_93_01      "Neplatné znaky pro Code 93."
  #DEFINE FBC_ITF14_01    "ITF-14: podporuje pouze numerické znaky."
  #DEFINE FBC_ITF14_02    "ITF-14: délka øetìzce musí být 13 nebo 14 znakù."
  #DEFINE FBC_ITF14_03    "ITF-14: správné kontrolní èíslo je "
  #DEFINE FBC_EAN13_01    "EAN-13 podporuje pouze numerické znaky."
  #DEFINE FBC_EAN13_02    "Délka øetìzce musí být 12 nebo 13 znakù. S pøíplatkem mezi 14 až 18."
  #DEFINE FBC_EAN13_03    "EAN-13: správné kontrolní èíslo je "
  #DEFINE FBC_EAN8_01    "The EAN-8 podporuje pouze numerické znaky."
  #DEFINE FBC_EAN8_02    "EAN-8: délka øetìzce musí být 7 nebo 8 znakù. S pøíplatkem mezi 9 až 13."
  #DEFINE FBC_EAN8_03    "EAN-8: správné kontrolní èíslo je "
  #DEFINE FBC_UPCA_01    "UPC-A: podporuje pouze numerické znaky."
  #DEFINE FBC_UPCA_02    "UPC-A: délka øetìzce musí být 11 nebo 12 znakù. S pøíplatkem mezi 13 až 17."
  #DEFINE FBC_UPCA_03    "UPC-A: správné kontrolní èíslo je "
  #DEFINE FBC_UPCB_01    "UPC-E: podporuje pouze numerické znaky."
  #DEFINE FBC_UPCB_02    "UPC-E: délka øetìzce musí být 6 nebo 7 znakù. S pøíplatkem mezi 8 až 12."
  #DEFINE FBC_UPCB_03    "UPC-E: správné kontrolní èíslo je "
  #DEFINE FBC_MSI_01    "MSI/Plessey podporuje pouze numerické znaky."
  #DEFINE FBC_11_01      "Code 11 podporuje pouze numerické znaky a - (minus)."
  #DEFINE FBC_POSTNET_01  "PostNet podporuje pouze numerické znaky."
  #DEFINE FBC_POSTNET_02  "PostNet: délka øetìzce musí být 5,9,11"
  #DEFINE FBC_IMB_01    "Intelligent Mail Barcode podporuje pouze numerické znaky."
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode: délka øetìzce musí být 5, 9, 11."
  #DEFINE FBC_IMB_99    "Intelligent Mail Barcode brzdy ..."
  #DEFINE FBC_TELEPEN_01  "Neplatný znak pro Telepen code."
  #DEFINE FBC_PHARMA1_01  "Pharmacode podporuje pouze numerické znaky."
  #DEFINE FBC_PHARMA1_02  "Pharmacode: vstupní hodnoty mezi 3 a 131070."
  #DEFINE FBC_PHARMA1_03  "Pharmacode podporuje pouze numerické znaky."
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: vstupní hodnoty mezi 4 až 64570080."
  #DEFINE FBC_SUPP5_01    "Supplemental 5 code podporuje pouze numerické znaky."
  #DEFINE FBC_SUPP2_01    "Supplemental 2 code podporuje pouze numerické znaky."
  #DEFINE FBC_EAN128_01    "Neplatné znaky pro EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Neplatné znaky pro Code RM4SCC."
  #DEFINE FBC_KIX_01    "Neplatné znaky pro KIX-Code."

#ELIF FBC_LANGUAGE = "DUTCH"
  *--------------------------------
  * DUTCH LANGUAGE
  * Translate by Koen Piller
  *--------------------------------
  #DEFINE FBC_11_01        "Code 11 is slechts voor cijfers en liggend streepje"
  #DEFINE FBC_128A_01    "Niet toegestane tekens voor Code 128 Set A"
  #DEFINE FBC_128B_01    "Niet toegestane tekens voor Cose 128 Set B"
  #DEFINE FBC_128C_01    "Code 128 is slechts voor cijfers"
  #DEFINE FBC_39_01         "Niet toegestane tekens voor Code 39"
  #DEFINE FBC_39EXT_01    "Niet toegestane tekens voor Code 39 Full ASCII"
  #DEFINE FBC_93_01      "Niet toegestane tekens voor Code 93"
  #DEFINE FBC_93EXT_01    "Niet toegestane tekens voor Code 39 Full ASCII"
  #DEFINE FBC_CODABAR_01  "Voor Codabar zijn slechts de volgende tekens toegestaan:  0123456789-$:/.+"
  #DEFINE FBC_EAN128_01    "Niet toegestane tekens voor EAN/UCC?GS 128"
  #DEFINE FBC_EAN13_01    "De EAN-13 code is slechts voor cijfers."
  #DEFINE FBC_EAN13_02    "De lengte van de reeks moet 12 of 13 zijn. Met een toevoeging van 14 en 18"
  #DEFINE FBC_EAN13_03    "EAN-13: Het juiste teken is "
  #DEFINE FBC_EAN8_01    "The EAN-8 code is slechts voor cijfers"
  #DEFINE FBC_EAN8_02    "EAN-8: De lengte van de tekenreeks moet 7 of 8 zijn. Met een toevoeging tussen 9 en 13"
  #DEFINE FBC_EAN8_03    "EAN-8: Het juiste teken is "
  #DEFINE FBC_FBC_01    "Lettertype of -opmaak is niet toegestaan in GDI+"
  #DEFINE FBC_FBC_02    "Barcode symbolen werden niet geimplementeerd"
  #DEFINE FBC_FBC_03    "De te coderen tekst is niet gegeven."
  #DEFINE FBC_I2O5_01    "Interleaved 2 van 5 (ook wel Ik heb 2 van 5)  is slechts voor cijfers"
  #DEFINE FBC_IMB_01    "De Intelligent Mail Barcode  is slechts voor cijfers."
  #DEFINE FBC_IMB_02    "De Intelligent Mail Barcode: De lengte van de tekenreeks moet 5, 9 of 11 zijn."
  #DEFINE FBC_IMB_99    "Intelligent Mail Barcode  binnenkort....."
  #DEFINE FBC_ITF14_01    "The ITF-14 code is slechts voor cijfers"
  #DEFINE FBC_ITF14_02    "ITF-14: De lengte van de tekenreeks moet 13 of 14 zijn"
  #DEFINE FBC_ITF14_03    "ITF-14: Het controle getal moet zijn"
  #DEFINE FBC_MSI_01    "The MSI/Plessey code is slechts voor cijfers"
  #DEFINE FBC_PHARMA1_01  "The Pharmacode is slechts voor cijfers"
  #DEFINE FBC_PHARMA1_02  "Pharmacode: waarde moet in de reeks 13 t/m 131070 zijn"
  #DEFINE FBC_PHARMA1_03  "The Pharmacode is slechts voor cijfers"
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: Waarde moet liggen tussen 4 en 64570080."
  #DEFINE FBC_POSTNET_01  "The PostNet is slechts voor cijfers"
  #DEFINE FBC_POSTNET_02  "PostNet: De lengte van de tekenreeks moet 5, 9 of 11 zijn"
  #DEFINE FBC_S2O5_01    "The Standard 2 of 5 code is slechts voor cijfers"
  #DEFINE FBC_SUPP2_01    "The Supplemental 2 code is slechts voor cijfers"
  #DEFINE FBC_SUPP5_01    "The Supplemental 5 is slechts voor cijfers"
  #DEFINE FBC_TELEPEN_01  "Ongeldig teken voor Telepen code."
  #DEFINE FBC_UPCA_01    "The UPC-A code is slechts voor cijfers."
  #DEFINE FBC_UPCA_02    "UPC-A: De tekenreeks is 11 of 12 lang. Het toevoegsel tussen 13 en 17 lang."
  #DEFINE FBC_UPCA_03    "UPC-A: Het juiste controle getal is "
  #DEFINE FBC_UPCB_01    "The UPC-E code is slechts voor cijfers"
  #DEFINE FBC_UPCB_02    "UPC-E: De tekenreeks moet 6 of 7 lang zijn. Het toevoegsel tussen 8 en 12 lang."
  #DEFINE FBC_UPCB_03    "UPC-E:Het juiste controle getal is "
  #DEFINE FBC_RM4SCC_01    "Niet toegestane tekens voor Code RM4SCC"
  #DEFINE FBC_KIX_01    "Niet toegestane tekens voor KIX-Code"


#ELIF FBC_LANGUAGE = "PORTUGUESE"
  *--------------------------------
  * PORTUGUESE LANGUAGE
  * Translate by Cesar Chalom
  *--------------------------------
  #DEFINE FBC_FBC_01    "Fonte ou estilo não permitido pela biblioteca GDI+"
  #DEFINE FBC_FBC_02    "Simbología de código de barras não implementada."
  #DEFINE FBC_FBC_03    "O texto a codificar está vazio."
  #DEFINE FBC_I2O5_01    "O código Interleaved 2 of 5 somente aceita caracteres numéricos."
  #DEFINE FBC_S2O5_01    "O código Standard 2 of 5 somente aceita caracteres numéricos."
  #DEFINE FBC_CODABAR_01  "O código Codabar somente aceita os seguintes caracteres: 0123456789-$:/.+"
  #DEFINE FBC_128A_01    "Caracteres inválidos para o Código 128 Set A."
  #DEFINE FBC_128B_01    "Caracteres inválidos para o Código 128 Set B."
  #DEFINE FBC_128C_01    "O Código 128 Set C somente aceita caracteres numéricos."
  #DEFINE FBC_39EXT_01    "Caracteres inválidos para o Código 39 Full ASCII."
  #DEFINE FBC_39_01      "Caracteres inválidos para o Código Code 39."
  #DEFINE FBC_93EXT_01    "Caracteres inválidos para o Código 93 Full ASCII."
  #DEFINE FBC_93_01      "Caracteres inválidos para o Código 93."
  #DEFINE FBC_ITF14_01    "O código ITF-14 somente aceita caracteres numéricos."
  #DEFINE FBC_ITF14_02    "ITF-14: O tamanho da cadeia deve ser 13 ou 14."
  #DEFINE FBC_ITF14_03    "ITF-14: O dígito de verificação correto é "
  #DEFINE FBC_EAN13_01    "O código EAN-13 somente aceita caracteres numéricos."
  #DEFINE FBC_EAN13_02    "EAN13: O tamanho da cadeia deve ser 12 ou 13. Com suplemento entre 14 e 18."
  #DEFINE FBC_EAN13_03    "EAN-13: O dígito de verificação correto é "
  #DEFINE FBC_EAN8_01    "O código EAN-8 somente aceita caracteres numéricos"
  #DEFINE FBC_EAN8_02    "EAN-8: O tamanho da cadeia deve ser 7 ou 8. Com suplemento entre 9 e 13."
  #DEFINE FBC_EAN8_03    "EAN-8:  O dígito de verificação correto é "
  #DEFINE FBC_UPCA_01    "O código UPC-A somente aceita caracteres numéricos"
  #DEFINE FBC_UPCA_02    "UPC-A: O tamanho da cadeia deve ser 11 ou 12. Com suplemento entre 13 e 17."
  #DEFINE FBC_UPCA_03    "UPC-A: O dígito de verificação correto é "
  #DEFINE FBC_UPCB_01    "O código UPC-E somente aceita caracteres numéricos"
  #DEFINE FBC_UPCB_02    "UPC-E: O tamanho da cadeia deve ser 6 ou 7. Com suplemento entre 8 e 12."
  #DEFINE FBC_UPCB_03    "UPC-E: O dígito de verificação correto é "
  #DEFINE FBC_MSI_01    "O código  MSI/Plessey somente aceita caracteres numéricos"
  #DEFINE FBC_11_01      "O Código 11 somente aceita caracteres numéricos e - (guión)"
  #DEFINE FBC_POSTNET_01  "O código PostNet somente aceita caracteres numéricos"
  #DEFINE FBC_POSTNET_02  "PostNet: O tamanho da cadeia deve ser 5, 9 ou 11"
  #DEFINE FBC_IMB_01    "O código Intelligent Mail Barcode somente aceita caracteres numéricos"
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode: O tamanho da cadeia deve ser 5, 9 ou 11"
  #DEFINE FBC_IMB_99    "O código Intelligent Mail Barcode muy pronto ..."
  #DEFINE FBC_TELEPEN_01  "Caracter inválido para o código Telepen"
  #DEFINE FBC_PHARMA1_01  "O código Pharmacode somente aceita caracteres numéricos"
  #DEFINE FBC_PHARMA1_02  "O código Pharmacode aceita valores entre 3 e 131070"
  #DEFINE FBC_PHARMA1_03  "O código Pharmacode somente aceita caracteres numéricos"
  #DEFINE FBC_PHARMA2_01  "O código Two Track Pharmacode aceita valores entre 4 e 64570080"
  #DEFINE FBC_SUPP5_01    "O código Supplemental 5 somente aceita caracteres numéricos"
  #DEFINE FBC_SUPP2_01    "O código Supplemental 2 somente aceita caracteres numéricos"
  #DEFINE FBC_EAN128_01    "Caracter inválido para o Código EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Caracteres inválidos para o Código RM4SCC."
  #DEFINE FBC_KIX_01    "Caracteres inválidos para o KIX-Code."

#ELIF FBC_LANGUAGE = "TURKISH"
  *--------------------------------
  * TURKISH LANGUAGE
  * Translate by Ugur Yilmaz
  *--------------------------------
  #DEFINE FBC_FBC_01    "Font yada font stili GD+ da desteklenmiyor."
  #DEFINE FBC_FBC_02    "Barkod alfabesine uygulanamadý."
  #DEFINE FBC_FBC_03    "Metin kodlamasý boþ."
  #DEFINE FBC_I2O5_01    "Interleaved 2 of 5 kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_S2O5_01    "Standard 2 of 5 kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_CODABAR_01  "Codabar kodu sadece izleyen deðerleri kabul eder:  0123456789-$:/.+"
  #DEFINE FBC_128A_01    "Code 128 Set A için geçersiz karakter."
  #DEFINE FBC_128B_01    "Code 128 Set B  için geçersiz karakter."
  #DEFINE FBC_128C_01    "Code 128 Set C sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_39EXT_01    "Code 39 Full ASCII için geçersiz karakter."
  #DEFINE FBC_39_01      "Code 39 için geçersiz karakter."
  #DEFINE FBC_93EXT_01    "Code 93 Full ASCII için geçersiz karakter."
  #DEFINE FBC_93_01      "Code 93 için geçersiz karakter."
  #DEFINE FBC_ITF14_01    "ITF-14 kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_ITF14_02    "ITF-14: Dizi uzunluðu 13 yada 14 olmalý."
  #DEFINE FBC_ITF14_03    "ITF-14: Doðru kontrol hanesi."
  #DEFINE FBC_EAN13_01    "The EAN-13 kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_EAN13_02    "Dizi uzunluðu 12 yada 13 karakter olmalý. 14 ile 18 arasýna tamamlanýr."
  #DEFINE FBC_EAN13_03    "EAN-13: Doðru kontrol hanesi "
  #DEFINE FBC_EAN8_01    "The EAN-8 kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_EAN8_02    "EAN-8: Dizi uzunluðu 7 yada 8 olmalý. 9 ile 13 arasýna tamamlanýr."
  #DEFINE FBC_EAN8_03    "EAN-8: Doðru kontrol hanesi "
  #DEFINE FBC_UPCA_01    "The UPC-A kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_UPCA_02    "UPC-A: Dizi uzunluðu 11 yada 12 olmalý. 13 ile 17 arasýna tamamlanýr."
  #DEFINE FBC_UPCA_03    "UPC-A: Doðru kontrol hanesi "
  #DEFINE FBC_UPCB_01    "The UPC-E kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_UPCB_02    "UPC-E: Dizi uzunluðu 6 yada 7 olmalý. 8 ile 12 arasýna tamamlanýr."
  #DEFINE FBC_UPCB_03    "UPC-E: Doðru kontrol hanesi "
  #DEFINE FBC_MSI_01    "The MSI/Plessey kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_11_01      "Code 11 sadece sayýsal deðerleri ve - (Tire) kabul eder."
  #DEFINE FBC_POSTNET_01  "PostNet kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_POSTNET_02  "PostNet: Dizi uzunluðu 5,9 yada 11 karakter olmalý"
  #DEFINE FBC_IMB_01    "Intelligent Mail Barcode kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode:  Dizi uzunluðu 5, 9 yada 11 karakter olmalý"
  #DEFINE FBC_IMB_99    "Intelligent Mail Barcode (Yakýnda) ..."
  #DEFINE FBC_TELEPEN_01  "Telepen kodu için geçersiz karakter."
  #DEFINE FBC_PHARMA1_01  "Pharmacode sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_PHARMA1_02  "Pharmacode: 3 ile 131070 arasýnda bir deðer girin."
  #DEFINE FBC_PHARMA1_03  "Pharmacode sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: 4 ile 64570080 arasýnda bir deðer girin."
  #DEFINE FBC_SUPP5_01    "Supplemental 5 kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_SUPP2_01    "The Supplemental 2 kodu sadece sayýsal deðerleri kabul eder."
  #DEFINE FBC_EAN128_01    "EAN/UCC/GS1 128 için geçersiz karakter."
  #DEFINE FBC_RM4SCC_01    "Code RM4SCC için geçersiz karakter."
  #DEFINE FBC_KIX_01    "KIX-Code için geçersiz karakter."

#ELIF FBC_LANGUAGE = "INDONESIAN"
  *--------------------------------
  * INDONESIAN LANGUAGE
  * Translate by Samir H.
  *--------------------------------
  #DEFINE FBC_FBC_01    "Font atau style tidak diperbolehkan di GDI+"
  #DEFINE FBC_FBC_02    "Simbologi barcode belum terimplementasi."
  #DEFINE FBC_FBC_03    "Teks pengkodean kosong."
  #DEFINE FBC_I2O5_01    "Interleaved 2 of 5 hanya menerima karakter numerik."
  #DEFINE FBC_S2O5_01    "Standard 2 of 5 hanya menerima karakter numerik."
  #DEFINE FBC_CODABAR_01  "Codabar hanya menerima karakter berikut: 0123456789-$:/.+"
  #DEFINE FBC_128A_01    "Karakter tidak valid untuk Code 128 Set A."
  #DEFINE FBC_128B_01    "Karakter tidak valid untuk Code 128 Set B."
  #DEFINE FBC_128C_01    "Code 128 Set C hanya menerima karakter numerik."
  #DEFINE FBC_39EXT_01    "Karakter tidak valid untuk Code 39 Full ASCII."
  #DEFINE FBC_39_01      "Karakter tidak valid untuk Code 39."
  #DEFINE FBC_93EXT_01    "Karakter tidak valid untuk Code 93 Full ASCII."
  #DEFINE FBC_93_01      "Karakter tidak valid untuk Code 93."
  #DEFINE FBC_ITF14_01    "Kode ITF-14 hanya menerima karakter numerik."
  #DEFINE FBC_ITF14_02    "ITF-14: Panjang kode harus 13 or 14."
  #DEFINE FBC_ITF14_03    "ITF-14: Cek digit yang benar adalah "
  #DEFINE FBC_EAN13_01    "Kode EAN-13 hanya menerima karakter numerik."
  #DEFINE FBC_EAN13_02    "Panjang kode harus 12 or 13. Dengan suplemen antara 14 dan 18."
  #DEFINE FBC_EAN13_03    "EAN-13: Cek digit yang benar adalah "
  #DEFINE FBC_EAN8_01    "Kode EAN-8 hanya menerima karakter numerik."
  #DEFINE FBC_EAN8_02    "EAN-8: Panjang kode harus 7 or 8. With supplement between 9 dan 13."
  #DEFINE FBC_EAN8_03    "EAN-8: Cek digit yang benar adalah "
  #DEFINE FBC_UPCA_01    "Kode UPC-A hanya menerima karakter numerik."
  #DEFINE FBC_UPCA_02    "UPC-A: Panjang kode harus 11 or 12. Dengan suplemen antara 13 dan 17."
  #DEFINE FBC_UPCA_03    "UPC-A: Cek digit yang benar adalah "
  #DEFINE FBC_UPCB_01    "Kode UPC-E hanya menerima karakter numerik."
  #DEFINE FBC_UPCB_02    "UPC-E: Panjang kode harus 6 or 7. Dengan suplemen antara 8 dan 12."
  #DEFINE FBC_UPCB_03    "UPC-E: Cek digit yang benar adalah "
  #DEFINE FBC_MSI_01    "Kode MSI/Plessey hanya menerima karakter numerik."
  #DEFINE FBC_11_01      "Code 11 hanya menerima karakter numerik dan - (Strip)."
  #DEFINE FBC_POSTNET_01  "Kode PostNet hanya menerima karakter numerik."
  #DEFINE FBC_POSTNET_02  "PostNet: Panjang kode harus 5,9,11"
  #DEFINE FBC_IMB_01    "Intelligent Mail Barcode hanya menerima karakter numerik."
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode: Panjang kode harus 5, 9, 11"
  #DEFINE FBC_IMB_99    "Intelligent Mail Barcode segera..."
  #DEFINE FBC_TELEPEN_01  "Karacter tidak valid untuk kode Telepen."
  #DEFINE FBC_PHARMA1_01  "Kode Pharmacode hanya menerima karakter numerik."
  #DEFINE FBC_PHARMA1_02  "Pharmacode: Masukan nilai antara 3 dan 131070."
  #DEFINE FBC_PHARMA1_03  "Kode Pharmacode hanya menerima karakter numerik."
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: Masukan nilai antara 3 dan 131070."
  #DEFINE FBC_SUPP5_01    "Kode Supplemental 5 hanya menerima karakter numerik."
  #DEFINE FBC_SUPP2_01    "Kode Supplemental 2 hanya menerima karakter numerik."
  #DEFINE FBC_EAN128_01    "Karacter tidak valid untuk EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Karakter tidak valid untuk Code RM4SCC."
  #DEFINE FBC_KIX_01    "Karakter tidak valid untuk KIX-Code."

#ELIF FBC_LANGUAGE = "GERMAN"
  *--------------------------------
  * GERMAN LANGUAGE
  * Translate by Stefan Wuebbe
  *--------------------------------
  #DEFINE FBC_FBC_01    "Schriftart oder -schnitt wird von GDI+ nicht unterstützt."
  #DEFINE FBC_FBC_02    "Barcode-Symbologie nicht implementiert."
  #DEFINE FBC_FBC_03    "Die Text-Encodierung ist leer."
  #DEFINE FBC_I2O5_01    "'Interleaved 2 of 5' akzeptiert nur numerische Zeichen."
  #DEFINE FBC_S2O5_01    "Der 'Standard 2 of 5' Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_CODABAR_01  "Der Codabar Code akzeptiert nur folgende Zeichen: 0123456789-$:/.+"
  #DEFINE FBC_128A_01    "Ungültige Zeichen für Code 128 Set A."
  #DEFINE FBC_128B_01    "Ungültige Zeichen für Code 128 Set B."
  #DEFINE FBC_128C_01    "Code 128 Set C akzeptiert nur numerische Zeichen."
  #DEFINE FBC_39EXT_01    "Ungültige Zeichen für Code 39 Full ASCII."
  #DEFINE FBC_39_01      "Ungültige Zeichen für Code 39."
  #DEFINE FBC_93EXT_01    "Ungültige Zeichen für Code 93 Full ASCII."
  #DEFINE FBC_93_01      "Ungültige Zeichen für Code 93."
  #DEFINE FBC_ITF14_01    "Der ITF-14 Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_ITF14_02    "ITF-14: Die Länge der Zeichenkette muss 13 oder 14 sein."
  #DEFINE FBC_ITF14_03    "ITF-14: Die korrekte Prüfziffer ist "
  #DEFINE FBC_EAN13_01    "Der EAN-13 Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_EAN13_02    "Die Länge der Zeichenkette muss 12 oder 13 sein. Mit Zusatz zwischen 14 und 18."
  #DEFINE FBC_EAN13_03    "EAN-13: Die korrekte Prüfziffer ist "
  #DEFINE FBC_EAN8_01    "Der EAN-8 Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_EAN8_02    "EAN-8: Die Länge der Zeichenkette muss 7 oder 8 sein. Mit Zusatz zwischen 9 und 13."
  #DEFINE FBC_EAN8_03    "EAN-8: Die korrekte Prüfziffer ist "
  #DEFINE FBC_UPCA_01    "Der UPC-A Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_UPCA_02    "UPC-A: Die Länge der Zeichenkette muss 11 oder 12 sein. Mit Zusatz zwischen 13 und 17."
  #DEFINE FBC_UPCA_03    "UPC-A: Die korrekte Prüfziffer ist "
  #DEFINE FBC_UPCB_01    "Der UPC-E Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_UPCB_02    "UPC-E: Die Länge der Zeichenkette muss 6 oder 7 sein. Mit Zusatz zwischen 8 und 12."
  #DEFINE FBC_UPCB_03    "UPC-E: Die korrekte Prüfziffer ist "
  #DEFINE FBC_MSI_01    "Der MSI/Plessey Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_11_01      "Code 11 akzeptiert nur numerische Zeichen und - (Querstrich)."
  #DEFINE FBC_POSTNET_01  "Der PostNet Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_POSTNET_02  "PostNet: Die Länge der Zeichenkette muss 5, 9 oder 11 sein."
  #DEFINE FBC_IMB_01    "Der Intelligent Mail Barcode akzeptiert nur numerische Zeichen."
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode: Die Länge der Zeichenkette muss 5, 9 oder 11 sein."
  #DEFINE FBC_IMB_99    "Intelligent Mail Barcode wird sofort ..."
  #DEFINE FBC_TELEPEN_01  "Ungültige Zeichen für den Telepen Code."
  #DEFINE FBC_PHARMA1_01  "Der Pharmacode akzeptiert nur numerische Zeichen."
  #DEFINE FBC_PHARMA1_02  "Pharmacode: Eingabewerte zwischen 3 und 131070."
  #DEFINE FBC_PHARMA1_03  "Pharmacode akzeptiert nur numerische Zeichen."
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: Eingabewerte zwischen 4 und 64570080."
  #DEFINE FBC_SUPP5_01    "Der Supplemental 5 Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_SUPP2_01    "Der Supplemental 2 Code akzeptiert nur numerische Zeichen."
  #DEFINE FBC_EAN128_01    "Ungültige Zeichen für EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Ungültige Zeichen für Code RM4SCC."
  #DEFINE FBC_KIX_01    "Ungültige Zeichen für KIX-Code."

#ELIF FBC_LANGUAGE = "FILIPINO"
  *--------------------------------
  * FILIPINO LANGUAGE
  * Translate by Glenn Gevero
  *--------------------------------
  #DEFINE FBC_FBC_01    "Ang font o stilo ay hindi maaari sa GDI+"
  #DEFINE FBC_FBC_02    "Simbolo ng barcode ay hindi pa ipinatupad"
  #DEFINE FBC_FBC_03    "Ang text encoding ay blanko"
  #DEFINE FBC_I2O5_01    "Ang interleaved na 2 at 5 code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_S2O5_01    "Ang pamantayan na 2 at 5 code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_CODABAR_01  "Ang codabar code ay tumatangap lamang ng mga sumusunod na characters: 0123456789-$:/.+ "
  #DEFINE FBC_128A_01    "Hindi tama ang mga characters para sa code 128 Set A"
  #DEFINE FBC_128B_01    "Hindi tama ang mga characters para sa code 128 Set B"
  #DEFINE FBC_128C_01    "Ang code 128 Set C ay tumatanggap lamang ng mga sumusunod na characters"
  #DEFINE FBC_39EXT_01    "Hindi tama ang mga characters para sa Code 39 Full ASCII"
  #DEFINE FBC_39_01      "Hindi tama ang mga characters para sa Code 39"
  #DEFINE FBC_93EXT_01    "Hindi tama ang mga characters para sa Code 39 Full ASCII"
  #DEFINE FBC_93_01      "Hindi tama ang mga characters para sa Code 93"
  #DEFINE FBC_ITF14_01    "Ang ITF-14: code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_ITF14_02    "ITF-14: Ang haba ng string ay dapat 13 o 14"
  #DEFINE FBC_ITF14_03    "ITF-14: Ang tamang check digit ay"
  #DEFINE FBC_EAN13_01    "Ang EAN-13 code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_EAN13_02    "Ang haba ng string ay dapat 12 o 13. At may karagdagan sa pagitan ng 14 at 18"
  #DEFINE FBC_EAN13_03    "EAN-13: Ang tamang check digit ay"
  #DEFINE FBC_EAN8_01    "Ang EAN-8 ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_EAN8_02    "EAN-8: Ang haba ng string ay dapat 7 o 8. At may karagdagan sa pagitan ng 9 at 13"
  #DEFINE FBC_EAN8_03    "EAN-8: Ang correct check digit ay"
  #DEFINE FBC_UPCA_01    "Ang UPC-A code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_UPCA_02    "UPC-A: Ang haba ng string ay dapat 11 0 12. At may karagdagan sa pagitan ng 12 at 17"
  #DEFINE FBC_UPCA_03    "UPC-A: Ang tamang check digit ay"
  #DEFINE FBC_UPCB_01    "ANg UPC-E code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_UPCB_02    "UPC-E: Ang haba ng string ay dapat 6 o 7. AT may karagdagan sa pagitan ng 8 at 12"
  #DEFINE FBC_UPCB_03    "UPC-E: The correct check digit is " "UPC-E: Ang tamang check digit ay"
  #DEFINE FBC_MSI_01    "Ang MSI/Plessy code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_11_01      "Ang code 11 ay tumatanggap lamang ng mga numero at - (Dash)"
  #DEFINE FBC_POSTNET_01  "Ang PostNet code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_POSTNET_02  "PostNet: Ang haba ng string ay dapat 5,9,11"
  #DEFINE FBC_IMB_01    "Ang Intelligent Mail Barcode ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_IMB_02    "Intelligent mail Barcode: Ang haba ng string ay dapat 5,9,11"
  #DEFINE FBC_IMB_99    "Abangan ang Intelligent Mail Barcode"
  #DEFINE FBC_TELEPEN_01  "Hindi tama ang character para sa Telepen code"
  #DEFINE FBC_PHARMA1_01  "Ang Pharmacode ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_PHARMA1_02  "Pharmacode: Ang Input Values ay dapat sa pagitan ng 3 at 131070"
  #DEFINE FBC_PHARMA1_03  "Ang Pharmacode ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: Ang input values ay dapat sa pagitan ng 3 at 64570080"
  #DEFINE FBC_SUPP5_01    "Ang Supplemental 5 code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_SUPP2_01    "Ang Supplemental 2 code ay tumatanggap lamang ng mga numero"
  #DEFINE FBC_EAN128_01    "Hindi tama ang mga characters para sa EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Hindi tama ang mga characters para sa Code RM4SCC"
  #DEFINE FBC_KIX_01    "Hindi tama ang mga characters para sa KIX-Code"

#ELIF FBC_LANGUAGE = "FRENCH"
  *--------------------------------
  * INDONESIAN FRENCH
  * Translate by Samir H.
  *--------------------------------
  #DEFINE FBC_FBC_01    "Police ou style n'est pas autorisé dans GDI+"
  #DEFINE FBC_FBC_02    "Cette symbologie n'est pas encore mise en œuvre."
  #DEFINE FBC_FBC_03    "Le texte à coder est vide."
  #DEFINE FBC_I2O5_01    "Le code Interleaved 2 of 5 n'accepte que des caractères numériques."
  #DEFINE FBC_S2O5_01    "Le code Standard 2 of 5 n'accepte que des caractères numériques."
  #DEFINE FBC_CODABAR_01  "Le code Codabar accepte uniquement les caractères suivants: 0123456789 -$:/.+"
  #DEFINE FBC_128A_01    "Caractères non valides pour le code Code 128 Set A."
  #DEFINE FBC_128B_01    "Caractères non valides pour le code Code 128 Set B."
  #DEFINE FBC_128C_01    "Le code Code 128 Set C n'accepte que des caractères numériques."
  #DEFINE FBC_39EXT_01    "Caractères non valides pour le code Code 39 Full ASCII."
  #DEFINE FBC_39_01      "Caractères non valides pour le code Code 39."
  #DEFINE FBC_93EXT_01    "Caractères non valides pour le code Code 93 Full ASCII."
  #DEFINE FBC_93_01      "Caractères non valides pour le code Code 93."
  #DEFINE FBC_ITF14_01    "Le code ITF-14 n'accepte que des caractères numériques."
  #DEFINE FBC_ITF14_02    "ITF-14: La longueur de la chaîne doit être de 13 ou 14."
  #DEFINE FBC_ITF14_03    "ITF-14: Le chiffre de contrôle correct est "
  #DEFINE FBC_EAN13_01    "Le code EAN-13 n'accepte que des caractères numériques."
  #DEFINE FBC_EAN13_02    "La longueur de la chaîne doit être de 12 ou 13. Avec supplément entre 14 et 18."
  #DEFINE FBC_EAN13_03    "EAN-13: Le chiffre de contrôle correct est "
  #DEFINE FBC_EAN8_01    "Le code EAN-8 n'accepte que des caractères numériques."
  #DEFINE FBC_EAN8_02    "EAN-8: La longueur de la chaîne doit être de 7 ou 8. Avec supplément entre 9 et 13."
  #DEFINE FBC_EAN8_03    "EAN-8: Le chiffre de contrôle correct est "
  #DEFINE FBC_UPCA_01    "Le code UPC-A n'accepte que des caractères numériques."
  #DEFINE FBC_UPCA_02    "UPC-A: La longueur de la chaîne doit être de 11 ou 12. Avec supplément entre 13 et 17."
  #DEFINE FBC_UPCA_03    "UPC-A: Le chiffre de contrôle correct est "
  #DEFINE FBC_UPCB_01    "Le code UPC-E n'accepte que des caractères numériques."
  #DEFINE FBC_UPCB_02    "UPC-E: La longueur de la chaîne doit être de 6 ou 7. Avec supplément entre 8 et 12."
  #DEFINE FBC_UPCB_03    "UPC-E: Le chiffre de contrôle correct est "
  #DEFINE FBC_MSI_01    "Le code MSI/Plessey n'accepte que des caractères numériques."
  #DEFINE FBC_11_01      "Le code Code 11 n'accepte que des caractères numériques et - (Tiret)."
  #DEFINE FBC_POSTNET_01  "Le code PostNet n'accepte que des caractères numériques."
  #DEFINE FBC_POSTNET_02  "PostNet: La longueur de la chaîne doit être de 5, 9, ou 11"
  #DEFINE FBC_IMB_01    "Le code Intelligent Mail Barcode n'accepte que des caractères numériques."
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode: La longueur de la chaîne doit être de 5, 9, ou 11"
  #DEFINE FBC_IMB_99    "Intelligent Mail Barcode bientôt..."
  #DEFINE FBC_TELEPEN_01  "Caractère non valide pour le code Telepen."
  #DEFINE FBC_PHARMA1_01  "Le code Pharmacode n'accepte que des caractères numériques."
  #DEFINE FBC_PHARMA1_02  "Pharmacode: Valeurs d'entrée entre 3 et 131070."
  #DEFINE FBC_PHARMA1_03  "Le code Pharmacode n'accepte que des caractères numériques."
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: Valeurs d'entrée entre 4 et 64570080."
  #DEFINE FBC_SUPP5_01    "Le code Supplemental 5 n'accepte que des caractères numériques."
  #DEFINE FBC_SUPP2_01    "Le code Supplemental 2 n'accepte que des caractères numériques."
  #DEFINE FBC_EAN128_01    "Caractères non valides pour le code EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Caractères non valides pour le code Code RM4SCC."
  #DEFINE FBC_KIX_01    "Caractères non valides pour le code KIX-Code."

#ELIF FBC_LANGUAGE = "SERBIAN"
  *--------------------------------
  * SERBIAN LANGUAGE
  * Translate by Michael Kopljan
  *--------------------------------
  #DEFINE FBC_FBC_01    "Font ili stil nije dozvoljen u GDI+."
  #DEFINE FBC_FBC_02    "Tip barkoda nije implementiran."
  #DEFINE FBC_FBC_03    "Nepostojanje texta koji treba da se enkoduje."
  #DEFINE FBC_I2O5_01    "Interleaved 2 od 5 barkod prihvata samo numerièke podatke."
  #DEFINE FBC_S2O5_01    "Standard 2 od 5 barkod prihvata samo numerièke podatke."
  #DEFINE FBC_CODABAR_01  "Codabar barkod prihvata samo sledeæe karaktere: 0123456789-$:/.+"
  #DEFINE FBC_128A_01    "Postojanje nedozvoljenih karaktera za barkod Code 128 Set A."
  #DEFINE FBC_128B_01    "Postojanje nedozvoljenih karaktera za barkod Code 128 Set B."
  #DEFINE FBC_128C_01    "Barkod Code 128 Set C prihvata samo numerièke znakove."
  #DEFINE FBC_39EXT_01    "Nedozvoljeni karakter za barkod Code 39 pun ASCII."
  #DEFINE FBC_39_01      "Nedozvoljeni karakteri za barkod Code 39."
  #DEFINE FBC_93EXT_01    "Nedozvoljeni karakter za barkod Code 93 pun ASCII."
  #DEFINE FBC_93_01      "Nedozvoljeni karakteri za barkod Code 93."
  #DEFINE FBC_ITF14_01    "ITF-14 barkod prihvata samo numerièke znakove."
  #DEFINE FBC_ITF14_02    "ITF-14: dužina stringa mora biti 13 ili 14 znakova."
  #DEFINE FBC_ITF14_03    "ITF-14: taèna kotrolna cifra je "
  #DEFINE FBC_EAN13_01    "EAN-13 barkod prihvata samo numerièke znakove."
  #DEFINE FBC_EAN13_02    "Dužina stringa mora biti 12 ili 13 znakova. Sa dodatkom izmeðu 14 i 18."
  #DEFINE FBC_EAN13_03    "EAN-13: taèna kotrolna cifra je "
  #DEFINE FBC_EAN8_01    "The EAN-8 barkod prihvata samo numerièke znakove."
  #DEFINE FBC_EAN8_02    "EAN-8: Dužina stringa mora biti 7 ili 8 znakova. Sa dodatkom izmeðu 9 i 13."
  #DEFINE FBC_EAN8_03    "EAN-8: taèna kotrolna cifra je "
  #DEFINE FBC_UPCA_01    "UPC-A barkod prihvata samo numerièke znakove."
  #DEFINE FBC_UPCA_02    "UPC-A: Dužina stringa mora biti 11 ili 12 znakova. Sa dodatkom izmeðu 13 i 17."
  #DEFINE FBC_UPCA_03    "UPC-A: taèna kotrolna cifra je "
  #DEFINE FBC_UPCB_01    "UPC-E barkod prihvata samo numerièke znakove."
  #DEFINE FBC_UPCB_02    "UPC-E: Dužina stringa mora biti 6 or 7 znakova. Sa dodatkom izmeðu 8 i 12."
  #DEFINE FBC_UPCB_03    "UPC-E: taèna kotrolna cifra je "
  #DEFINE FBC_MSI_01    "MSI/Plessey barkod prihvata samo numerièke znakove."
  #DEFINE FBC_11_01      "Code 11 barkod prihvata samo numerièke znakove i - (crtu)."
  #DEFINE FBC_POSTNET_01  "PostNet barkod prihvata samo numerièke znakove."
  #DEFINE FBC_POSTNET_02  "PostNet: Dužina stringa mora biti 5,9,11 znakova"
  #DEFINE FBC_IMB_01    "Intelligent Mail barkod prihvata samo numerièke znakove."
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode: Dužina stringa mora biti 5,9,11"
  #DEFINE FBC_IMB_99    "Intelligent Mail barkod uskoro ..."
  #DEFINE FBC_TELEPEN_01  "Nedozvoljeni karakter za barkod Telepen."
  #DEFINE FBC_PHARMA1_01  "Pharmacode barkod prihvata samo numerièke znakove."
  #DEFINE FBC_PHARMA1_02  "Pharmacode: Unesite vrednosti izmeðu 3 i 131070."
  #DEFINE FBC_PHARMA1_03  "Pharmacode barkod prihvata samo numerièke znakove."
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: Unesite vrednosti izmeðu 4 i 64570080."
  #DEFINE FBC_SUPP5_01    "Supplemental 5 barkod prihvata samo numerièke znakove."
  #DEFINE FBC_SUPP2_01    "Supplemental 2 barkod prihvata samo numerièke znakove."
  #DEFINE FBC_EAN128_01    "Nedozvoljeni karakteri za barkod EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Nedozvoljeni karakter za barkod Code RM4SCC."
  #DEFINE FBC_KIX_01    "Nedozvoljeni karakteri za barkod KIX-Code."

#ELIF FBC_LANGUAGE = "ITALIAN"
  *--------------------------------
  * ITALIAN LANGUAGE
  * Translate by Roberto Saccomanno
  *--------------------------------
  #DEFINE FBC_FBC_01        "Carattere o stile non permessi in GDI+"
  #DEFINE FBC_FBC_02        "Tipo di Barcode non implementato."
  #DEFINE FBC_FBC_03        "Il testo da decodificare è vuoto."
  #DEFINE FBC_I2O5_01       "Il codice Interleaved 2 of 5 accetta solo caratteri numerici."
  #DEFINE FBC_S2O5_01       "Il codice Standard 2 of 5 accetta solo caratteri numerici."
  #DEFINE FBC_CODABAR_01    "Il codice Codabar code accetta solo i seguenti caratteri : 0123456789-$:/.+"
  #DEFINE FBC_128A_01       "Carattere non valido per il Code 128 Set A."
  #DEFINE FBC_128B_01       "Carattere non valido per il Code 128 Set B."
  #DEFINE FBC_128C_01       "Il codice Code 128 Set C accetta solo caratteri numerici."
  #DEFINE FBC_39EXT_01      "Carattere non valido per il Code 39 Full ASCII."
  #DEFINE FBC_39_01         "Carattere non valido per il Code 39."
  #DEFINE FBC_93EXT_01      "Carattere non valido per il Code 93 Full ASCII."
  #DEFINE FBC_93_01         "Carattere non valido per il Code 93."
  #DEFINE FBC_ITF14_01      "Il codice ITF-14 accetta solo caratteri numerici."
  #DEFINE FBC_ITF14_02      "ITF-14: La lunghezza della stringa deve essere 13 o 14."
  #DEFINE FBC_ITF14_03      "ITF-14: Il carattere di controllo corretto è "
  #DEFINE FBC_EAN13_01      "Il codice EAN-13 accetta solo caratteri numerici."
  #DEFINE FBC_EAN13_02      "La lunghezza della stringa deve essere 12 o 13. Con il supplemento tra 14 e 18."
  #DEFINE FBC_EAN13_03      "EAN-13: Il carattere di controllo corretto è "
  #DEFINE FBC_EAN8_01       "Il codice EAN-8 accetta solo caratteri numerici."
  #DEFINE FBC_EAN8_02       "EAN-8: La lunghezza della stringa deve essere 7 o 8. Con il supplemento tra 9 e 13."
  #DEFINE FBC_EAN8_03       "EAN-8: Il carattere di controllo corretto è "
  #DEFINE FBC_UPCA_01       "Il codice UPC-A accetta solo caratteri numerici."
  #DEFINE FBC_UPCA_02       "UPC-A: La lunghezza della stringa deve essere 11 o 12. Con il supplemento tra 13 e 17."
  #DEFINE FBC_UPCA_03       "UPC-A: Il carattere di controllo corretto è "
  #DEFINE FBC_UPCB_01       "Il codice UPC-E accetta solo caratteri numerici."
  #DEFINE FBC_UPCB_02       "UPC-E: La lunghezza della stringa deve essere 6 o 7. Con il supplemento tra 8 e 12."
  #DEFINE FBC_UPCB_03       "UPC-E: Il carattere di controllo corretto è "
  #DEFINE FBC_MSI_01        "Il codice MSI/Plessey accetta solo caratteri numerici."
  #DEFINE FBC_11_01         "Il codice Code 11 accetta solo caratteri numerici e il segno - (meno)."
  #DEFINE FBC_POSTNET_01    "Il codice PostNet accetta solo caratteri numerici."
  #DEFINE FBC_POSTNET_02    "PostNet: La lunghezza della stringa deve essere 5, 9 o 11"
  #DEFINE FBC_IMB_01        "Il codice Intelligent Mail Barcode accetta solo caratteri numerici."
  #DEFINE FBC_IMB_02        "Intelligent Mail Barcode: La lunghezza della stringa deve essere 5, 9 o 11"
  #DEFINE FBC_IMB_99        "Codice Intelligent Mail Barcode pronto ..."
  #DEFINE FBC_TELEPEN_01    "Carattere non valido per il Telepen Code."
  #DEFINE FBC_PHARMA1_01    "Il codice Pharmacode accetta solo caratteri numerici."
  #DEFINE FBC_PHARMA1_02    "Pharmacode: Immettere valori compresi 3 e 131070."
  #DEFINE FBC_PHARMA1_03    "Il codice Pharmacode accetta solo caratteri numerici."
  #DEFINE FBC_PHARMA2_01    "Two Track Pharmacode: Immettere valori compresi tra 4 e 64570080."
  #DEFINE FBC_SUPP5_01      "Il codice Supplemental 5 code accetta solo caratteri numerici."
  #DEFINE FBC_SUPP2_01      "Il codice Supplemental 2 code accetta solo caratteri numerici."
  #DEFINE FBC_EAN128_01     "Carattere non valido per EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01     "Carattere non valido per il Code RM4SCC"
  #DEFINE FBC_KIX_01        "Carattere non valido per il KIX-Code"

#ELIF FBC_LANGUAGE = "ROMANIAN"
  *--------------------------------
  * ROMANIAN LANGUAGE
  * Translate by Vilhelm-Ion Praisach
  *--------------------------------
  #DEFINE FBC_FBC_01        "Font sau stil neacceptat in GDI+"
  #DEFINE FBC_FBC_02        "Tip de cod de bare neimplementat."
  #DEFINE FBC_FBC_03        "Textul de codificat necompletat."
  #DEFINE FBC_I2O5_01       "Codificarea Interleaved 2 of 5 accepta doar caractere numerice."
  #DEFINE FBC_S2O5_01       "Codificarea Standard 2 of 5 accepta doar caractere numerice."
  #DEFINE FBC_CODABAR_01    "Codificarea Codabar code accepta doar urmatoarele caractere : 0123456789-$:/.+"
  #DEFINE FBC_128A_01       "Caractere invalide pentru Code 128 Set A."
  #DEFINE FBC_128B_01       "Caractere invalide pentru Code 128 Set B."
  #DEFINE FBC_128C_01       "Codificarea Code 128 Set C accepta doar caractere numerice."
  #DEFINE FBC_39EXT_01      "Caractere invalide pentru Code 39 Full ASCII."
  #DEFINE FBC_39_01         "Caractere invalide pentru Code 39."
  #DEFINE FBC_93EXT_01      "Caractere invalide pentru Code 93 Full ASCII."
  #DEFINE FBC_93_01         "Caractere invalide pentru Code 93."
  #DEFINE FBC_ITF14_01      "Codificarea ITF-14 accepta doar caractere numerice."
  #DEFINE FBC_ITF14_02      "ITF-14: Lungimea sirului trebuie sa fie 13 sau 14."
  #DEFINE FBC_ITF14_03      "ITF-14: Caracterul de control corect este "
  #DEFINE FBC_EAN13_01      "Codificarea EAN-13 accepta doar caractere numerice."
  #DEFINE FBC_EAN13_02      "Lungimea sirului trebuie sa fie 12 sau 13. Cu supliment intre 14 si 18."
  #DEFINE FBC_EAN13_03      "EAN-13: Caracterul de control corect este "
  #DEFINE FBC_EAN8_01       "Codificarea EAN-8 accepta doar caractere numerice."
  #DEFINE FBC_EAN8_02       "EAN-8: Lungimea sirului trebuie sa fie 7 sau 8. Cu supliment intre 9 si 13."
  #DEFINE FBC_EAN8_03       "EAN-8: Caracterul de control corect este "
  #DEFINE FBC_UPCA_01       "Codificarea UPC-A accepta doar caractere numerice."
  #DEFINE FBC_UPCA_02       "UPC-A: Lungimea sirului trebuie sa fie 11 sau 12. Cu supliment intre 13 si 17."
  #DEFINE FBC_UPCA_03       "UPC-A: Caracterul de control corect este "
  #DEFINE FBC_UPCB_01       "Codificarea UPC-E accepta doar caractere numerice."
  #DEFINE FBC_UPCB_02       "UPC-E: Lungimea sirului trebuie sa fie 6 sau 7. Cu supliment intre 8 si 12."
  #DEFINE FBC_UPCB_03       "UPC-E: Caracterul de control corect este "
  #DEFINE FBC_MSI_01        "Codificarea MSI/Plessey accepta doar caractere numerice."
  #DEFINE FBC_11_01         "Codificarea Code 11 accepta doar caractere numerice si semnul - (minus)."
  #DEFINE FBC_POSTNET_01    "Codificarea PostNet accepta doar caractere numerice."
  #DEFINE FBC_POSTNET_02    "PostNet: Lungimea sirului trebuie sa fie 5, 9 sau 11"
  #DEFINE FBC_IMB_01        "Codificarea Intelligent Mail Barcode accepta doar caractere numerice."
  #DEFINE FBC_IMB_02        "Intelligent Mail Barcode: Lungimea sirului trebuie sa fie 5, 9 sau 11"
  #DEFINE FBC_IMB_99        "Codificarea Intelligent Mail Barcode in curand ..."
  #DEFINE FBC_TELEPEN_01    "Caractere invalide pentru Telepen Code."
  #DEFINE FBC_PHARMA1_01    "Codificarea Pharmacode accepta doar caractere numerice."
  #DEFINE FBC_PHARMA1_02    "Pharmacode: Introduceti valori intre 3 si 131070."
  #DEFINE FBC_PHARMA1_03    "Codificarea Pharmacode accepta doar caractere numerice."
  #DEFINE FBC_PHARMA2_01    "Two Track Pharmacode: Introduceti valori intre 4 si 64570080."
  #DEFINE FBC_SUPP5_01      "Codificarea Supplemental 5 code accepta doar caractere numerice."
  #DEFINE FBC_SUPP2_01      "Codificarea Supplemental 2 code accepta doar caractere numerice."
  #DEFINE FBC_EAN128_01     "Caractere invalide pentru EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01     "Caractere invalide pentru Code RM4SCC"
  #DEFINE FBC_KIX_01        "Caractere invalide pentru KIX-Code"

#ELSE
  *--------------------------------
  * ENGLISH LANGUAGE BY DEFAULT
  * Translate by VFPEncoding
  *--------------------------------
  #DEFINE FBC_FBC_01    "Font or style is not allowed in GDI+"
  #DEFINE FBC_FBC_02    "Barcode symbology not implemented."
  #DEFINE FBC_FBC_03    "The text encoding is blank."
  #DEFINE FBC_I2O5_01    "The Interleaved 2 of 5 code accepts only numeric characters."
  #DEFINE FBC_S2O5_01    "The Standard 2 of 5 code accepts only numeric characters."
  #DEFINE FBC_CODABAR_01  "Codabar code only accepts the following characters: 0123456789-$:/.+"
  #DEFINE FBC_128A_01    "Invalid characters for Code 128 Set A."
  #DEFINE FBC_128B_01    "Invalid characters for Code 128 Set B."
  #DEFINE FBC_128C_01    "The Code 128 Set C accepts only numeric characters."
  #DEFINE FBC_39EXT_01    "Invalid character for Code 39 Full ASCII."
  #DEFINE FBC_39_01      "Invalid characters for Code 39."
  #DEFINE FBC_93EXT_01    "Invalid character for Code 93 Full ASCII."
  #DEFINE FBC_93_01      "Invalid characters for Code 93."
  #DEFINE FBC_ITF14_01    "The ITF-14 code accepts only numeric characters."
  #DEFINE FBC_ITF14_02    "ITF-14: The length of the string must be 13 or 14."
  #DEFINE FBC_ITF14_03    "ITF-14: The correct check digit is "
  #DEFINE FBC_EAN13_01    "The EAN-13 code accepts only numeric characters."
  #DEFINE FBC_EAN13_02    "The length of the string must be 12 or 13. With supplement between 14 and 18."
  #DEFINE FBC_EAN13_03    "EAN-13: The correct check digit is "
  #DEFINE FBC_EAN8_01    "The EAN-8 code accepts only numeric characters."
  #DEFINE FBC_EAN8_02    "EAN-8: The length of the string must be 7 or 8. With supplement between 9 and 13."
  #DEFINE FBC_EAN8_03    "EAN-8: The correct check digit is "
  #DEFINE FBC_UPCA_01    "The UPC-A code accepts only numeric characters."
  #DEFINE FBC_UPCA_02    "UPC-A: The length of the string must be 11 or 12. With supplement between 13 and 17."
  #DEFINE FBC_UPCA_03    "UPC-A: The correct check digit is "
  #DEFINE FBC_UPCB_01    "The UPC-E code accepts only numeric characters."
  #DEFINE FBC_UPCB_02    "UPC-E: The length of the string must be 6 or 7. With supplement between 8 and 12."
  #DEFINE FBC_UPCB_03    "UPC-E: The correct check digit is "
  #DEFINE FBC_MSI_01    "The MSI/Plessey code accepts only numeric characters."
  #DEFINE FBC_11_01      "The Code 11 accepts only numeric characters and - (Dash)."
  #DEFINE FBC_POSTNET_01  "The PostNet code accepts only numeric characters."
  #DEFINE FBC_POSTNET_02  "PostNet: The length of the string must be 5,9,11"
  #DEFINE FBC_IMB_01    "The Intelligent Mail Barcode accepts only numeric characters."
  #DEFINE FBC_IMB_02    "Intelligent Mail Barcode: The length of the string must be 5, 9 or 11"
  #DEFINE FBC_IMB_99    "Intelligent Mail Barcode coming soon ..."
  #DEFINE FBC_TELEPEN_01  "Invalid character for Telepen code."
  #DEFINE FBC_PHARMA1_01  "The Pharmacode accepts only numeric characters."
  #DEFINE FBC_PHARMA1_02  "Pharmacode: Input values between 3 and 131070."
  #DEFINE FBC_PHARMA1_03  "The Pharmacode accepts only numeric characters."
  #DEFINE FBC_PHARMA2_01  "Two Track Pharmacode: Input values between 4 and 64570080."
  #DEFINE FBC_SUPP5_01    "The Supplemental 5 code accepts only numeric characters."
  #DEFINE FBC_SUPP2_01    "The Supplemental 2 code accepts only numeric characters."
  #DEFINE FBC_EAN128_01    "Invalid characters for EAN/UCC/GS1 128."
  #DEFINE FBC_RM4SCC_01    "Invalid character for Code RM4SCC"
  #DEFINE FBC_KIX_01    "Invalid character for KIX-Code"

#ENDIF

*--------------------------------------------------------------------------------------
* FoxBarcode Symbologies List
*--------------------------------------------------------------------------------------
#DEFINE FBC_CODE_128    110 && Code 128 (Sets A, B and C)
#DEFINE FBC_CODE_39      120 && Code 39
#DEFINE FBC_CODE_39EXT    121 && Code 39 Extended or Full ASCII
#DEFINE FBC_CODE_93      122 && Code 93
#DEFINE FBC_CODE_93EXT    123 && Code 93 Extended or Full ASCII
#DEFINE FBC_CODE_S2OF5    131 && Standard 2 of 5
#DEFINE FBC_CODE_I2OF5    132 && Interleaved 2 of 5
#DEFINE FBC_CODE_EAN8    150 && EAN-8
#DEFINE FBC_CODE_EAN13    151 && EAN-13
#DEFINE FBC_CODE_ITF14    152 && ITF-14
#DEFINE FBC_CODE_EAN14    152 && EAN-14
#DEFINE FBC_CODE_DUN14    152 && DUN-14
#DEFINE FBC_CODE_EAN128    159 && EAN-128
#DEFINE FBC_CODE_UCC128    159 && UCC-128
#DEFINE FBC_CODE_GS1128    159 && GS1-128
#DEFINE FBC_CODE_UPCE    160 && UPC-E
#DEFINE FBC_CODE_UPCA    161 && UPC-A
#DEFINE FBC_CODE_CODABAR  170 && Codabar
#DEFINE FBC_CODE_11      171 && Code 11
#DEFINE FBC_CODE_MSI    172 && MSI/Plessey
#DEFINE FBC_CODE_TELEPEN  173 && Telepen
#DEFINE FBC_CODE_PHARMA1  174 && One Track Pharmacode
#DEFINE FBC_CODE_PHARMA2  175 && Two Track Pharmacode
#DEFINE FBC_CODE_POSTNET  180 && PostNet (U.S. Postal Service)
#DEFINE FBC_CODE_IMB    181 && Intelligent Mail Barcode (U.S. Postal Service)
#DEFINE FBC_CODE_RM4SCC    182  && RM4SCC (Royal Mail)
#DEFINE FBC_CODE_KIX    183 && KIX Code (Dutch Postal)

*--------------------------------------------------------------------------------------
* FoxBarcode Class Definition
*--------------------------------------------------------------------------------------
DEFINE CLASS FoxBarcode AS CUSTOM

  *--- Internal use
  PROTECTED cPattern, nLenPattern, nTextHeight, nFontHeight, cFontStyle
  PROTECTED nBarWidth, nQuietZone, nBarcodeWidth
  PROTECTED cCheckDigit, cTextValue, cVersion
  PROTECTED oGdi, oImg, oGra

  *-- Properties
  cText = "" && Text to encode
  cTextValue = "" && Value of the text ready for encoding.

  *-- Barcode symbologies
  nBarcodeType = FBC_CODE_128 && Barcode type. See "FoxBarcode Symbologies List"
  nFactor = 1 && Barcode size [1..9] Integer
  nQuietZone = 10 && Quiet zone in pixels. Now not protected since v.1.11
  nBarWidth = 0 && Bar width
  nMargin = 0 && Margin around the barcode

  *-- Only some barcode specific symbologies
  nRatio = 2 && Ratio between the narrow bar and the wide bar [1:2; 1:3; 1:4]
  lAddCheckDigit = .T. && Calculate check digit
  cSet128 = "B" && Set Code 128 [A, B, C or "*" for Auto]
  nBearerBar = 1 && 0=None, 1=Rectangle, 2=Top and Bottom - Only ITF-14
  nBearerBarWidth = 0 && In pixels
  cSupplementalText = "" && EAN and UPC code supplemental text
  lUseAppId = .T. && Use Application Identifiers. Only EAN/UCC/GS1 128

  *-- Barcode image
  nImageHeight = 100 && in pixels
  nImageWidth = 0 && in pixels
  nBarcodeWidth = 0 && in pixeles
  nMaxImageWidth = 0
  nAlignBarCode = 1 && alignment bar code on the image [0=Left, 1=Center, 2=Right]
  nRotation = 0 && Image rotation [0=0°, 1=90°, 2=180°, 3=270°]
  nResolution = 300 && Dpi [72..1200] Integer
  cImageType = "JPG"  && Image type ["JPG", "GIF", "PNG", "BMP", "TIF"]
  cImageFile = "" && Image file name, if empty autogenerate file name
  lDeleteTempFiles = .T. && Delete the temporary folder and image files

  *-- Human-readable text
  cHumanReadableText = "" && Human-readable text to display
  cCheckDigit = "" && Check digit in human readable
  lShowCheckDigit = .T. && Show check digit in human readable text
  lShowStartStopChars = .T. && Show start and stop characters in human readable text
  lShowHumanReadableText = .T. && Shows the human-readable text
  nAlignText = 1 && [0=Left, 1=Center (Default), 2=Right]
  nTextHeight = 14.500  && Text height
  nFontSize = 8.500 && Real font size [1..72]
  nFontHeight = 2.833  && Size according to factor
  cFontName = "Arial" && Font name
  cFontStyle = "N" && Font Style
  lFontBold = .F. && Font bold
  lFontItalic = .F. && Fon italic

  *-- Colours
  nBackColor = RGB(255, 255, 255) && Background color image (recommend White)
  nBarsColor = RGB(0, 0, 0) && Bars Colors (recommend Black)
  nFontColor = RGB(0, 0, 0) && Font color (recommend Black)

  *-- Internal use
  cVersion = "FoxBarcode v.1.2"
  cPattern = "" && Encoded string
  nLenPattern = 0 && Encoded string Lenght
  cMsgError = "" && Error message
  cTempPath = "" && Windows temp folder + SYS(2015)

  *--- gpImage object
  oGdi = NULL && Object Gdi
  oImg = NULL && Object Image
  oGra = NULL && Object Graphic

  *------------------------------------------------------
  * PROCEDURE BarcodePattern()
  *------------------------------------------------------
  * Generates the barcode pattern according to the type
  *------------------------------------------------------
  PROCEDURE BarcodePattern()

    THIS.cMsgError = ""

    *-- Validates that the font and style are permitted by GDI+
    IF THIS.lShowHumanReadableText AND ;
        NOT THIS.IsFontTrueType(THIS.cFontName) AND ;
        NOT THIS.IsGdipFont(THIS.cFontName, THIS.cFontStyle)
      THIS.cMsgError = FBC_FBC_01
      THIS.cPattern = NULL
      RETURN THIS.cPattern
    ENDIF

    IF NOT EMPTY(THIS.cTextValue)

      DO CASE
        CASE THIS.nBarcodeType = FBC_CODE_128 && Code 128
          THIS.cPattern = THIS.Code_128()

        CASE THIS.nBarcodeType = FBC_CODE_39 && Code 39
          THIS.cPattern = THIS.Code_39()

        CASE THIS.nBarcodeType = FBC_CODE_39EXT && Code 39 Estended or ASCII Full
          THIS.cPattern = THIS.Code_39Ext()

        CASE THIS.nBarcodeType = FBC_CODE_93 && Code 93
          THIS.cPattern = THIS.Code_93()

        CASE THIS.nBarcodeType = FBC_CODE_93EXT && Code 93 Extended or Full ASCII
          THIS.cPattern = THIS.Code_93Ext()

        CASE THIS.nBarcodeType = FBC_CODE_S2OF5 && Standard 2 of 5
          THIS.cPattern = THIS.Code_S2of5()

        CASE THIS.nBarcodeType = FBC_CODE_I2OF5 && Interleaved 2 of 5
          THIS.cPattern = THIS.Code_I2of5()

        CASE THIS.nBarcodeType = FBC_CODE_ITF14 && ITF-14
          THIS.cPattern = THIS.Code_Itf14()

        CASE THIS.nBarcodeType = FBC_CODE_EAN13 && EAN-13
          THIS.cPattern = THIS.Code_Ean13()

        CASE THIS.nBarcodeType = FBC_CODE_EAN8 && EAN-8
          THIS.cPattern = THIS.Code_Ean8()

        CASE THIS.nBarcodeType = FBC_CODE_EAN128 && EAN-128
          THIS.cPattern = THIS.Code_Ean128()

        CASE THIS.nBarcodeType = FBC_CODE_UPCA && UPC-A
          THIS.cPattern = THIS.Code_UpcA()

        CASE THIS.nBarcodeType = FBC_CODE_UPCE && UPC-E
          THIS.cPattern = THIS.Code_UpcE()

        CASE THIS.nBarcodeType = FBC_CODE_CODABAR && Codabar
          THIS.cPattern = THIS.Code_Codabar()

        CASE THIS.nBarcodeType = FBC_CODE_11 && Code 11
          THIS.cPattern = THIS.Code_11()

        CASE THIS.nBarcodeType = FBC_CODE_MSI && Plessey
          THIS.cPattern = THIS.Code_MSIPlessey()

        CASE THIS.nBarcodeType = FBC_CODE_TELEPEN && Telepen
          THIS.cPattern = THIS.Code_Telepen()

        CASE THIS.nBarcodeType = FBC_CODE_PHARMA1 && One Track Pharmacode
          THIS.cPattern = THIS.Code_Pharmacode1()

        CASE THIS.nBarcodeType = FBC_CODE_PHARMA2 && Two Track Pharmacode
          THIS.cPattern = THIS.Code_Pharmacode2()

        CASE THIS.nBarcodeType = FBC_CODE_POSTNET && PostNet
          THIS.cPattern = THIS.Code_PostNet()

        CASE THIS.nBarcodeType = FBC_CODE_IMB && Intelligent Mail Barcode
          THIS.cPattern = THIS.Code_IMB()

        CASE THIS.nBarcodeType = FBC_CODE_RM4SCC && RM4SCC (Royal Mail)
          THIS.cPattern = THIS.Code_RM4SCC()

        CASE THIS.nBarcodeType = FBC_CODE_KIX && KIX-Code (Dutch Postal)
          THIS.cPattern = THIS.Code_KIX()

        OTHERWISE
          THIS.cPattern = NULL
          THIS.cMsgError = FBC_FBC_02
      ENDCASE

    ELSE && NOT EMPTY(THIS.cTextValue)

      THIS.cPattern = NULL
      THIS.cMsgError = FBC_FBC_03

    ENDIF && NOT EMPTY(THIS.cTextValue)

    IF ISNULL(THIS.cPattern)
      *-- Not generated the Pattern string
      RETURN THIS.cPattern
    ENDIF && ISNULL(THIS.cPattern)

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE BarcodeImage(tcValue, tcImageFile, tcSuperPro)
  *------------------------------------------------------
  * Generated barcode image with GPIMAGE class
  *------------------------------------------------------
  PROCEDURE BarcodeImage(tcValue, tcImageFile, tcSuperPro)

    LOCAL ARRAY laSuperPro(1)
    LOCAL lcProper, lnCon
    LOCAL lnImageWidth
    LOCAL lnHRH, lnRight

    *-- Properties in 3rd. parameter
    IF NOT EMPTY(m.tcSuperPro)
      THIS.ResetProperties()
      m.tcSuperPro = ALLTRIM(CHRTRAN(m.tcSuperPro, ",", CHR(13)))
      ALINES(m.laSuperPro, m.tcSuperPro)
      FOR m.lnCon = 1 TO ALEN(m.laSuperPro)
        m.lcProper = "THIS." + SUBSTR(m.laSuperPro(m.lnCon), 1, AT("=", m.laSuperPro[m.lnCon]) - 1)
        IF TYPE(m.lcProper) # "U"
          m.laSuperPro(m.lnCon) = "THIS." + m.laSuperPro(m.lnCon)
          &laSuperPro[m.lnCon]
        ENDIF
      ENDFOR
      IF NOT EMPTY(THIS.cText)
        m.tcValue = THIS.cText
      ENDIF
    ENDIF

    IF EMPTY(m.tcValue)
      m.tcValue = THIS.cText
    ENDIF

    STORE m.tcValue TO THIS.cText, THIS.cTextValue, THIS.cHumanReadableText

    *--- Generates the pattern
    THIS.BarcodePattern()

    *-- GPIMAGE
    THIS.oGdi = CREATEOBJECT("gpInit")
    THIS.oImg = CREATEOBJECT("gpImage2")

    *--- Invalid Propeties / Code / Font / Style
    IF ISNULL(THIS.cPattern)

      LOCAL lnFontHeight, lcDisplayFontName, laListFontName(10), ln
      *-- Create an error message image
      m.lnImageWidth = THIS.nImageHeight * 2.5  && 1.5
      THIS.oImg.CREATE(m.lnImageWidth, THIS.nImageHeight)
      THIS.oImg.HorizontalResolution = THIS.nResolution
      THIS.oImg.VerticalResolution = THIS.nResolution
      THIS.oGra = CREATEOBJECT("Graphics", THIS.oImg.GetImage())
      THIS.oGra.SetBrush(THIS.nBackColor)
      THIS.oGra.SetRect(0, 0, m.lnImageWidth, THIS.nImageHeight)
      THIS.oGra.FillRect(0, 0, m.lnImageWidth, THIS.nImageHeight)
      THIS.oGra.SetAlignment(1, 1, 0)
      THIS.oGra.SetBrush(THIS.nFontColor)
      m.lnFontHeight = (THIS.nFontSize * 1.25) / THIS.nResolution * 100
      *-- Use a valid Gdi+ Font
      m.laListFontName(1) = "Courier New"
      m.laListFontName(2) = "Times New Roman"
      m.laListFontName(3) = "MS Sans Serif"
      m.laListFontName(4) = "Tahoma"
      m.laListFontName(5) = "Verdana"
      m.laListFontName(6) = "Comic Sans MS"
      m.laListFontName(7) = "Trebuchet MS"
      m.laListFontName(8) = "Arial"
      m.laListFontName(9) = "Georgia"
      m.laListFontName(10) = "Segoe UI"
      FOR m.ln = 1 TO 10
        IF THIS.IsFontTrueType(m.laListFontName(m.ln)) AND THIS.IsGdipFont(m.laListFontName(m.ln), "N")
          m.lcDisplayFontName = m.laListFontName(m.ln)
          EXIT
        ENDIF
      ENDFOR
      THIS.oGra.DrawString(THIS.cMsgError, m.lcDisplayFontName, m.lnFontHeight, "N")
      THIS.oGra.SetPen(THIS.nBarsColor, 1)
      THIS.oGra.DrawRect(0, 0, m.lnImageWidth - 1, THIS.nImageHeight - 1)

    ELSE && ISNULL(THIS.cPattern)

      *-- Barcode + BearerBar + Human Readable + QuietZone + Supplemental
      THIS.nBearerBarWidth = IIF(THIS.nBarcodeType = FBC_CODE_ITF14 AND THIS.nBearerBar # 0, CEILING(THIS.nQuietZone / 4 * THIS.nFactor), 0) && Bearer Bar Width
      THIS.cPattern = REPLICATE( "@", THIS.nBearerBarWidth * 2) + REPLICATE( "@", THIS.nQuietZone) + THIS.cPattern + REPLICATE( "@", THIS.nQuietZone) + REPLICATE( "@", THIS.nBearerBarWidth * 2)
      THIS.nLenPattern = LEN(THIS.cPattern)

      *=== BEGIN NEW
      *-- Barcode Size
      THIS.nBarcodeWidth = (THIS.nMargin * 2 ) + (THIS.nLenPattern * THIS.nFactor)

      *-- Image Size
      m.lnImageWidth = MAX(THIS.nBarcodeWidth, THIS.nImageWidth)

      *-- AlignBarCode -> 0=Left, 1=Center, 2=Right
      LOCAL lnAlign
      DO CASE
        CASE THIS.nAlignBarCode = 0
          m.lnAlign = 0
        CASE THIS.nAlignBarCode = 2
          m.lnAlign = m.lnImageWidth - THIS.nBarcodeWidth
        OTHERWISE
          m.lnAlign = (m.lnImageWidth - THIS.nBarcodeWidth) / 2
      ENDCASE

      *=== END NEW

      *-- Create image
      THIS.oImg.CREATE(m.lnImageWidth, THIS.nImageHeight)
      THIS.oImg.HorizontalResolution = THIS.nResolution
      THIS.oImg.VerticalResolution = THIS.nResolution
      THIS.oGra = CREATEOBJECT("Graphics", THIS.oImg.GetImage())
      THIS.oGra.SetBrush(THIS.nBackColor)
      THIS.oGra.FillRect(0, 0, m.lnImageWidth, THIS.nImageHeight)
      THIS.oGra.SetPen(THIS.nBarsColor, THIS.nFactor)

      LOCAL m.lnHRH && Human Readable Height

      IF THIS.lShowHumanReadableText
        m.lnHRH = THIS.nImageHeight - THIS.nTextHeight
      ELSE
        m.lnHRH = THIS.nImageHeight
      ENDIF

      LOCAL ln, lnCol

      *-- Barcode types
      DO CASE
        CASE THIS.nBarcodeType = FBC_CODE_POSTNET && PostNet
          FOR m.ln = 1 TO THIS.nLenPattern
            m.lnCol = m.ln - 1
            DO CASE
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "2"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor  + THIS.nMargin + m.lnAlign,  THIS.nMargin, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, m.lnHRH - THIS.nMargin )
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "1"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, m.lnHRH / 1.90, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, CEILING(m.lnHRH - THIS.nMargin))
            ENDCASE
          ENDFOR

        CASE THIS.nBarcodeType = FBC_CODE_IMB ; && Intelligent Mail Barcode
          OR THIS.nBarcodeType = FBC_CODE_KIX ; && KIX-Code
          OR THIS.nBarcodeType = FBC_CODE_RM4SCC  && RM4SCC

          FOR m.ln = 1 TO THIS.nLenPattern
            m.lnCol = m.ln - 1
            LOCAL lnFull
            m.lnFull = m.lnHRH - 2 * THIS.nMargin
            DO CASE
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "A" && Asc
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nMargin, m.lnCol * THIS.nFactor  + THIS.nMargin + m.lnAlign, THIS.nMargin + m.lnFull * .66 )
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "D" && Desc
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nMargin + m.lnFull * .33, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, m.lnHRH - THIS.nMargin)
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "T" && Togle
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nMargin + m.lnFull * .33, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nMargin + m.lnFull * .66)
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "F" && Full
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nMargin, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, m.lnHRH - THIS.nMargin)
            ENDCASE
          ENDFOR

        CASE THIS.nBarcodeType = FBC_CODE_PHARMA2 && Two Track Pharmacode
          LOCAL lnBarFull
          m.lnBarFull = m.lnHRH - THIS.nMargin

          FOR m.ln = 1 TO THIS.nLenPattern
            m.lnCol = m.ln - 1
            DO CASE
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "A"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor  + THIS.nMargin + m.lnAlign,  THIS.nMargin, m.lnCol * THIS.nFactor  + THIS.nMargin + m.lnAlign, (m.lnBarFull + THIS.nMargin) / 2)
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "D"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, (THIS.nMargin + m.lnBarFull) / 2, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, m.lnBarFull)
              CASE SUBSTR(THIS.cPattern, m.ln, 1) == "F"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nMargin, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, m.lnBarFull)
              OTHERWISE
                * Space
            ENDCASE
          ENDFOR

        OTHERWISE && Rest of bar codes
          FOR m.ln = 1 TO THIS.nLenPattern
            m.lnCol = m.ln - 1
            IF SUBSTR(THIS.cPattern, m.ln, 1) == "1"
              THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nMargin, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, m.lnHRH - THIS.nMargin)
            ENDIF
          ENDFOR
      ENDCASE

      IF THIS.lShowHumanReadableText

        LOCAL lnLeft, lnRigth, lnTextMargin, lcBin
        *-- Clear zone
        m.lnTextMargin = m.lnAlign + (THIS.nBearerBarWidth + THIS.nQuietZone - 2) * THIS.nFactor + THIS.nMargin
        THIS.oGra.SetBrush(THIS.nBackColor)
        THIS.oGra.SetRect(m.lnTextMargin, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, THIS.nBarcodeWidth - m.lnTextMargin * 2 + m.lnAlign * 2, THIS.nTextHeight)
        THIS.oGra.FillRect(m.lnTextMargin, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, THIS.nBarcodeWidth - m.lnTextMargin * 2 + m.lnAlign * 2, THIS.nTextHeight)

        DO CASE
          CASE THIS.nBarcodeType = FBC_CODE_EAN13 && EAN-13
            *-- 1st. digit
            m.lnLeft = THIS.nMargin - (2 * THIS.nFactor) + m.lnAlign
            m.lnRight = (THIS.nQuietZone * THIS.nFactor)
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 1, 1), THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            *-- 2nd to 7th digit
            m.lnLeft = THIS.nQuietZone * THIS.nFactor + THIS.nMargin + m.lnAlign
            m.lnRight = 48 * THIS.nFactor
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 2, 6), THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            *-- 8th to 13th digit
            m.lnLeft = ((THIS.nQuietZone + 46) * THIS.nFactor) + THIS.nMargin + m.lnAlign
            m.lnRight = 48 * THIS.nFactor
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 8, 6), THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)

            *-- Supplemental
            IF NOT EMPTY(THIS.cSupplementalText)
              m.lnLeft = (((2 * THIS.nQuietZone) + 91) * THIS.nFactor) + THIS.nMargin + m.lnAlign
              m.lnRight = (LEN(THIS.cSupplementalText) + 1) * 9 * THIS.nFactor
              THIS.oGra.SetBrush(THIS.nBackColor)
              THIS.oGra.SetRect(m.lnLeft, THIS.nMargin, m.lnRight, THIS.nTextHeight)
              THIS.oGra.FillRect(m.lnLeft, THIS.nMargin, m.lnRight, THIS.nTextHeight)
              THIS.oGra.SetAlignment(1, 1, 0)
              THIS.oGra.SetBrush(THIS.nFontColor)
              THIS.oGra.DrawString(THIS.cSupplementalText, THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            ENDIF

            *-- Redraw lines
            m.lcBin = REPLICATE( "0", THIS.nQuietZone) + "101" + REPLICATE("0", 6 * 7) + "01010" +  REPLICATE("0", 6 * 7) + "101" + REPLICATE( "0", THIS.nQuietZone)
            FOR m.ln = 1 TO LEN(m.lcBin)
              m.lnCol = m.ln - 1
              IF SUBSTR(m.lcBin, m.ln, 1) = "1"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nImageHeight - THIS.nTextHeight / 2 - THIS.nMargin - 2)
              ENDIF
            ENDFOR

          CASE THIS.nBarcodeType = FBC_CODE_EAN8 && EAN-8
            *-- 1st to 4th digit
            m.lnLeft = THIS.nQuietZone * THIS.nFactor + THIS.nMargin + m.lnAlign
            m.lnRight = 34 * THIS.nFactor
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 1, 4), THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            *-- 5th to 8th digit
            m.lnLeft = ((THIS.nQuietZone + 32) * THIS.nFactor) + THIS.nMargin + 1 + m.lnAlign
            m.lnRight = 34 * THIS.nFactor
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 5, 4), THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)

            *-- Supplemental
            IF NOT EMPTY(THIS.cSupplementalText)
              m.lnLeft = (((2 * THIS.nQuietZone) + 64) * THIS.nFactor) + THIS.nMargin + m.lnAlign
              m.lnRight = (LEN(THIS.cSupplementalText) + 1) * 9 * THIS.nFactor
              THIS.oGra.SetBrush(THIS.nBackColor)
              THIS.oGra.SetRect(m.lnLeft, THIS.nMargin, m.lnRight, THIS.nTextHeight)
              THIS.oGra.FillRect(m.lnLeft, THIS.nMargin, m.lnRight, THIS.nTextHeight)
              THIS.oGra.SetAlignment(1, 1, 0)
              THIS.oGra.SetBrush(THIS.nFontColor)
              THIS.oGra.DrawString(THIS.cSupplementalText, THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            ENDIF

            *-- Redraw lines
            m.lcBin = REPLICATE( "0", THIS.nQuietZone) + "101" + REPLICATE("0", 4 * 7) + "01010" +  REPLICATE("0", 4 * 7) + "101" + REPLICATE( "0", THIS.nQuietZone)
            FOR m.ln = 1 TO LEN(m.lcBin)
              m.lnCol = m.ln - 1
              IF SUBSTR(m.lcBin, m.ln, 1) = "1"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nImageHeight - THIS.nTextHeight / 2 - THIS.nMargin - 2)
              ENDIF
            ENDFOR

          CASE THIS.nBarcodeType = FBC_CODE_UPCA && UPC-A
            *-- 1st. digit
            m.lnLeft = THIS.nMargin + m.lnAlign
            m.lnRight = (THIS.nQuietZone * THIS.nFactor)
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 1, 1), THIS.cFontName, THIS.nFontHeight * 0.85, THIS.cFontStyle)
            *-- 2nd to 6th digit
            m.lnLeft = (THIS.nQuietZone + 5) * THIS.nFactor + THIS.nMargin + m.lnAlign
            m.lnRight = (44) * THIS.nFactor
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 2, 5), THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            *-- 7th to 12th digit
            m.lnLeft = ((THIS.nQuietZone + 45) * THIS.nFactor) + THIS.nMargin + m.lnAlign
            m.lnRight = 44 * THIS.nFactor
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 7, 5), THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            *-- 12st. digit
            m.lnLeft = (103 * THIS.nFactor) + THIS.nMargin + m.lnAlign
            m.lnRight = THIS.nQuietZone * THIS.nFactor + (4 * THIS.nFactor)
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 12, 1), THIS.cFontName, THIS.nFontHeight * 0.85, THIS.cFontStyle)

            *-- Supplemental
            IF NOT EMPTY(THIS.cSupplementalText)
              m.lnLeft = (((2 * THIS.nQuietZone) + 92) * THIS.nFactor) + THIS.nMargin + m.lnAlign
              m.lnRight = (LEN(THIS.cSupplementalText) + 1) * 9 * THIS.nFactor
              THIS.oGra.SetBrush(THIS.nBackColor)
              THIS.oGra.SetRect(m.lnLeft, THIS.nMargin, m.lnRight, THIS.nTextHeight)
              THIS.oGra.FillRect(m.lnLeft, THIS.nMargin, m.lnRight, THIS.nTextHeight)
              THIS.oGra.SetAlignment(1, 1, 0)
              THIS.oGra.SetBrush(THIS.nFontColor)
              THIS.oGra.DrawString(THIS.cSupplementalText, THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            ENDIF

            *-- Redraw lines
            m.lcBin = LEFT(THIS.cPattern, THIS.nQuietZone + 3 + 7) + REPLICATE("0", 5 * 7) + "01010" +  REPLICATE("0", 5 * 7) + SUBSTR(THIS.cPattern, THIS.nQuietZone + 3 + 5 + (11 * 7) + 1, 7 + 3 + 1)
            FOR m.ln = 1 TO LEN(m.lcBin)
              m.lnCol = m.ln - 1
              IF SUBSTR(m.lcBin, m.ln, 1) = "1"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nImageHeight - THIS.nTextHeight / 2 - THIS.nMargin - 2)
              ENDIF
            ENDFOR

          CASE THIS.nBarcodeType = FBC_CODE_UPCE && UPC-E
            *-- 1st. digit
            m.lnLeft = THIS.nMargin + m.lnAlign
            m.lnRight = (THIS.nQuietZone * THIS.nFactor)
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 1, 1), THIS.cFontName, THIS.nFontHeight * 0.85, THIS.cFontStyle)
            *-- 2nd to 6th digit
            m.lnLeft = ((THIS.nQuietZone) * THIS.nFactor) + THIS.nMargin - 1 + m.lnAlign
            m.lnRight = 48 * THIS.nFactor
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 2, 6), THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            *-- 8th. digit
            m.lnLeft = (60 * THIS.nFactor) + THIS.nMargin - (1 * THIS.nFactor) + m.lnAlign
            m.lnRight = (THIS.nQuietZone * THIS.nFactor) + (4 * THIS.nFactor)
            THIS.oGra.SetBrush(THIS.nBackColor)
            THIS.oGra.SetRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.FillRect(m.lnLeft, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnRight, THIS.nTextHeight)
            THIS.oGra.SetAlignment(1, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(SUBSTR(THIS.cHumanReadableText, 8, 1), THIS.cFontName, THIS.nFontHeight * 0.85, THIS.cFontStyle)

            *-- Supplemental
            IF NOT EMPTY(THIS.cSupplementalText)
              m.lnLeft = (((2 * THIS.nQuietZone) + 48) * THIS.nFactor) + THIS.nMargin + m.lnAlign
              m.lnRight = (LEN(THIS.cSupplementalText) + 1) * 9 * THIS.nFactor
              THIS.oGra.SetBrush(THIS.nBackColor)
              THIS.oGra.SetRect(m.lnLeft, THIS.nMargin, m.lnRight, THIS.nTextHeight)
              THIS.oGra.FillRect(m.lnLeft, THIS.nMargin, m.lnRight, THIS.nTextHeight)
              THIS.oGra.SetAlignment(1, 1, 0)
              THIS.oGra.SetBrush(THIS.nFontColor)
              THIS.oGra.DrawString(THIS.cSupplementalText, THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
            ENDIF

            *-- Redraw lines
            m.lcBin = LEFT(THIS.cPattern, THIS.nQuietZone + 4 ) + REPLICATE("0", 6 * 7)  + "10101"
            FOR m.ln = 1 TO LEN(m.lcBin)
              m.lnCol = m.ln - 1
              IF SUBSTR(m.lcBin, m.ln, 1) = "1"
                THIS.oGra.DrawLine(m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nImageHeight - THIS.nTextHeight - THIS.nMargin, m.lnCol * THIS.nFactor + THIS.nMargin + m.lnAlign, THIS.nImageHeight - THIS.nTextHeight / 2 - THIS.nMargin - 2)
              ENDIF
            ENDFOR

          OTHERWISE  && The rest of the bar code
            THIS.oGra.SetAlignment(THIS.nAlignText, 1, 0)
            THIS.oGra.SetBrush(THIS.nFontColor)
            THIS.oGra.DrawString(THIS.cHumanReadableText, THIS.cFontName, THIS.nFontHeight, THIS.cFontStyle)
        ENDCASE
      ENDIF

      *-- Only the bar code ITF-14 can be Bearer Bar
      IF THIS.nBarcodeType = FBC_CODE_ITF14 AND THIS.nBearerBar # 0
        THIS.oGra.SetPen(THIS.nBarsColor, THIS.nBearerBarWidth)
        DO CASE
          CASE THIS.nBearerBar = 2 && Top and Bottom
            *-- Top
            THIS.oGra.DrawLine(THIS.nMargin + m.lnAlign, FLOOR(THIS.nMargin + THIS.nBearerBarWidth / 2), THIS.nBarcodeWidth - THIS.nMargin + m.lnAlign, FLOOR(THIS.nMargin + THIS.nBearerBarWidth / 2))
            *-- Bottom
            IF THIS.lShowHumanReadableText
              THIS.oGra.DrawLine(THIS.nMargin + m.lnAlign, FLOOR(THIS.nImageHeight - THIS.nMargin - THIS.nTextHeight - THIS.nBearerBarWidth / 2), THIS.nBarcodeWidth - THIS.nMargin + m.lnAlign, FLOOR(THIS.nImageHeight - THIS.nMargin - THIS.nTextHeight - THIS.nBearerBarWidth / 2))
            ELSE
              THIS.oGra.DrawLine(THIS.nMargin + m.lnAlign, FLOOR(THIS.nImageHeight - THIS.nMargin - THIS.nBearerBarWidth / 2), THIS.nBarcodeWidth - THIS.nMargin + m.lnAlign, FLOOR(THIS.nImageHeight - THIS.nMargin - THIS.nBearerBarWidth / 2))
            ENDIF

          OTHERWISE && Box
            IF THIS.lShowHumanReadableText
              THIS.oGra.DrawRect( FLOOR(THIS.nBearerBarWidth / 2 + THIS.nMargin + m.lnAlign), FLOOR(THIS.nMargin + THIS.nBearerBarWidth / 2), THIS.nBarcodeWidth - THIS.nBearerBarWidth - THIS.nMargin * 2, CEILING(THIS.nImageHeight - THIS.nMargin * 2 - THIS.nBearerBarWidth - THIS.nTextHeight))
            ELSE
              THIS.oGra.DrawRect( FLOOR(THIS.nBearerBarWidth / 2 + THIS.nMargin + m.lnAlign), FLOOR(THIS.nMargin + THIS.nBearerBarWidth / 2), THIS.nBarcodeWidth - THIS.nBearerBarWidth - THIS.nMargin * 2, CEILING(THIS.nImageHeight - THIS.nMargin * 2 - THIS.nBearerBarWidth))
            ENDIF
        ENDCASE
      ENDIF

      *-- Rotation of image
      THIS.oImg.ROTATEFLIP(THIS.nRotation)
    ENDIF && ISNULL(THIS.cPattern)

    *--- Comment this line, only to examples
    *    THIS.oImg.ToClipboard()

    *-- Save the image
    LOCAL lcFolder
    IF EMPTY(m.tcImageFile)
      m.lcFolder = ADDBS(THIS.cTempPath)
      IF NOT DIRECTORY(m.lcFolder)
        MD (m.lcFolder)
      ENDIF
      m.tcImageFile = FORCEEXT(m.lcFolder + SYS(2015), THIS.cImageType)
    ELSE
      m.lcFolder = JUSTPATH(m.tcImageFile)
      IF NOT DIRECTORY(m.lcFolder)
        MD (m.lcFolder)
      ENDIF
      m.tcImageFile = FORCEEXT(m.tcImageFile, THIS.cImageType)
    ENDIF
    DO CASE
      CASE THIS.cImageType = "JPG"
        THIS.oImg.SaveAsJPEG(m.tcImageFile, 100)
      CASE THIS.cImageType = "BMP"
        THIS.oImg.SaveAsBMP(m.tcImageFile)
      CASE THIS.cImageType = "GIF"
        THIS.oImg.SaveAsGIF(m.tcImageFile)
      CASE THIS.cImageType = "PNG"
        THIS.oImg.SaveAsPNG(m.tcImageFile)
      CASE THIS.cImageType = "TIF"
        THIS.oImg.SaveAsTIFF(m.tcImageFile)
      OTHERWISE
        THIS.cImageType = "JPG"
        THIS.oImg.SaveAsJPEG(FORCEEXT(m.tcImageFile, THIS.cImageType), 100)
    ENDCASE

    THIS.oGra = NULL
    THIS.oImg = NULL
    THIS.oGdi = NULL

    THIS.cImageFile = m.tcImageFile
    CLEAR RESOURCES (m.tcImageFile)
    RETURN m.tcImageFile

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE BarcodeTest(tcValue, tcImageFile, tcSuperPro)
  *------------------------------------------------------
  * Test a valid input for a barcode
  *------------------------------------------------------
  PROCEDURE BarcodeTest(tcValue, tcImageFile, tcSuperPro)

    LOCAL ARRAY laSuperPro(1)
    LOCAL lcProper, lnCon

    *-- Properties in 3rd. parameter
    IF NOT EMPTY(m.tcSuperPro)
      THIS.ResetProperties()
      m.tcSuperPro = ALLTRIM(CHRTRAN(m.tcSuperPro, ",", CHR(13)))
      ALINES(m.laSuperPro, m.tcSuperPro)
      FOR m.lnCon = 1 TO ALEN(m.laSuperPro)
        m.lcProper = "THIS." + SUBSTR(m.laSuperPro(m.lnCon), 1, AT("=", m.laSuperPro[m.lnCon]) - 1)
        IF TYPE(m.lcProper) # "U"
          m.laSuperPro(m.lnCon) = "THIS." + m.laSuperPro(m.lnCon)
          &laSuperPro[m.lnCon]
        ENDIF
      ENDFOR
      IF NOT EMPTY(THIS.cText)
        m.tcValue = THIS.cText
      ENDIF
    ENDIF

    IF EMPTY(m.tcValue)
      m.tcValue = THIS.cText
    ENDIF

    STORE m.tcValue TO THIS.cText, THIS.cTextValue, THIS.cHumanReadableText

    *--- Generates the pattern for test
    THIS.BarcodePattern()
    RETURN NOT ISNULL(THIS.cPattern)
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_I2of5()
  *------------------------------------------------------
  * Generate bar code Interleaved 2 of 5
  *------------------------------------------------------
  PROCEDURE Code_I2of5()

    LOCAL lcValid, lnI, lnJ, lcRet, lcStart, lcStop, lnLen
    LOCAL lcPar

    *-- Numbers only
    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars not valid
      THIS.cMsgError = FBC_I2O5_01
      RETURN NULL
    ENDIF

    *-- Calculate and add the check digit
    IF THIS.lAddCheckDigit
      THIS.cTextValue = THIS.cTextValue + THIS.CheckDigitEan(THIS.cTextValue)
      IF THIS.lShowCheckDigit
        THIS.cHumanReadableText = THIS.cTextValue
      ENDIF
    ENDIF

    m.lnLen = LEN(THIS.cTextValue)
    *--- Length must be even
    IF MOD(m.lnLen, 2) # 0
      THIS.cTextValue = "0" + THIS.cTextValue
      m.lnLen = LEN(THIS.cTextValue)
      *-- Thanks Vishal Anand (India)
      IF THIS.lShowCheckDigit
        THIS.cHumanReadableText = THIS.cTextValue
      ELSE
        THIS.cHumanReadableText = "0" + THIS.cText
      ENDIF
    ENDIF

    LOCAL ARRAY la(10)
    *-- Coding of each character
    m.la[1] = "NNWWN" && 0
    m.la[2] = "WNNNW" && 1
    m.la[3] = "NWNNW" && 2
    m.la[4] = "WWNNN" && 3
    m.la[5] = "NNWNW" && 4
    m.la[6] = "WNWNN" && 5
    m.la[7] = "NWWNN" && 6
    m.la[8] = "NNNWW" && 7
    m.la[9] = "WNNWN" && 8
    m.la[10] = "NWNWN" && 9
    m.lcStart = "1010"  && Start
    m.lcStop = "B01"  && "1101" Stop

    *-- Encode 0s and 1s
    m.lcRet = ""
    FOR m.lnJ = 1 TO m.lnLen STEP 2
      m.lcPar = SUBSTR(THIS.cTextValue, m.lnJ, 2)
      *-- Interlace each pair
      FOR m.lnI = 1 TO 5
        m.lcRet = m.lcRet + IIF(SUBSTR(m.la[VAL(LEFT(m.lcPar, 1)) + 1], m.lnI, 1) = "N", "1", "B") + IIF(SUBSTR(m.la[VAL(RIGHT(m.lcPar, 1)) + 1], m.lnI, 1) = "N", "0", "S")
      ENDFOR
    ENDFOR

    *-- Add Start and Stop and apply ratio
    RETURN THIS.ApplyRatio(m.lcStart + m.lcRet + m.lcStop, THIS.nRatio)

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_S2of5()
  *------------------------------------------------------
  * Generate bar code Standard 2 of 5
  *------------------------------------------------------
  PROCEDURE Code_S2of5()

    LOCAL lnI, lnJ, lcRet, lcStart, lcStop, lnLen, lcValid, lnSum, lnCon

    *-- Numbers only
    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars not valid
      THIS.cMsgError = FBC_S2O5_01
      RETURN NULL
    ENDIF
    m.lnLen = LEN(THIS.cTextValue)

    *-- Calculate and add the check digit
    IF THIS.lAddCheckDigit
      m.lnSum = 0
      m.lnCon = 1
      FOR m.lnI = m.lnLen TO 1 STEP - 1
        m.lnSum = m.lnSum + VAL(SUBSTR(THIS.cTextValue, m.lnI, 1)) * IIF(MOD(m.lnCon, 2) = 0, 1, 3)
        m.lnCon = m.lnCon + 1
      ENDFOR
      THIS.cTextValue = THIS.cTextValue + TRANSFORM(MOD((10 - MOD(m.lnSum, 10)), 10))
      IF THIS.lShowCheckDigit
        THIS.cHumanReadableText = THIS.cTextValue
      ENDIF
      m.lnLen = LEN(THIS.cTextValue)
    ENDIF

    LOCAL ARRAY la[10]
    *-- Coding of character
    m.la[1] = "1010B0B010" && 0
    m.la[2] = "B0101010B0" && 1
    m.la[3] = "10B01010B0" && 2
    m.la[4] = "B0B0101010" && 3
    m.la[5] = "1010B010B0" && 4
    m.la[6] = "B010B01010" && 5
    m.la[7] = "10B0B01010" && 6
    m.la[8] = "101010B0B0" && 7
    m.la[9] = "B01010B010" && 8
    m.la[10] = "10B010B010" && 9
    m.lcStart = "B0B010"  && Start
    m.lcStop = "B010B0"  && Stop

    *-- Encode 0s and 1s
    m.lcRet = ""
    FOR m.lnI = 1 TO m.lnLen
      m.lcRet = m.lcRet + m.la(VAL(SUBSTR(THIS.cTextValue, m.lnI, 1)) + 1)
    ENDFOR

    *-- Add Start and Stop and apply ratio
    RETURN THIS.ApplyRatio(m.lcStart + m.lcRet + m.lcStop, THIS.nRatio)

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Codabar()
  *------------------------------------------------------
  * Generate Codabar bar code
  *------------------------------------------------------
  PROCEDURE Code_Codabar()

    LOCAL lcRet, lcValid, lcChar, ln

    THIS.cTextValue = ALLTRIM(UPPER(THIS.cTextValue))

    *-- Start char
    IF NOT LEFT(THIS.cTextValue, 1) $ "ABCDTN*E"
      THIS.cTextValue = "A" + THIS.cTextValue
    ENDIF

    *-- Stop char
    IF NOT RIGHT(THIS.cTextValue, 1) $ "ABCDTN*E"
      THIS.cTextValue = THIS.cTextValue + "B"
    ENDIF

    *-- Chars valid only
    m.lcValid = "0123456789-$:/.+"
    IF NOT EMPTY(CHRTRAN(SUBSTR(THIS.cTextValue, 2, LEN(THIS.cTextValue) - 2), m.lcValid, ""))
      *-- Chars not valid
      THIS.cMsgError = FBC_CODABAR_01
      RETURN NULL
    ENDIF

    m.lcRet = ""
    FOR m.ln = 1 TO LEN(THIS.cTextValue)
      m.lcChar = SUBST(THIS.cTextValue, m.ln, 1)
      DO CASE
        CASE m.lcChar = "0"
          m.lcRet = m.lcRet + "101010001110"
        CASE m.lcChar = "1"
          m.lcRet = m.lcRet + "101011100010"
        CASE m.lcChar = "2"
          m.lcRet = m.lcRet + "101000101110"
        CASE m.lcChar = "3"
          m.lcRet = m.lcRet + "111000101010"
        CASE m.lcChar = "4"
          m.lcRet = m.lcRet + "101110100010"
        CASE m.lcChar = "5"
          m.lcRet = m.lcRet + "111010100010"
        CASE m.lcChar = "6"
          m.lcRet = m.lcRet + "100010101110"
        CASE m.lcChar = "7"
          m.lcRet = m.lcRet + "100010111010"
        CASE m.lcChar = "8"
          m.lcRet = m.lcRet + "100011101010"
        CASE m.lcChar = "9"
          m.lcRet = m.lcRet + "111010001010"
        CASE m.lcChar = "-"
          m.lcRet = m.lcRet + "101000111010"
        CASE m.lcChar = "$"
          m.lcRet = m.lcRet + "101110001010"
        CASE m.lcChar = ":"
          m.lcRet = m.lcRet + "11101011101110"
        CASE m.lcChar = "/"
          m.lcRet = m.lcRet + "11101110101110"
        CASE m.lcChar = "."
          m.lcRet = m.lcRet + "11101110111010"
        CASE m.lcChar = "+"
          m.lcRet = m.lcRet + "10111011101110"
        CASE m.lcChar = "A"
          m.lcRet = m.lcRet + "10111000100010" && Start/Stop A
        CASE m.lcChar = "B"
          m.lcRet = m.lcRet + "10100010001110" && Start/Stop B
        CASE m.lcChar = "C"
          m.lcRet = m.lcRet + "10001000101110" && Start/Stop C
        CASE m.lcChar = "D"
          m.lcRet = m.lcRet + "10100011100010" && Start/Stop D
        CASE m.lcChar = "T"
          m.lcRet = m.lcRet + "10111000100010" && Start/Stop T
        CASE m.lcChar = "N"
          m.lcRet = m.lcRet + "10001000101110" && Start/Stop N
        CASE m.lcChar = "*"
          m.lcRet = m.lcRet + "10100010001110" && Start/Stop *
        CASE m.lcChar = "E"
          m.lcRet = m.lcRet + "10100011100010" && Start/Stop E
      ENDCASE

    ENDFOR

    IF THIS.lShowStartStopChars
      THIS.cHumanReadableText = THIS.cTextValue
    ELSE
      THIS.cHumanReadableText = SUBSTR(THIS.cTextValue, 2, LEN(THIS.cTextValue) - 2)
    ENDIF
    THIS.cHumanReadableText = THIS.AddSpace(THIS.cHumanReadableText)

    *--  Apply ratio
    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_128()
  *------------------------------------------------------
  * Generate Code128 bar code (Sets A, B and C)
  *------------------------------------------------------
  PROCEDURE Code_128()

    LOCAL lnSum, lnLen, lc, ln, lcStart, lcStop, lcRet

    *-- Special characters
    #DEFINE FBC_SHIFT CHR(98 + 32)
    #DEFINE FBC_CODEC CHR(99 + 32)
    #DEFINE FBC_CODEB CHR(100 + 32)
    #DEFINE FBC_CODEA CHR(101 + 32)
    #DEFINE FBC_FNC1 CHR(102 + 32)

    *-- Valid chars
    * Set A = [CHR(0)..CHR(95)]
    * Set B = [CHR(32)..CHR(127)]
    * Set C = [CHR(48)..CHR(57)] -> [0..9]
    * Auto  = [CHR(0)..CHR(95)]

    DO CASE
      CASE UPPER(THIS.cSet128) = "A"
        IF NOT THIS.ValidAscii(THIS.cTextValue, 0, 95)
          *-- Chars not valid
          THIS.cMsgError = FBC_128A_01
          RETURN NULL
        ENDIF
        m.lnSum = 103

      CASE UPPER(THIS.cSet128) = "B"
        IF NOT THIS.ValidAscii(THIS.cTextValue, 32, 127)
          *-- Chars not valid
          THIS.cMsgError = FBC_128B_01
          RETURN NULL
        ENDIF
        m.lnSum = 104

      CASE UPPER(THIS.cSet128) = "C"
        IF NOT THIS.ValidAscii(THIS.cTextValue, 48, 57)
          *-- Chars not valid
          THIS.cMsgError = FBC_128C_01
          RETURN NULL
        ENDIF

        *--- Length must be even
        IF MOD(LEN(THIS.cTextValue), 2) # 0
          THIS.cTextValue = "0" + THIS.cTextValue
          THIS.cHumanReadableText = THIS.cTextValue
        ENDIF

        THIS.cTextValue = THIS.Pair2Char(THIS.cTextValue)
        m.lnSum = 105

      OTHERWISE && Auto [*]

        *-- Special characters
        #DEFINE FBC_SHIFT CHR(98 + 32)
        #DEFINE FBC_CODEC CHR(99 + 32)
        #DEFINE FBC_CODEB CHR(100 + 32)
        #DEFINE FBC_CODEA CHR(101 + 32)
        #DEFINE FBC_FNC1 CHR(102 + 32)

        *-- Current Set
        LOCAL lcCurrentSet
        IF THIS.IsNumeric(SUBSTR(THIS.cTextValue, 1, 4))
          m.lcCurrentSet = "C"
          m.lnSum = 105 && C
        ELSE
          IF THIS.ValidAscii(THIS.cTextValue, 32, 134)
            m.lcCurrentSet = "B"
            m.lnSum = 104 && B
          ELSE
            m.lcCurrentSet = "A"
            m.lnSum = 103 && A
          ENDIF
        ENDIF

        *-- Check all string
        LOCAL lcPar, lcStr, ln
        STORE "" TO m.lcStr, m.lcPar
        FOR m.ln = 1 TO LEN(THIS.cTextValue)
          m.lcPar = m.lcPar + SUBSTR(THIS.cTextValue, m.ln, 1)
          IF LEN(m.lcPar) = 1
            IF INLIST(m.lcPar, FBC_FNC1, FBC_SHIFT, FBC_CODEC, FBC_CODEB, FBC_CODEA)
              *-- Control code
              m.lcStr = m.lcStr + m.lcPar
            ELSE  && INLIST(...
              IF ISDIGIT(m.lcPar) AND m.ln < LEN(THIS.cTextValue)
                LOOP
              ELSE && ISDIGIT(m.lcPar)
                IF m.lcCurrentSet = "C"
                  IF THIS.ValidAscii(SUBSTR(THIS.cTextValue, m.ln), 32, 134) && The rest
                    m.lcCurrentSet = "B"
                    m.lcStr = m.lcStr + FBC_CODEB + m.lcPar
                  ELSE && THIS.ValidAscii(
                    m.lcCurrentSet = "A"
                    m.lcStr = m.lcStr + FBC_CODEA + m.lcPar
                  ENDIF && THIS.ValidAscii(
                ELSE && m.lcCurrentSet = "C"
                  m.lcStr = m.lcStr + m.lcPar
                ENDIF && m.lcCurrentSet = "C"
              ENDIF && ISDIGIT(m.lcPar)
            ENDIF  && INLIST(...
          ELSE && LEN(m.lcPar) = 1
            IF THIS.IsNumeric(m.lcPar)
              IF m.lcCurrentSet = "C"
                m.lcStr = m.lcStr + THIS.Pair2Char(m.lcPar)
              ELSE && m.lcCurrentSet = "C"
                *-- Change Current Set C if 4 digit are numeric
                IF THIS.IsNumeric(SUBSTR(THIS.cTextValue, m.ln + 1, 2))
                  m.lcCurrentSet = "C"
                  m.lcStr = m.lcStr + FBC_CODEC + THIS.Pair2Char(m.lcPar)
                ELSE && THIS.IsNumeric(SUBSTR(THIS.cTextValue,m.ln+1,2))
                  m.lcStr = m.lcStr + m.lcPar
                ENDIF && THIS.IsNumeric(SUBSTR(THIS.cTextValue,m.ln+1,2))
              ENDIF && m.lcCurrentSet = "C"
            ELSE && THIS.IsNumeric(m.lcPar)
              *-- 1st. is digit
              IF m.lcCurrentSet = "C"
                IF THIS.ValidAscii(SUBSTR(THIS.cTextValue, m.ln), 32, 134) && The rest
                  m.lcCurrentSet = "B"
                  m.lcStr = m.lcStr + FBC_CODEB + m.lcPar
                ELSE && THIS.ValidAscii(
                  m.lcCurrentSet = "A"
                  m.lcStr = m.lcStr + FBC_CODEA + m.lcPar
                ENDIF && THIS.ValidAscii(
              ELSE && m.lcCurrentSet = "C"
                m.lcStr = m.lcStr + m.lcPar
              ENDIF && m.lcCurrentSet = "C"
            ENDIF &&  && THIS.IsNumeric(m.lcPar)
          ENDIF && LEN(m.lcPar) = 1
          m.lcPar = ""
        ENDFOR

        THIS.cTextValue = m.lcStr

    ENDCASE

    LOCAL ARRAY laCod128[106]
    m.laCod128[1] = "11011001100"
    m.laCod128[2] = "11001101100"
    m.laCod128[3] = "11001100110"
    m.laCod128[4] = "10010011000"
    m.laCod128[5] = "10010001100"
    m.laCod128[6] = "10001001100"
    m.laCod128[7] = "10011001000"
    m.laCod128[8] = "10011000100"
    m.laCod128[9] = "10001100100"
    m.laCod128[10] = "11001001000"
    m.laCod128[11] = "11001000100"
    m.laCod128[12] = "11000100100"
    m.laCod128[13] = "10110011100"
    m.laCod128[14] = "10011011100"
    m.laCod128[15] = "10011001110"
    m.laCod128[16] = "10111001100"
    m.laCod128[17] = "10011101100"
    m.laCod128[18] = "10011100110"
    m.laCod128[19] = "11001110010"
    m.laCod128[20] = "11001011100"
    m.laCod128[21] = "11001001110"
    m.laCod128[22] = "11011100100"
    m.laCod128[23] = "11001110100"
    m.laCod128[24] = "11101101110"
    m.laCod128[25] = "11101001100"
    m.laCod128[26] = "11100101100"
    m.laCod128[27] = "11100100110"
    m.laCod128[28] = "11101100100"
    m.laCod128[29] = "11100110100"
    m.laCod128[30] = "11100110010"
    m.laCod128[31] = "11011011000"
    m.laCod128[32] = "11011000110"
    m.laCod128[33] = "11000110110"
    m.laCod128[34] = "10100011000"
    m.laCod128[35] = "10001011000"
    m.laCod128[36] = "10001000110"
    m.laCod128[37] = "10110001000"
    m.laCod128[38] = "10001101000"
    m.laCod128[39] = "10001100010"
    m.laCod128[40] = "11010001000"
    m.laCod128[41] = "11000101000"
    m.laCod128[42] = "11000100010"
    m.laCod128[43] = "10110111000"
    m.laCod128[44] = "10110001110"
    m.laCod128[45] = "10001101110"
    m.laCod128[46] = "10111011000"
    m.laCod128[47] = "10111000110"
    m.laCod128[48] = "10001110110"
    m.laCod128[49] = "11101110110"
    m.laCod128[50] = "11010001110"
    m.laCod128[51] = "11000101110"
    m.laCod128[52] = "11011101000"
    m.laCod128[53] = "11011100010"
    m.laCod128[54] = "11011101110"
    m.laCod128[55] = "11101011000"
    m.laCod128[56] = "11101000110"
    m.laCod128[57] = "11100010110"
    m.laCod128[58] = "11101101000"
    m.laCod128[59] = "11101100010"
    m.laCod128[60] = "11100011010"
    m.laCod128[61] = "11101111010"
    m.laCod128[62] = "11001000010"
    m.laCod128[63] = "11110001010"
    m.laCod128[64] = "10100110000"
    m.laCod128[65] = "10100001100"
    m.laCod128[66] = "10010110000"
    m.laCod128[67] = "10010000110"
    m.laCod128[68] = "10000101100"
    m.laCod128[69] = "10000100110"
    m.laCod128[70] = "10110010000"
    m.laCod128[71] = "10110000100"
    m.laCod128[72] = "10011010000"
    m.laCod128[73] = "10011000010"
    m.laCod128[74] = "10000110100"
    m.laCod128[75] = "10000110010"
    m.laCod128[76] = "11000010010"
    m.laCod128[77] = "11001010000"
    m.laCod128[78] = "11110111010"
    m.laCod128[79] = "11000010100"
    m.laCod128[80] = "10001111010"
    m.laCod128[81] = "10100111100"
    m.laCod128[82] = "10010111100"
    m.laCod128[83] = "10010011110"
    m.laCod128[84] = "10111100100"
    m.laCod128[85] = "10011110100"
    m.laCod128[86] = "10011110010"
    m.laCod128[87] = "11110100100"
    m.laCod128[88] = "11110010100"
    m.laCod128[89] = "11110010010"
    m.laCod128[90] = "11011011110"
    m.laCod128[91] = "11011110110"
    m.laCod128[92] = "11110110110"
    m.laCod128[93] = "10101111000"
    m.laCod128[94] = "10100011110"
    m.laCod128[95] = "10001011110"
    m.laCod128[96] = "10111101000"
    m.laCod128[97] = "10111100010" && FNC3
    m.laCod128[98] = "11110101000" && FNC2
    m.laCod128[99] = "11110100010" && Shift
    m.laCod128[100] = "10111011110" &&      / Code C
    m.laCod128[101] = "10111101110" && FNC4 / Code B
    m.laCod128[102] = "11101011110"  &&      / Code A
    m.laCod128[103] = "11110101110" && FNC1
    m.laCod128[104] = "11010000100" && Start A
    m.laCod128[105] = "11010010000" && Start B
    m.laCod128[106] = "11010011100" && Start C

    m.lcStart = m.laCod128(m.lnSum + 1)
    m.lcStop = "1100011101011" && Stop

    *-- Always calculates the check digit
    FOR m.ln = 1 TO LEN(THIS.cTextValue)
      m.lnSum = m.lnSum + (ASC(SUBSTR(THIS.cTextValue, m.ln, 1)) - 32) * m.ln
    ENDFOR
    THIS.cTextValue = THIS.cTextValue + CHR(MOD(m.lnSum, 103) + 32)
    m.lnLen = LEN(THIS.cTextValue)

    *-- Encode 0s and 1s
    m.lcRet = ""
    FOR m.ln = 1 TO m.lnLen
      m.lcRet = m.lcRet + m.laCod128(ASC(SUBSTR(THIS.cTextValue, m.ln, 1)) - 32 + 1)
    ENDFOR

    *-- Add Start and Stop
    RETURN m.lcStart + m.lcRet + m.lcStop

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_39Ext()
  *------------------------------------------------------
  * Generate Code 39 Extended bar code
  *------------------------------------------------------
  PROCEDURE Code_39Ext()

    LOCAL lcRet, lnLen, lnSum, lnAsc, lcStart, lcStop
    LOCAL lcTag, ln

    IF NOT THIS.ValidAscii(THIS.cTextValue, 0, 127)
      *-- Chars not valid
      THIS.cMsgError = FBC_39EXT_01
      RETURN NULL
    ENDIF

    m.lnLen = LEN(THIS.cTextValue)

    LOCAL ARRAY laCod39Ext[128]
    m.laCod39Ext(1) = "%U"
    m.laCod39Ext(2) = "$A"
    m.laCod39Ext(3) = "$B"
    m.laCod39Ext(4) = "$C"
    m.laCod39Ext(5) = "$D"
    m.laCod39Ext(6) = "$E"
    m.laCod39Ext(7) = "$F"
    m.laCod39Ext(8) = "$G"
    m.laCod39Ext(9) = "$H"
    m.laCod39Ext(10) = "$I"
    m.laCod39Ext(11) = "$J"
    m.laCod39Ext(12) = "$K"
    m.laCod39Ext(13) = "$L"
    m.laCod39Ext(14) = "$M"
    m.laCod39Ext(15) = "$N"
    m.laCod39Ext(16) = "$O"
    m.laCod39Ext(17) = "$P"
    m.laCod39Ext(18) = "$Q"
    m.laCod39Ext(19) = "$R"
    m.laCod39Ext(20) = "$S"
    m.laCod39Ext(21) = "$T"
    m.laCod39Ext(22) = "$U"
    m.laCod39Ext(23) = "$V"
    m.laCod39Ext(24) = "$W"
    m.laCod39Ext(25) = "$X"
    m.laCod39Ext(26) = "$Y"
    m.laCod39Ext(27) = "$Z"
    m.laCod39Ext(28) = "%A"
    m.laCod39Ext(29) = "%B"
    m.laCod39Ext(30) = "%C"
    m.laCod39Ext(31) = "%D"
    m.laCod39Ext(32) = "%E"
    m.laCod39Ext(33) = SPACE(1)
    m.laCod39Ext(34) = "/A"
    m.laCod39Ext(35) = "/B"
    m.laCod39Ext(36) = "/C"
    m.laCod39Ext(37) = "/D"
    m.laCod39Ext(38) = "/E"
    m.laCod39Ext(39) = "/F"
    m.laCod39Ext(40) = "/G"
    m.laCod39Ext(41) = "/H"
    m.laCod39Ext(42) = "/I"
    m.laCod39Ext(43) = "/J"
    m.laCod39Ext(44) = "/K"
    m.laCod39Ext(45) = "/L"
    m.laCod39Ext(46) = "-"
    m.laCod39Ext(47) = "."
    m.laCod39Ext(48) = "/O"
    m.laCod39Ext(49) = "0"
    m.laCod39Ext(50) = "1"
    m.laCod39Ext(51) = "2"
    m.laCod39Ext(52) = "3"
    m.laCod39Ext(53) = "4"
    m.laCod39Ext(54) = "5"
    m.laCod39Ext(55) = "6"
    m.laCod39Ext(56) = "7"
    m.laCod39Ext(57) = "8"
    m.laCod39Ext(58) = "9"
    m.laCod39Ext(59) = "/Z"
    m.laCod39Ext(60) = "%F"
    m.laCod39Ext(61) = "%G"
    m.laCod39Ext(62) = "%H"
    m.laCod39Ext(63) = "%I"
    m.laCod39Ext(64) = "%J"
    m.laCod39Ext(65) = "%V"
    m.laCod39Ext(66) = "A"
    m.laCod39Ext(67) = "B"
    m.laCod39Ext(68) = "C"
    m.laCod39Ext(69) = "D"
    m.laCod39Ext(70) = "E"
    m.laCod39Ext(71) = "F"
    m.laCod39Ext(72) = "G"
    m.laCod39Ext(73) = "H"
    m.laCod39Ext(74) = "I"
    m.laCod39Ext(75) = "J"
    m.laCod39Ext(76) = "K"
    m.laCod39Ext(77) = "L"
    m.laCod39Ext(78) = "M"
    m.laCod39Ext(79) = "N"
    m.laCod39Ext(80) = "O"
    m.laCod39Ext(81) = "P"
    m.laCod39Ext(82) = "Q"
    m.laCod39Ext(83) = "R"
    m.laCod39Ext(84) = "S"
    m.laCod39Ext(85) = "T"
    m.laCod39Ext(86) = "U"
    m.laCod39Ext(87) = "V"
    m.laCod39Ext(88) = "W"
    m.laCod39Ext(89) = "X"
    m.laCod39Ext(90) = "Y"
    m.laCod39Ext(91) = "Z"
    m.laCod39Ext(92) = "%K"
    m.laCod39Ext(93) = "%L"
    m.laCod39Ext(94) = "%M"
    m.laCod39Ext(95) = "%N"
    m.laCod39Ext(96) = "%O"
    m.laCod39Ext(97) = "%W"
    m.laCod39Ext(98) = "+A"
    m.laCod39Ext(99) = "+B"
    m.laCod39Ext(100) = "+C"
    m.laCod39Ext(101) = "+D"
    m.laCod39Ext(102) = "+E"
    m.laCod39Ext(103) = "+F"
    m.laCod39Ext(104) = "+G"
    m.laCod39Ext(105) = "H"
    m.laCod39Ext(106) = "+I"
    m.laCod39Ext(107) = "+J"
    m.laCod39Ext(108) = "+K"
    m.laCod39Ext(109) = "+L"
    m.laCod39Ext(110) = "+M"
    m.laCod39Ext(111) = "+N"
    m.laCod39Ext(112) = "+O"
    m.laCod39Ext(113) = "+P"
    m.laCod39Ext(114) = "+Q"
    m.laCod39Ext(115) = "+R"
    m.laCod39Ext(116) = "+S"
    m.laCod39Ext(117) = "+T"
    m.laCod39Ext(118) = "+U"
    m.laCod39Ext(119) = "+V"
    m.laCod39Ext(120) = "+W"
    m.laCod39Ext(121) = "+X"
    m.laCod39Ext(122) = "+Y"
    m.laCod39Ext(123) = "+Z"
    m.laCod39Ext(124) = "%P"
    m.laCod39Ext(125) = "%Q"
    m.laCod39Ext(126) = "%R"
    m.laCod39Ext(127) = "%S"
    m.laCod39Ext(128) = "%T"

    *-- Expanding Characters
    m.lcTag = ""
    FOR m.ln = 1 TO m.lnLen
      m.lcTag = m.lcTag + m.laCod39Ext(ASC(SUBSTR(THIS.cTextValue, m.ln, 1)) + 1)
    ENDFOR
    THIS.TAG = THIS.cTextValue
    THIS.cTextValue = m.lcTag
    m.lcRet = THIS.Code_39()
    THIS.cTextValue = THIS.TAG

    THIS.cHumanReadableText = IIF(THIS.lShowStartStopChars, "*", "") + THIS.cTextValue + IIF(THIS.lAddCheckDigit AND THIS.lShowCheckDigit, THIS.cCheckDigit, "") + IIF(THIS.lShowStartStopChars, "*", "")
    THIS.cHumanReadableText = THIS.AddSpace(THIS.cHumanReadableText)

    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_39()
  *------------------------------------------------------
  * Generate Code 39 bar code
  *------------------------------------------------------
  PROCEDURE Code_39()

    LOCAL lcRet, lcValid, lnLen, lnSum, lnPos
    LOCAL lcStart, lcStop, ln

    THIS.cTextValue = UPPER(THIS.cTextValue)
    m.lcValid = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    IF NOT EMPTY(CHRTRAN(THIS.cTextValue, m.lcValid, ""))
      *-- Chars not valid
      THIS.cMsgError = FBC_39_01
      RETURN NULL
    ENDIF

    m.lnLen = LEN(THIS.cTextValue)

    LOCAL ARRAY laCod39[43]
    m.laCod39[1] = "101SB0B010"   && 0
    m.laCod39[2] = "B01S1010B0"   && 1
    m.laCod39[3] = "10BS1010B0"   && 2
    m.laCod39[4] = "B0BS101010"   && 3
    m.laCod39[5] = "101SB010B0"   && 4
    m.laCod39[6] = "B01SB01010"   && 5
    m.laCod39[7] = "10BSB01010"   && 6
    m.laCod39[8] = "101S10B0B0"   && 7
    m.laCod39[9] = "B01S10B010"   && 8
    m.laCod39[10] = "10BS10B010"   && 9
    m.laCod39[11] = "B0101S10B0"   && A
    m.laCod39[12] = "10B01S10B0"   && B
    m.laCod39[13] = "B0B01S1010"   && C
    m.laCod39[14] = "1010BS10B0"   && D
    m.laCod39[15] = "B010BS1010"   && E
    m.laCod39[16] = "10B0BS1010"   && F
    m.laCod39[17] = "10101SB0B0"   && G
    m.laCod39[18] = "B0101SB010"   && H
    m.laCod39[19] = "10B01SB010"   && I
    m.laCod39[20] = "1010BSB010"   && J
    m.laCod39[21] = "B010101SB0"   && K
    m.laCod39[22] = "10B0101SB0"   && L
    m.laCod39[23] = "B0B0101S10"   && M
    m.laCod39[24] = "1010B01SB0"   && N
    m.laCod39[25] = "B010B01S10"   && O
    m.laCod39[26] = "10B0B01S10"   && P
    m.laCod39[27] = "101010BSB0"   && Q
    m.laCod39[28] = "B01010BS10"   && R
    m.laCod39[29] = "10B010BS10"   && S
    m.laCod39[30] = "1010B0BS10"   && T
    m.laCod39[31] = "BS101010B0"   && U
    m.laCod39[32] = "1SB01010B0"   && V
    m.laCod39[33] = "BSB0101010"   && W
    m.laCod39[34] = "1S10B010B0"   && X
    m.laCod39[35] = "BS10B01010"   && Y
    m.laCod39[36] = "1SB0B01010"   && Z
    m.laCod39[37] = "1S1010B0B0"   && -
    m.laCod39[38] = "BS1010B010"   && .
    m.laCod39[39] = "1SB010B010"   && SPACE
    m.laCod39[40] = "1S1S1S1010"   && $
    m.laCod39[41] = "1S1S101S10"   && /
    m.laCod39[42] = "1S101S1S10"   && +
    m.laCod39[43] = "101S1S1S10"   && %

    m.lcStart = "1S10B0B010"   && * Start
    m.lcStop = "1S10B0B01"   && * Stop

    *-- Encode 0s and 1s
    m.lcRet = ""
    m.lnSum = 0
    FOR m.ln = 1 TO m.lnLen
      m.lnPos = AT(SUBSTR(THIS.cTextValue, m.ln, 1), m.lcValid)
      m.lcRet = m.lcRet + m.laCod39(m.lnPos)
      m.lnSum = m.lnSum + m.lnPos - 1
    ENDFOR

    IF THIS.lAddCheckDigit
      THIS.cCheckDigit = SUBSTR(m.lcValid, MOD(m.lnSum, 43) + 1, 1)
      m.lcRet = m.lcRet + m.laCod39(MOD(m.lnSum, 43) + 1)
    ENDIF

    THIS.cHumanReadableText = IIF(THIS.lShowStartStopChars, "*", "") + THIS.cTextValue + IIF(THIS.lAddCheckDigit AND THIS.lShowCheckDigit, THIS.cCheckDigit, "") + IIF(THIS.lShowStartStopChars, "*", "")
    THIS.cHumanReadableText = THIS.AddSpace(THIS.cHumanReadableText)

    *-- Add Start and Stop and apply ratio
    RETURN THIS.ApplyRatio(m.lcStart + m.lcRet + m.lcStop, THIS.nRatio)

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_93Ext()
  *------------------------------------------------------
  * Generate Code 93 Extended bar code
  *------------------------------------------------------
  PROCEDURE Code_93Ext()

    LOCAL lcRet, lnLen, lnSum, lnAsc, lcStart, lcStop
    LOCAL lcTag, ln

    IF NOT THIS.ValidAscii(THIS.cTextValue, 0, 127)
      *-- Chars not valid
      THIS.cMsgError = FBC_93EXT_01
      RETURN NULL
    ENDIF

    m.lnLen = LEN(THIS.cTextValue)

    LOCAL ARRAY laCod93Ext[128]
    m.laCod93Ext(1) = "#U"
    m.laCod93Ext(2) = "=A"
    m.laCod93Ext(3) = "=B"
    m.laCod93Ext(4) = "=C"
    m.laCod93Ext(5) = "=D"
    m.laCod93Ext(6) = "=E"
    m.laCod93Ext(7) = "=F"
    m.laCod93Ext(8) = "=G"
    m.laCod93Ext(9) = "=H"
    m.laCod93Ext(10) = "=I"
    m.laCod93Ext(11) = "=J"
    m.laCod93Ext(12) = "=K"
    m.laCod93Ext(13) = "=L"
    m.laCod93Ext(14) = "=M"
    m.laCod93Ext(15) = "=N"
    m.laCod93Ext(16) = "=O"
    m.laCod93Ext(17) = "=P"
    m.laCod93Ext(18) = "=Q"
    m.laCod93Ext(19) = "=R"
    m.laCod93Ext(20) = "=S"
    m.laCod93Ext(21) = "=T"
    m.laCod93Ext(22) = "=U"
    m.laCod93Ext(23) = "=V"
    m.laCod93Ext(24) = "=W"
    m.laCod93Ext(25) = "=X"
    m.laCod93Ext(26) = "=Y"
    m.laCod93Ext(27) = "=Z"
    m.laCod93Ext(28) = "#A"
    m.laCod93Ext(29) = "#B"
    m.laCod93Ext(30) = "#C"
    m.laCod93Ext(31) = "#D"
    m.laCod93Ext(32) = "#E"
    m.laCod93Ext(33) = SPACE(1)
    m.laCod93Ext(34) = "&A"
    m.laCod93Ext(35) = "&B"
    m.laCod93Ext(36) = "&C"
    m.laCod93Ext(37) = "$" && "&D"
    m.laCod93Ext(38) = "%" && "&E"
    m.laCod93Ext(39) = "&F"
    m.laCod93Ext(40) = "&G"
    m.laCod93Ext(41) = "&H"
    m.laCod93Ext(42) = "&I"
    m.laCod93Ext(43) = "&J"
    m.laCod93Ext(44) = "+" && "&K"
    m.laCod93Ext(45) = "&L"
    m.laCod93Ext(46) = "-" && "&M"
    m.laCod93Ext(47) = "." && "&N"
    m.laCod93Ext(48) = "/" && "&O"
    m.laCod93Ext(49) = "0"
    m.laCod93Ext(50) = "1"
    m.laCod93Ext(51) = "2"
    m.laCod93Ext(52) = "3"
    m.laCod93Ext(53) = "4"
    m.laCod93Ext(54) = "5"
    m.laCod93Ext(55) = "6"
    m.laCod93Ext(56) = "7"
    m.laCod93Ext(57) = "8"
    m.laCod93Ext(58) = "9"
    m.laCod93Ext(59) = "&Z"
    m.laCod93Ext(60) = "#F"
    m.laCod93Ext(61) = "#G"
    m.laCod93Ext(62) = "#H"
    m.laCod93Ext(63) = "#I"
    m.laCod93Ext(64) = "#J"
    m.laCod93Ext(65) = "#V"
    m.laCod93Ext(66) = "A"
    m.laCod93Ext(67) = "B"
    m.laCod93Ext(68) = "C"
    m.laCod93Ext(69) = "D"
    m.laCod93Ext(70) = "E"
    m.laCod93Ext(71) = "F"
    m.laCod93Ext(72) = "G"
    m.laCod93Ext(73) = "H"
    m.laCod93Ext(74) = "I"
    m.laCod93Ext(75) = "J"
    m.laCod93Ext(76) = "K"
    m.laCod93Ext(77) = "L"
    m.laCod93Ext(78) = "M"
    m.laCod93Ext(79) = "N"
    m.laCod93Ext(80) = "O"
    m.laCod93Ext(81) = "P"
    m.laCod93Ext(82) = "Q"
    m.laCod93Ext(83) = "R"
    m.laCod93Ext(84) = "S"
    m.laCod93Ext(85) = "T"
    m.laCod93Ext(86) = "U"
    m.laCod93Ext(87) = "V"
    m.laCod93Ext(88) = "W"
    m.laCod93Ext(89) = "X"
    m.laCod93Ext(90) = "Y"
    m.laCod93Ext(91) = "Z"
    m.laCod93Ext(92) = "#K"
    m.laCod93Ext(93) = "#L"
    m.laCod93Ext(94) = "#M"
    m.laCod93Ext(95) = "#N"
    m.laCod93Ext(96) = "#O"
    m.laCod93Ext(97) = "#W"
    m.laCod93Ext(98) = "@A"
    m.laCod93Ext(99) = "@B"
    m.laCod93Ext(100) = "@C"
    m.laCod93Ext(101) = "@D"
    m.laCod93Ext(102) = "@E"
    m.laCod93Ext(103) = "@F"
    m.laCod93Ext(104) = "@G"
    m.laCod93Ext(105) = "H"
    m.laCod93Ext(106) = "@I"
    m.laCod93Ext(107) = "@J"
    m.laCod93Ext(108) = "@K"
    m.laCod93Ext(109) = "@L"
    m.laCod93Ext(110) = "@M"
    m.laCod93Ext(111) = "@N"
    m.laCod93Ext(112) = "@O"
    m.laCod93Ext(113) = "@P"
    m.laCod93Ext(114) = "@Q"
    m.laCod93Ext(115) = "@R"
    m.laCod93Ext(116) = "@S"
    m.laCod93Ext(117) = "@T"
    m.laCod93Ext(118) = "@U"
    m.laCod93Ext(119) = "@V"
    m.laCod93Ext(120) = "@W"
    m.laCod93Ext(121) = "@X"
    m.laCod93Ext(122) = "@Y"
    m.laCod93Ext(123) = "@Z"
    m.laCod93Ext(124) = "#P"
    m.laCod93Ext(125) = "#Q"
    m.laCod93Ext(126) = "#R"
    m.laCod93Ext(127) = "#S"
    m.laCod93Ext(128) = "#T"

    *-- Expanding Characters
    m.lcTag = ""
    FOR m.ln = 1 TO m.lnLen
      m.lcTag = m.lcTag + m.laCod93Ext(ASC(SUBSTR(THIS.cTextValue, m.ln, 1)) + 1)
    ENDFOR

    THIS.TAG = THIS.cTextValue
    THIS.cTextValue = m.lcTag
    m.lcRet = THIS.Code_93()
    THIS.cTextValue = THIS.TAG

    THIS.cHumanReadableText = THIS.cTextValue + IIF(THIS.lShowCheckDigit, THIS.cCheckDigit, "")

    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_93()
  *------------------------------------------------------
  * Generate Code 93 bar code
  *------------------------------------------------------
  PROCEDURE Code_93()

    LOCAL lcRet, lcValid, lnLen, lnSum, lnPos
    LOCAL lcCheckDigit, lcStart, lcStop, lcTag, ln, lnCheckDigit, lnCon

    THIS.cTextValue = UPPER(THIS.cTextValue)

    m.lcValid = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%=#&@"
    IF NOT EMPTY(CHRTRAN(THIS.cTextValue, m.lcValid, ""))
      *-- Chars not valid
      THIS.cMsgError = FBC_93_01
      RETURN NULL
    ENDIF

    m.lnLen = LEN(THIS.cTextValue)

    LOCAL ARRAY laCod93[47]
    m.laCod93(1) = "100010100"  &&  0
    m.laCod93(2) = "101001000"  &&  1
    m.laCod93(3) = "101000100"  &&  2
    m.laCod93(4) = "101000010"  &&  3
    m.laCod93(5) = "100101000"  &&  4
    m.laCod93(6) = "100100100"  &&  5
    m.laCod93(7) = "100100010"  &&  6
    m.laCod93(8) = "101010000"  &&  7
    m.laCod93(9) = "100010010"  &&  8
    m.laCod93(10) = "100001010"  &&  9
    m.laCod93(11) = "110101000"  &&  A
    m.laCod93(12) = "110100100"  &&  B
    m.laCod93(13) = "110100010"  &&  C
    m.laCod93(14) = "110010100"  &&  D
    m.laCod93(15) = "110010010"  &&  E
    m.laCod93(16) = "110001010"  &&  F
    m.laCod93(17) = "101101000"  &&  G
    m.laCod93(18) = "101100100"  &&  H
    m.laCod93(19) = "101100010"  &&  I
    m.laCod93(20) = "100110100"  &&  J
    m.laCod93(21) = "100011010"  &&  K
    m.laCod93(22) = "101011000"  &&  L
    m.laCod93(23) = "101001100"  &&  M
    m.laCod93(24) = "101000110"  &&  N
    m.laCod93(25) = "100101100"  &&  O
    m.laCod93(26) = "100010110"  &&  P
    m.laCod93(27) = "110110100"  &&  Q
    m.laCod93(28) = "110110010"  &&  R
    m.laCod93(29) = "110101100"  &&  S
    m.laCod93(30) = "110100110"  &&  T
    m.laCod93(31) = "110010110"  &&  U
    m.laCod93(32) = "110011010"  &&  V
    m.laCod93(33) = "101101100"  &&  W
    m.laCod93(34) = "101100110"  &&  X
    m.laCod93(35) = "100110110"  &&  Y
    m.laCod93(36) = "100111010"  &&  Z
    m.laCod93(37) = "100101110"  &&  -
    m.laCod93(38) = "111010100"  &&  .
    m.laCod93(39) = "111010010"  &&  SPACE
    m.laCod93(40) = "111001010"  &&  $
    m.laCod93(41) = "101101110"  &&  /
    m.laCod93(42) = "101110110"  &&  +
    m.laCod93(43) = "110101110"  &&   %
    m.laCod93(44) = "100100110"  &&  ($) =
    m.laCod93(45) = "111011010"  &&  (%) #   /
    m.laCod93(46) = "111010110"  &&  (/) &   +
    m.laCod93(47) = "100110010"  &&  (+) @   %

    m.lcStart = "101011110"  &&  Start
    m.lcStop = "1010111101"  &&  Stop with termination bar

    m.lcTag = THIS.cTextValue

    *-- Encode 0s and 1s
    m.lcRet = ""
    FOR m.ln = 1 TO m.lnLen
      m.lnPos = AT(SUBSTR(m.lcTag, m.ln, 1), m.lcValid)
      m.lcRet = m.lcRet + m.laCod93(m.lnPos)
    ENDFOR

    *-- Always with two Check Digit
    *-- First Check Digit
    m.lnSum = 0
    m.lnCon = 1
    FOR m.ln = m.lnLen TO 1 STEP - 1
      m.lnPos = AT(SUBSTR(m.lcTag, m.ln, 1), m.lcValid)
      m.lnSum = m.lnSum + ((m.lnPos - 1) * m.lnCon)
      m.lnCon = m.lnCon + 1
      IF m.lnCon > 20
        m.lnCon = 1
      ENDIF
    ENDFOR
    m.lnCheckDigit = MOD(m.lnSum, 47)
    m.lcCheckDigit = SUBSTR(m.lcValid, m.lnCheckDigit + 1, 1)
    m.lcRet = m.lcRet + m.laCod93(m.lnCheckDigit + 1)
    m.lcTag = m.lcTag + m.lcCheckDigit
    m.lnLen = LEN(m.lcTag)
    THIS.cCheckDigit = m.lcCheckDigit

    *-- Second Check Digit
    m.lnSum = 0
    m.lnCon = 1
    FOR m.ln = m.lnLen TO 1 STEP - 1
      m.lnPos = AT(SUBSTR(m.lcTag, m.ln, 1), m.lcValid)
      m.lnSum = m.lnSum + ((m.lnPos - 1) * m.lnCon)
      m.lnCon = m.lnCon + 1
      IF m.lnCon > 15
        m.lnCon = 1
      ENDIF
    ENDFOR
    m.lnCheckDigit = MOD(m.lnSum, 47)
    m.lcCheckDigit = SUBSTR(m.lcValid, m.lnCheckDigit + 1, 1)
    m.lcRet = m.lcRet + m.laCod93(m.lnCheckDigit + 1)
    m.lcTag = m.lcTag + m.lcCheckDigit
    m.lnLen = LEN(m.lcTag)

    THIS.cCheckDigit = THIS.cCheckDigit + m.lcCheckDigit
    THIS.cCheckDigit = CHRTRAN(THIS.cCheckDigit, "=#&@", "$%/+")

    THIS.cHumanReadableText =  THIS.cTextValue + IIF(THIS.lShowCheckDigit, THIS.cCheckDigit, "")
    *THIS.cHumanReadableText = THIS.AddSpace(THIS.cHumanReadableText)

    *-- Add Start and Stop
    RETURN m.lcStart + m.lcRet + m.lcStop

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Itf14()
  *------------------------------------------------------
  * Generate EAN-14 or ITF-14 bar code
  *------------------------------------------------------
  PROCEDURE Code_Itf14()

    LOCAL lcValid
    LOCAL lcCheckDigit

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_ITF14_01
      RETURN NULL
    ENDIF

    IF NOT BETWEEN(LEN(THIS.cTextValue), 13, 14)
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_ITF14_02
      RETURN NULL
    ENDIF

    IF LEN(THIS.cTextValue) = 14
      *-- Check digit not valid
      m.lcCheckDigit = THIS.CheckDigitEan(LEFT(THIS.cTextValue, 13))
      IF m.lcCheckDigit <> RIGHT(THIS.cTextValue, 1)
        THIS.cMsgError = FBC_ITF14_03 + m.lcCheckDigit
        RETURN NULL
      ELSE
        THIS.cTextValue = LEFT(THIS.cTextValue, 13)
      ENDIF
    ENDIF

    *-- Ok
    RETURN THIS.Code_I2of5()

  ENDPROC
  *------------------------------------------------------
  * PROCEDURE Code_Ean13()
  *------------------------------------------------------
  * Generate EAN-13 bar code
  *------------------------------------------------------
  PROCEDURE Code_Ean13()

    LOCAL lcValid, lcRet, lc, lcStartStop, lcCenter
    LOCAL lcCheckDigit, lcSet, lnI

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_EAN13_01
      RETURN NULL
    ENDIF

    IF NOT BETWEEN(LEN(THIS.cTextValue), 12, 18)
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_EAN13_02
      RETURN NULL
    ENDIF

    IF LEN(THIS.cTextValue) = 13
      *-- Check digit not valid
      m.lcCheckDigit = THIS.CheckDigitEan(LEFT(THIS.cTextValue, 12))
      IF m.lcCheckDigit <> RIGHT(THIS.cTextValue, 1)
        THIS.cMsgError = FBC_EAN13_03 + m.lcCheckDigit
        RETURN NULL
      ELSE
        THIS.cTextValue = LEFT(THIS.cTextValue, 12)
      ENDIF
    ENDIF

    IF LEN(THIS.cTextValue) > 13 && with supplemental
      THIS.cSupplementalText = SUBSTR(THIS.cTextValue, 14)
      THIS.cTextValue = LEFT(THIS.cTextValue, 12)
    ELSE
      THIS.cSupplementalText = ""
    ENDIF

    LOCAL ARRAY laSet(10), laA(10), laB(10), laC(10)
    *--- Characters set table
    *--- As "lnPri" (¡DO NOT CHANGE!)
    m.laSet(1) = "AAAAAACCCCCC"   && 0
    m.laSet(2) = "AABABBCCCCCC"   && 1
    m.laSet(3) = "AABBABCCCCCC"   && 2
    m.laSet(4) = "AABBBACCCCCC"   && 3
    m.laSet(5) = "ABAABBCCCCCC"   && 4
    m.laSet(6) = "ABBAABCCCCCC"   && 5
    m.laSet(7) = "ABBBAACCCCCC"   && 6
    m.laSet(8) = "ABABABCCCCCC"   && 7
    m.laSet(9) = "ABABBACCCCCC"   && 8
    m.laSet(10) = "ABBABACCCCCC"   && 9

    *-- Left Set A
    m.laA(1) = "0001101"
    m.laA(2) = "0011001"
    m.laA(3) = "0010011"
    m.laA(4) = "0111101"
    m.laA(5) = "0100011"
    m.laA(6) = "0110001"
    m.laA(7) = "0101111"
    m.laA(8) = "0111011"
    m.laA(9) = "0110111"
    m.laA(10) = "0001011"

    *-- Left Set B
    m.laB(1) = "0100111"
    m.laB(2) = "0110011"
    m.laB(3) = "0011011"
    m.laB(4) = "0100001"
    m.laB(5) = "0011101"
    m.laB(6) = "0111001"
    m.laB(7) = "0000101"
    m.laB(8) = "0010001"
    m.laB(9) = "0001001"
    m.laB(10) = "0010111"

    *-- Right Set
    m.laC(1) = "1110010"
    m.laC(2) = "1100110"
    m.laC(3) = "1101100"
    m.laC(4) = "1000010"
    m.laC(5) = "1011100"
    m.laC(6) = "1001110"
    m.laC(7) = "1010000"
    m.laC(8) = "1000100"
    m.laC(9) = "1001000"
    m.laC(10) = "1110100"

    m.lcStartStop = "101"
    m.lcCenter = "01010"

    *-- Check digit EAN
    THIS.cTextValue = THIS.cTextValue + THIS.CheckDigitEan(THIS.cTextValue)
    THIS.cHumanReadableText = THIS.cTextValue

    m.lcRet = m.lcStartStop

    *-- 1st char
    m.lcSet = m.laSet(VAL(SUBS(THIS.cTextValue, 1, 1)) + 1)

    FOR m.lnI = 2 TO 7
      m.lc = "m.la" + SUBSTR(m.lcSet, m.lnI - 1, 1)
      m.lcRet = m.lcRet + &lc(VAL(SUBS(THIS.cTextValue, m.lnI, 1)) + 1)
    ENDFOR

    m.lcRet = m.lcRet + m.lcCenter

    FOR m.lnI = 8 TO 13
      m.lcRet = m.lcRet + m.laC(VAL(SUBS(THIS.cTextValue, m.lnI, 1)) + 1)
    ENDFOR

    m.lcRet = m.lcRet + m.lcStartStop

    *-- Supplemental
    IF NOT EMPTY(THIS.cSupplementalText)
      IF BETWEEN(LEN(THIS.cSupplementalText), 1, 2)
        m.lcRet = m.lcRet + REPLICATE("@", THIS.nQuietZone) + THIS.Code_Sup2()
      ELSE
        m.lcRet = m.lcRet + REPLICATE("@", THIS.nQuietZone) + THIS.Code_Sup5()
      ENDIF
    ENDIF

    RETURN m.lcRet
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Ean8()
  *------------------------------------------------------
  * Generate EAN-8 bar code
  *------------------------------------------------------
  FUNCTION Code_Ean8()
    LOCAL lcValid, lcStartStop, lcCenter, lcRet
    LOCAL lcCheckDigit, lnI

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_EAN8_01
      RETURN NULL
    ENDIF

    IF NOT BETWEEN(LEN(THIS.cTextValue), 7, 13)
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_EAN8_02
      RETURN NULL
    ENDIF

    IF LEN(THIS.cTextValue) = 8
      *-- Check digit not valid
      m.lcCheckDigit = THIS.CheckDigitEan(LEFT(THIS.cTextValue, 7))
      IF m.lcCheckDigit <> RIGHT(THIS.cTextValue, 1)
        THIS.cMsgError = FBC_EAN8_03 + m.lcCheckDigit
        RETURN NULL
      ELSE
        THIS.cTextValue = LEFT(THIS.cTextValue, 7)
      ENDIF
    ENDIF

    IF LEN(THIS.cTextValue) > 8 && with supplemental
      THIS.cSupplementalText = SUBSTR(THIS.cTextValue, 9)
      THIS.cTextValue = LEFT(THIS.cTextValue, 7)
    ELSE
      THIS.cSupplementalText = ""
    ENDIF

    *-- Check digit EAN
    THIS.cTextValue = THIS.cTextValue + THIS.CheckDigitEan(THIS.cTextValue)
    THIS.cHumanReadableText = THIS.cTextValue

    LOCAL ARRAY laA(10), laC(10)
    *-- Left Set
    m.laA[1] = "0001101"   && 0
    m.laA[2] = "0011001"   && 1
    m.laA[3] = "0010011"   && 2
    m.laA[4] = "0111101"   && 3
    m.laA[5] = "0100011"   && 4
    m.laA[6] = "0110001"   && 5
    m.laA[7] = "0101111"   && 6
    m.laA[8] = "0111011"   && 7
    m.laA[9] = "0110111"   && 8
    m.laA[10] = "0001011"   && 9

    *-- Right Set
    m.laC[1] = "1110010"   && 0
    m.laC[2] = "1100110"   && 1
    m.laC[3] = "1101100"   && 2
    m.laC[4] = "1000010"   && 3
    m.laC[5] = "1011100"   && 4
    m.laC[6] = "1001110"   && 5
    m.laC[7] = "1010000"   && 6
    m.laC[8] = "1000100"   && 7
    m.laC[9] = "1001000"   && 8
    m.laC[10] = "1110100"   && 9

    m.lcStartStop = "101"
    m.lcCenter = "01010"

    m.lcRet = m.lcStartStop

    FOR m.lnI = 1 TO 4
      m.lcRet = m.lcRet + m.laA(VAL(SUBS(THIS.cTextValue, m.lnI, 1)) + 1)
    ENDFOR

    m.lcRet = m.lcRet + m.lcCenter

    FOR m.lnI = 5 TO 8
      m.lcRet = m.lcRet + m.laC(VAL(SUBS(THIS.cTextValue, m.lnI, 1)) + 1)
    ENDFOR

    m.lcRet = m.lcRet + m.lcStartStop

    *-- Supplemental
    IF NOT EMPTY(THIS.cSupplementalText)
      IF BETWEEN(LEN(THIS.cSupplementalText), 1, 2)
        m.lcRet = m.lcRet + REPLICATE("@", THIS.nQuietZone) + THIS.Code_Sup2()
      ELSE
        m.lcRet = m.lcRet + REPLICATE("@", THIS.nQuietZone) + THIS.Code_Sup5()
      ENDIF
    ENDIF

    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_UpcA()
  *------------------------------------------------------
  * Generate UPC-A bar code
  *------------------------------------------------------
  FUNCTION Code_UpcA()
    LOCAL lcValid, lcStartStop, lcCenter
    LOCAL lcCheckDigit, lcRet, lnI

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_UPCA_01
      RETURN NULL
    ENDIF

    IF NOT BETWEEN(LEN(THIS.cTextValue), 11, 17)
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_UPCA_02
      RETURN NULL
    ENDIF

    IF LEN(THIS.cTextValue) = 12
      *-- Check digit not valid
      m.lcCheckDigit = THIS.CheckDigitEan(LEFT(THIS.cTextValue, 11))
      IF m.lcCheckDigit <> RIGHT(THIS.cTextValue, 1)
        THIS.cMsgError = FBC_UPCA_03 + m.lcCheckDigit
        RETURN NULL
      ELSE
        THIS.cTextValue = LEFT(THIS.cTextValue, 11)
      ENDIF
    ENDIF

    IF LEN(THIS.cTextValue) > 12 && with supplemental
      THIS.cSupplementalText = SUBSTR(THIS.cTextValue, 13)
      THIS.cTextValue = LEFT(THIS.cTextValue, 11)
    ELSE
      THIS.cSupplementalText = ""
    ENDIF

    *-- Check digit UPC
    THIS.cTextValue = THIS.cTextValue + THIS.CheckDigitEan(THIS.cTextValue)
    THIS.cHumanReadableText = THIS.cTextValue

    LOCAL ARRAY laA(10), laC(10)
    *-- Left Set
    m.laA(1) = "0001101"
    m.laA(2) = "0011001"
    m.laA(3) = "0010011"
    m.laA(4) = "0111101"
    m.laA(5) = "0100011"
    m.laA(6) = "0110001"
    m.laA(7) = "0101111"
    m.laA(8) = "0111011"
    m.laA(9) = "0110111"
    m.laA(10) = "0001011"

    *-- Right Set
    m.laC(1) = "1110010"
    m.laC(2) = "1100110"
    m.laC(3) = "1101100"
    m.laC(4) = "1000010"
    m.laC(5) = "1011100"
    m.laC(6) = "1001110"
    m.laC(7) = "1010000"
    m.laC(8) = "1000100"
    m.laC(9) = "1001000"
    m.laC(10) = "1110100"

    m.lcStartStop = "101"
    m.lcCenter = "01010"

    m.lcRet = m.lcStartStop

    FOR m.lnI = 1 TO 6
      m.lcRet = m.lcRet + m.laA(VAL(SUBS(THIS.cTextValue, m.lnI, 1)) + 1)
    ENDFOR

    m.lcRet = m.lcRet + m.lcCenter

    FOR m.lnI = 7 TO 12
      m.lcRet = m.lcRet + m.laC(VAL(SUBS(THIS.cTextValue, m.lnI, 1)) + 1)
    ENDFOR

    m.lcRet = m.lcRet + m.lcStartStop

    *-- Supplemental
    IF NOT EMPTY(THIS.cSupplementalText)
      IF BETWEEN(LEN(THIS.cSupplementalText), 1, 2)
        m.lcRet = m.lcRet + REPLICATE("@", THIS.nQuietZone) + THIS.Code_Sup2()
      ELSE
        m.lcRet = m.lcRet + REPLICATE("@", THIS.nQuietZone) + THIS.Code_Sup5()
      ENDIF
    ENDIF

    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_UpcE()
  *------------------------------------------------------
  * Generate UPC-E bar code
  *------------------------------------------------------

  FUNCTION Code_UpcE()
    LOCAL lcValid, lcUpcA, lcStart, lcStop, lcRet, lcParity
    LOCAL lcCheckDigit, lnI

    m.lcUpcA = "0"

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_UPCB_01
      RETURN NULL
    ENDIF

    IF NOT BETWEEN(LEN(THIS.cTextValue), 6, 12)
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_UPCB_02
      RETURN NULL
    ENDIF

    IF LEN(THIS.cTextValue) = 7
      *-- Check digit not valid
      m.lcCheckDigit = THIS.CheckDigitEan(LEFT(THIS.cTextValue, 6))
      IF m.lcCheckDigit <> RIGHT(THIS.cTextValue, 1)
        THIS.cMsgError = FBC_UPCB_03 + m.lcCheckDigit
        RETURN NULL
      ELSE
        THIS.cTextValue = LEFT(THIS.cTextValue, 6)
      ENDIF
    ENDIF

    IF LEN(THIS.cTextValue) > 7 && with supplemental
      THIS.cSupplementalText = SUBSTR(THIS.cTextValue, 8)
      THIS.cTextValue = LEFT(THIS.cTextValue, 6)
    ELSE
      THIS.cSupplementalText = ""
    ENDIF

    *-- UPC-E to UPC-A
    DO CASE
      CASE RIGHT(THIS.cTextValue, 1) = "0" OR RIGHT(THIS.cTextValue, 1) = "1" OR RIGHT(THIS.cTextValue, 1) = "2"
        m.lcUpcA = m.lcUpcA + LEFT(THIS.cTextValue, 2) + RIGHT(THIS.cTextValue, 1) + "0000" +  SUBSTR(THIS.cTextValue, 3, 3)
      CASE RIGHT(THIS.cTextValue, 1) = "3"
        m.lcUpcA = m.lcUpcA + LEFT(THIS.cTextValue, 3) + "00000" +  SUBSTR(THIS.cTextValue, 4, 2)
      CASE RIGHT(THIS.cTextValue, 1) = "4"
        m.lcUpcA = m.lcUpcA + LEFT(THIS.cTextValue, 4) + "00000" +  SUBSTR(THIS.cTextValue, 5, 1)
      OTHERWISE
        m.lcUpcA = m.lcUpcA + LEFT(THIS.cTextValue, 5) + "0000" + RIGHT(THIS.cTextValue, 1)
    ENDCASE
    m.lcUpcA = THIS.CheckDigitEan(m.lcUpcA)

    THIS.cHumanReadableText = "0" + THIS.cTextValue + m.lcUpcA

    LOCAL ARRAY  laB(10), laC(10), laA(10)
    *-- UPC-E PARITY ENCODING TABLE
    m.laA(1) = "EEEOOO"  &&,"OOOEEE"
    m.laA(2) = "EEOEOO"  &&,"OOEOEE"
    m.laA(3) = "EEOOEO"  &&,"OOEEOE"
    m.laA(4) = "EEOOOE"  &&,"OOEEEO"
    m.laA(5) = "EOEEOO"  &&,"OEOOEE"
    m.laA(6) = "EOOEEO"  &&,"OEEOOE"
    m.laA(7) = "EOOOEE"  &&,"OEEEOO"
    m.laA(8) = "EOEOEO"  &&,"OEOEOE"
    m.laA(9) = "EOEOOE"  &&,"OEOEEO"
    m.laA(10) = "EOOEOE"  &&,"OEEOEO"

    m.laB(1) = "0001101"
    m.laB(2) = "0011001"
    m.laB(3) = "0010011"
    m.laB(4) = "0111101"
    m.laB(5) = "0100011"
    m.laB(6) = "0110001"
    m.laB(7) = "0101111"
    m.laB(8) = "0111011"
    m.laB(9) = "0110111"
    m.laB(10) = "0001011"

    m.laC(1) = "0100111"
    m.laC(2) = "0110011"
    m.laC(3) = "0011011"
    m.laC(4) = "0100001"
    m.laC(5) = "0011101"
    m.laC(6) = "0111001"
    m.laC(7) = "0000101"
    m.laC(8) = "0010001"
    m.laC(9) = "0001001"
    m.laC(10) = "0010111"

    m.lcStart = "101"
    m.lcStop = "010101"

    m.lcRet = ""

    m.lcParity = m.laA(VAL(m.lcUpcA) + 1)
    FOR m.lnI = 1 TO 6
      IF SUBS(m.lcParity, m.lnI, 1) = "O"
        m.lcRet = m.lcRet + m.laB(VAL(SUBS(THIS.cTextValue, m.lnI, 1)) + 1)
      ELSE
        m.lcRet = m.lcRet + m.laC(VAL(SUBS(THIS.cTextValue, m.lnI, 1)) + 1)
      ENDIF
    ENDFOR

    m.lcRet = m.lcStart + m.lcRet + m.lcStop

    *-- Supplemental
    IF NOT EMPTY(THIS.cSupplementalText)
      IF BETWEEN(LEN(THIS.cSupplementalText), 1, 2)
        m.lcRet = m.lcRet + REPLICATE("@", THIS.nQuietZone) + THIS.Code_Sup2()
      ELSE
        m.lcRet = m.lcRet + REPLICATE("@", THIS.nQuietZone) + THIS.Code_Sup5()
      ENDIF
    ENDIF

    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_MSIPlessey()
  *------------------------------------------------------
  * Generate bar code MSI/Plessey.
  *------------------------------------------------------
  PROCEDURE Code_MSIPlessey()

    LOCAL lnI, lnJ, lcRet, lcStart, lcStop, lnLen, lcValid, lcSum1, lcSum2, lnSum3, lnSum4, lnCon

    *-- Numbers only
    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars not valid
      THIS.cMsgError = FBC_MSI_01
      RETURN NULL
    ENDIF
    m.lnLen = LEN(THIS.cTextValue)

    *-- Calculate and add the check digit
    IF THIS.lAddCheckDigit
      m.lcSum1 = ""
      m.lcSum2 = ""
      m.lnSum3 = 0
      m.lnSum4 = 0
      FOR m.lnI = 1 TO m.lnLen
        IF MOD(m.lnI, 2) = 0
          m.lcSum1 = m.lcSum1 + SUBSTR(THIS.cTextValue, m.lnI, 1)
        ELSE
          m.lcSum2 = m.lcSum2 + SUBSTR(THIS.cTextValue, m.lnI, 1)
        ENDIF
      ENDFOR
      IF MOD(m.lnLen, 2) = 0
        m.lnCon = VAL(m.lcSum1) * 2
        FOR m.lnI = 1 TO LEN(TRANSFORM(m.lnCon))
          m.lnSum3 = m.lnSum3 + VAL(SUBSTR(TRANSFORM(m.lnCon), m.lnI, 1))
        ENDFOR
        FOR m.lnI = 1 TO LEN(m.lcSum2)
          m.lnSum4 = m.lnSum4 + VAL(SUBSTR(TRANSFORM(m.lcSum2), m.lnI, 1))
        ENDFOR
      ELSE
        m.lnCon = VAL(m.lcSum2) * 2
        FOR m.lnI = 1 TO LEN(TRANSFORM(m.lnCon))
          m.lnSum3 = m.lnSum3 + VAL(SUBSTR(TRANSFORM(m.lnCon), m.lnI, 1))
        ENDFOR
        FOR m.lnI = 1 TO LEN(m.lcSum1)
          m.lnSum4 = m.lnSum4 + VAL(SUBSTR(TRANSFORM(m.lcSum1), m.lnI, 1))
        ENDFOR
      ENDIF

      THIS.cTextValue = THIS.cTextValue + TRANSFORM(10 - (MOD(m.lnSum3 + m.lnSum4, 10)))

      IF THIS.lShowCheckDigit
        THIS.cHumanReadableText = THIS.cTextValue
      ENDIF
      m.lnLen = LEN(THIS.cTextValue)
    ENDIF

    LOCAL ARRAY  la[10]
    *-- Coding of each character
    m.la[1] = "1S1S1S1S" && 0
    m.la[2] = "1S1S1SB0" && 1
    m.la[3] = "1S1SB01S" && 2
    m.la[4] = "1S1SB0B0" && 3
    m.la[5] = "1SB01S1S" && 4
    m.la[6] = "1SB01SB0" && 5
    m.la[7] = "1SB0B01S" && 6
    m.la[8] = "1SB0B0B0" && 7
    m.la[9] = "B01S1S1S" && 8
    m.la[10] = "B01S1SB0" && 9
    m.lcStart = "B0"  && Start
    m.lcStop = "1S1"  && Stop

    *-- Encode 0s and 1s
    m.lcRet = ""
    FOR m.lnI = 1 TO m.lnLen
      m.lcRet = m.lcRet + m.la(VAL(SUBSTR(THIS.cTextValue, m.lnI, 1)) + 1)
    ENDFOR
    *-- Add Start and Stop and apply ratio
    RETURN THIS.ApplyRatio(m.lcStart + m.lcRet + m.lcStop, THIS.nRatio)

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_11
  *------------------------------------------------------
  * Generate bar code 11
  *------------------------------------------------------
  PROCEDURE Code_11()

    LOCAL lnI, lnJ, lcRet, lcStart, lcStop, lnLen, lcValid, lnSum, lnCon

    *-- Numbers only
    m.lcValid = "1234567890-"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars not valid
      THIS.cMsgError = FBC_11_01
      RETURN NULL
    ENDIF
    m.lnLen = LEN(THIS.cTextValue)

    *-- Calculate and add the check digit (C)
    IF THIS.lAddCheckDigit
      m.lnSum = 0
      m.lnCon = 1
      FOR m.lnI = m.lnLen TO 1 STEP - 1
        IF ISDIGIT(SUBSTR(THIS.cTextValue, m.lnI, 1))
          m.lnSum = m.lnSum + VAL(SUBSTR(THIS.cTextValue, m.lnI, 1)) * m.lnCon
        ELSE
          m.lnSum = m.lnSum + (10 * m.lnCon)
        ENDIF
        m.lnCon = m.lnCon + 1
        IF m.lnCon > 10
          m.lnCon = 1
        ENDIF
      ENDFOR

      THIS.cTextValue = THIS.cTextValue + IIF(TRANSFORM(MOD(m.lnSum, 11)) = "10", "-", TRANSFORM(MOD(m.lnSum, 11)))
      m.lnLen = LEN(THIS.cTextValue)

      *-- Second check digit (K)
      IF m.lnLen > 10
        m.lnSum = 0
        m.lnCon = 1
        FOR m.lnI = m.lnLen TO 1 STEP - 1
          IF ISDIGIT(SUBSTR(THIS.cTextValue, m.lnI, 1))
            m.lnSum = m.lnSum + VAL(SUBSTR(THIS.cTextValue, m.lnI, 1)) * m.lnCon
          ELSE
            m.lnSum = m.lnSum + (10 * m.lnCon)
          ENDIF
          m.lnCon = m.lnCon + 1
          IF m.lnCon > 9
            m.lnCon = 1
          ENDIF
        ENDFOR

        THIS.cTextValue = THIS.cTextValue + IIF(TRANSFORM(MOD(m.lnSum, 11)) = "10", "-", TRANSFORM(MOD(m.lnSum, 11)))
        m.lnLen = LEN(THIS.cTextValue)

      ENDIF
      IF THIS.lShowCheckDigit
        THIS.cHumanReadableText = THIS.cTextValue
      ENDIF
      m.lnLen = LEN(THIS.cTextValue)
    ENDIF

    LOCAL ARRAY la[11]
    *-- Coding of each character
    m.la[1] = "1010110" && 0
    m.la[2] = "11010110" && 1
    m.la[3] = "10010110" && 2
    m.la[4] = "11001010" && 3
    m.la[5] = "10110110" && 4
    m.la[6] = "11011010" && 5
    m.la[7] = "10011010" && 6
    m.la[8] = "10100110" && 7
    m.la[9] = "11010010" && 8
    m.la[10] = "1101010" && 9
    m.la[11] = "1011010" && -
    m.lcStart = "10110010"  && Start
    m.lcStop = "1011001"  && Stop

    *-- Encode 0s and 1s
    m.lcRet = ""
    FOR m.lnI = 1 TO m.lnLen
      IF ISDIGIT(SUBSTR(THIS.cTextValue, m.lnI, 1))
        m.lcRet = m.lcRet + m.la(VAL(SUBSTR(THIS.cTextValue, m.lnI, 1)) + 1)
      ELSE
        m.lcRet = m.lcRet + m.la[11]  && -
      ENDIF
    ENDFOR
    *-- Add Start and Stop
    RETURN m.lcStart + m.lcRet + m.lcStop

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_PostNet()
  *------------------------------------------------------
  * Generate PostNet barcode
  *------------------------------------------------------
  FUNCTION Code_PostNet()
    LOCAL lnI, lcValid, lcRet, lnControl, lcCheck

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_POSTNET_01
      RETURN NULL
    ENDIF

    IF LEN(THIS.cTextValue) # 5 AND LEN(THIS.cTextValue) # 9 AND LEN(THIS.cTextValue) # 11
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_POSTNET_02
      RETURN NULL
    ENDIF

    m.lnControl = 0
    FOR m.lnI = 1 TO LEN(THIS.cTextValue)
      m.lnControl = m.lnControl + VAL(SUBSTR(THIS.cTextValue, m.lnI, 1))
    ENDFOR

    m.lcCheck = TRANSFORM(MOD(10 - MOD(m.lnControl, 10), 10))

    *--
    THIS.cTextValue = THIS.cTextValue + m.lcCheck
    *THIS.cHumanReadableText = ""

    LOCAL ARRAY laA(10)
    *-- Left Set
    m.laA[1] = "2020101010"   && 0
    m.laA[2] = "1010102020"   && 1
    m.laA[3] = "1010201020"   && 2
    m.laA[4] = "1010202010"   && 3
    m.laA[5] = "1020101020"   && 4
    m.laA[6] = "1020102010"   && 5
    m.laA[7] = "1020201010"   && 6
    m.laA[8] = "2010101020"   && 7
    m.laA[9] = "2010102010"   && 8
    m.laA[10] = "2010201010"   && 9

    m.lcRet = "20"

    FOR m.lnI = 1 TO LEN(THIS.cTextValue)
      m.lcRet = m.lcRet + m.laA(VAL(SUBSTR(THIS.cTextValue, m.lnI, 1 )) + 1)
    ENDFOR

    RETURN m.lcRet + "2"

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_IMB()
  *------------------------------------------------------
  * Generate Intelligent Mail Barcode ...  coming soon !!!
  *------------------------------------------------------
  FUNCTION Code_IMB()
    *!*      LOCAL lnI, lcValid, lcRet, lnControl, lcCheck

    *!*      m.lcValid = "1234567890"
    *!*      IF NOT CHRTRAN(THIS.cTextValue,CHRTRAN(THIS.cTextValue,m.lcValid,""),"") == THIS.cTextValue
    *!*        *-- Chars or lenght not valid
    *!*        THIS.cMsgError = FBC_IMB_01
    *!*        RETURN NULL
    *!*      ENDIF

    *!*      IF LEN(THIS.cTextValue) # 5 AND LEN(THIS.cTextValue) # 9 AND LEN(THIS.cTextValue) # 11
    *!*        *-- Chars or lenght not valid
    *!*        THIS.cMsgError = FBC_IMB_02
    *!*        RETURN NULL
    *!*      ENDIF

    THIS.cTextValue = "AADTFFDFTDADTAADAATFDTDDAAADDTDTTDAFADADDDTFFFDDTTTADFAAADFTDAADA"
    RETURN THIS.AddSpace(THIS.cTextValue, 1)

    *!*      THIS.cMsgError = FBC_IMB_99
    *!*      RETURN NULL
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_RM4SCC()
  *------------------------------------------------------
  * Generate RM4SCC Code (Royal Mail)
  *------------------------------------------------------
  FUNCTION Code_RM4SCC()
    LOCAL lnI, lcValid, lcRet, lnTop, lnBot, lc, lcStart, lcStop
    LOCAL lnPos

    THIS.cTextValue = UPPER(THIS.cTextValue)
    m.lcValid = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_IMB_01
      RETURN NULL
    ENDIF

    *!*      IF LEN(THIS.cTextValue) # 5 AND LEN(THIS.cTextValue) # 9 AND LEN(THIS.cTextValue) # 11
    *!*        *-- Chars or lenght not valid
    *!*        THIS.cMsgError = FBC_IMB_02
    *!*        RETURN NULL
    *!*      ENDIF

    *-- Check Digit
    m.lnTop = 0
    m.lnBot = 0
    FOR m.lnI = 1 TO LEN(THIS.cTextValue)
      m.lnPos = AT(SUBST(THIS.cTextValue, m.lnI, 1), m.lcValid)
      m.lnTop = m.lnTop + INT((m.lnPos - 1) / 6) + 1
      m.lnBot = m.lnBot + ((m.lnPos - 1) % 6) + 1
    ENDFOR
    THIS.cTextValue = THIS.cTextValue + SUBS(m.lcValid, 6 * ((m.lnTop - 1) % 6) + ((m.lnBot - 1) % 6) + 1, 1)

    LOCAL ARRAY laRM4SCC(36)
    m.laRM4SCC(1) =  "T0T0F0F0" && 0
    m.laRM4SCC(2) =  "T0D0A0F0" && 1
    m.laRM4SCC(3) =  "T0D0F0A0" && 2
    m.laRM4SCC(4) =  "D0T0A0F0" && 3
    m.laRM4SCC(5) =  "D0T0F0A0" && 4
    m.laRM4SCC(6) =  "D0D0A0A0" && 5
    m.laRM4SCC(7) =  "T0A0D0F0" && 6
    m.laRM4SCC(8) =  "T0F0T0F0" && 7
    m.laRM4SCC(9) =  "T0F0D0A0" && 8
    m.laRM4SCC(10) = "D0A0T0F0" && 9
    m.laRM4SCC(11) = "D0A0D0A0" && A
    m.laRM4SCC(12) = "D0F0T0A0" && B
    m.laRM4SCC(13) = "T0A0F0D0" && C
    m.laRM4SCC(14) = "T0F0A0D0" && D
    m.laRM4SCC(15) = "T0F0F0T0" && E
    m.laRM4SCC(16) = "D0A0A0D0" && F
    m.laRM4SCC(17) = "D0A0F0T0" && G
    m.laRM4SCC(18) = "D0F0A0T0" && H
    m.laRM4SCC(19) = "A0T0D0F0" && I
    m.laRM4SCC(20) = "A0D0T0F0" && J
    m.laRM4SCC(21) = "A0D0D0A0" && K
    m.laRM4SCC(22) = "F0T0T0F0" && L
    m.laRM4SCC(23) = "F0T0D0A0" && M
    m.laRM4SCC(24) = "F0D0T0A0" && N
    m.laRM4SCC(25) = "A0T0F0D0" && O
    m.laRM4SCC(26) = "A0D0A0D0" && P
    m.laRM4SCC(27) = "A0D0F0T0" && Q
    m.laRM4SCC(28) = "F0T0A0D0" && R
    m.laRM4SCC(29) = "F0T0F0T0" && S
    m.laRM4SCC(30) = "F0D0A0T0" && T
    m.laRM4SCC(31) = "A0A0D0D0" && U
    m.laRM4SCC(32) = "A0F0T0D0" && V
    m.laRM4SCC(33) = "A0F0D0T0" && W
    m.laRM4SCC(34) = "F0A0T0D0" && X
    m.laRM4SCC(35) = "F0A0D0T0" && Y
    m.laRM4SCC(36) = "F0F0T0T0" && Z
    m.lcStart = "A0"
    m.lcStop = "F"

    m.lcRet = ""
    FOR m.lnI = 1 TO LEN(THIS.cTextValue)
      m.lc = SUBSTR(THIS.cTextValue, m.lnI, 1)
      m.lcRet = m.lcRet + m.laRM4SCC(AT(m.lc, m.lcValid))
    ENDFOR

    RETURN m.lcStart + m.lcRet + m.lcStop

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_KIX()
  *------------------------------------------------------
  * Generate KIX-Code (Dutch Postal)
  *------------------------------------------------------
  FUNCTION Code_KIX()
    LOCAL lnI, lcValid, lcRet, lc

    THIS.cTextValue = UPPER(THIS.cTextValue)
    m.lcValid = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_IMB_01
      RETURN NULL
    ENDIF
    *!*      IF LEN(THIS.cTextValue) # 5 AND LEN(THIS.cTextValue) # 9 AND LEN(THIS.cTextValue) # 11
    *!*        *-- Chars or lenght not valid
    *!*        THIS.cMsgError = FBC_IMB_02
    *!*        RETURN NULL
    *!*      ENDIF

    *!*      RETURN THIS.AddSpace(THIS.cTextValue,1)

    LOCAL ARRAY laKIX(36)
    m.laKIX(1) =  "T0T0F0F0" && 0
    m.laKIX(2) =  "T0D0A0F0" && 1
    m.laKIX(3) =  "T0D0F0A0" && 2
    m.laKIX(4) =  "D0T0A0F0" && 3
    m.laKIX(5) =  "D0T0F0A0" && 4
    m.laKIX(6) =  "D0D0A0A0" && 5
    m.laKIX(7) =  "T0A0D0F0" && 6
    m.laKIX(8) =  "T0F0T0F0" && 7
    m.laKIX(9) =  "T0F0D0A0" && 8
    m.laKIX(10) = "D0A0T0F0" && 9
    m.laKIX(11) = "D0A0D0A0" && A
    m.laKIX(12) = "D0F0T0A0" && B
    m.laKIX(13) = "T0A0F0D0" && C
    m.laKIX(14) = "T0F0A0D0" && D
    m.laKIX(15) = "T0F0F0T0" && E
    m.laKIX(16) = "D0A0A0D0" && F
    m.laKIX(17) = "D0A0F0T0" && G
    m.laKIX(18) = "D0F0A0T0" && H
    m.laKIX(19) = "A0T0D0F0" && I
    m.laKIX(20) = "A0D0T0F0" && J
    m.laKIX(21) = "A0D0D0A0" && K
    m.laKIX(22) = "F0T0T0F0" && L
    m.laKIX(23) = "F0T0D0A0" && M
    m.laKIX(24) = "F0D0T0A0" && N
    m.laKIX(25) = "A0T0F0D0" && O
    m.laKIX(26) = "A0D0A0D0" && P
    m.laKIX(27) = "A0D0F0T0" && Q
    m.laKIX(28) = "F0T0A0D0" && R
    m.laKIX(29) = "F0T0F0T0" && S
    m.laKIX(30) = "F0D0A0T0" && T
    m.laKIX(31) = "A0A0D0D0" && U
    m.laKIX(32) = "A0F0T0D0" && V
    m.laKIX(33) = "A0F0D0T0" && W
    m.laKIX(34) = "F0A0T0D0" && X
    m.laKIX(35) = "F0A0D0T0" && Y
    m.laKIX(36) = "F0F0T0T0" && Z

    m.lcRet = ""
    FOR m.lnI = 1 TO LEN(THIS.cTextValue)
      m.lc = SUBSTR(THIS.cTextValue, m.lnI, 1)
      m.lcRet = m.lcRet + m.laKIX(AT(m.lc, m.lcValid))
    ENDFOR

    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Telepen()
  *------------------------------------------------------
  * Generate Code Telepen
  *------------------------------------------------------
  PROCEDURE Code_Telepen()

    LOCAL lcRet, lnLen, lnSum, lnAsc, lcStart, lcStop, nlControl, lcDigit, llDigit
    LOCAL ln, lnControl

    IF NOT THIS.ValidAscii(THIS.cTextValue, 0, 127)
      *-- Chars not valid
      THIS.cMsgError = FBC_TELEPEN_01
      RETURN NULL
    ENDIF

    m.lnLen = LEN(THIS.cTextValue)

    m.lcDigit = "1234567890"
    IF CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcDigit, ""), "") == THIS.cTextValue AND MOD(m.lnLen, 2) = 0
      m.llDigit = .T.
    ELSE
      m.llDigit = .F.
    ENDIF

    LOCAL ARRAY laTelepen[128]
    m.laTelepen(1) = "B0B0B0B0"
    m.laTelepen(2) = "10B0B0B010"
    m.laTelepen(3) = "BSB0B010"
    m.laTelepen(4) = "1010B0B0B0"
    m.laTelepen(5) = "B010B0B010"
    m.laTelepen(6) = "10BSB0B0"
    m.laTelepen(7) = "1S1SB0B0"
    m.laTelepen(8) = "101010B0B010"
    m.laTelepen(9) = "B0BSB010"
    m.laTelepen(10) = "10B010B0B0"
    m.laTelepen(11) = "BS10B0B0"
    m.laTelepen(12) = "1010BSB010"
    m.laTelepen(13) = "B01010B0B0"
    m.laTelepen(14) = "101S1SB010"
    m.laTelepen(15) = "1S101SB010"
    m.laTelepen(16) = "10101010B0B0"
    m.laTelepen(17) = "B0B010B010"
    m.laTelepen(18) = "10B0BSB0"
    m.laTelepen(19) = "BSBSB0"
    m.laTelepen(20) = "1010B010B010"
    m.laTelepen(21) = "B010BSB0"
    m.laTelepen(22) = "10BS10B010"
    m.laTelepen(23) = "1S1S10B010"
    m.laTelepen(24) = "101010BSB0"
    m.laTelepen(25) = "B01S1SB0"
    m.laTelepen(26) = "10B01010B010"
    m.laTelepen(27) = "BS1010B010"
    m.laTelepen(28) = "10101S1SB0"
    m.laTelepen(29) = "B0101010B010"
    m.laTelepen(30) = "101S101SB0"
    m.laTelepen(31) = "1S10101SB0"
    m.laTelepen(32) = "1010101010B010"
    m.laTelepen(33) = "B0B0BS10"
    m.laTelepen(34) = "10B0B010B0"
    m.laTelepen(35) = "BSB010B0"
    m.laTelepen(36) = "1010B0BS10"
    m.laTelepen(37) = "B010B010B0"
    m.laTelepen(38) = "10BSBS10"
    m.laTelepen(39) = "1S1SBS10"
    m.laTelepen(40) = "101010B010B0"
    m.laTelepen(41) = "B0BS10B0"
    m.laTelepen(42) = "10B010BS10"
    m.laTelepen(43) = "BS10BS10"
    m.laTelepen(44) = "1010BS10B0"
    m.laTelepen(45) = "B01010BS10"
    m.laTelepen(46) = "101S1S10B0"
    m.laTelepen(47) = "1S101S10B0"
    m.laTelepen(48) = "10101010BS10"
    m.laTelepen(49) = "B0B01010B0"
    m.laTelepen(50) = "10B01S1S10"
    m.laTelepen(51) = "BS1S1S10"
    m.laTelepen(52) = "1010B01010B0"
    m.laTelepen(53) = "B0101S1S10"
    m.laTelepen(54) = "10BS1010B0"
    m.laTelepen(55) = "1S1S1010B0"
    m.laTelepen(56) = "1010101S1S10"
    m.laTelepen(57) = "B01S101S10"
    m.laTelepen(58) = "10B0101010B0"
    m.laTelepen(59) = "BS101010B0"
    m.laTelepen(60) = "10101S101S10"
    m.laTelepen(61) = "B010101010B0"
    m.laTelepen(62) = "101S10101S10"
    m.laTelepen(63) = "1S1010101S10"
    m.laTelepen(64) = "101010101010B0"
    m.laTelepen(65) = "B0B0B01010"
    m.laTelepen(66) = "10B0B0BS"
    m.laTelepen(67) = "BSB0BS"
    m.laTelepen(68) = "1010B0B01010"
    m.laTelepen(69) = "B010B0BS"
    m.laTelepen(70) = "10BSB01010"
    m.laTelepen(71) = "1S1SB01010"
    m.laTelepen(72) = "101010B0BS"
    m.laTelepen(73) = "B0BSBS"
    m.laTelepen(74) = "10B010B01010"
    m.laTelepen(75) = "BS10B01010"
    m.laTelepen(76) = "1010BSBS"
    m.laTelepen(77) = "B01010B01010"
    m.laTelepen(78) = "101S1SBS"
    m.laTelepen(79) = "1S101SBS"
    m.laTelepen(80) = "10101010B01010"
    m.laTelepen(81) = "B0B010BS"
    m.laTelepen(82) = "10B0BS1010"
    m.laTelepen(83) = "BSBS1010"
    m.laTelepen(84) = "1010B010BS"
    m.laTelepen(85) = "B010BS1010"
    m.laTelepen(86) = "10BS10BS"
    m.laTelepen(87) = "1S1S10BS"
    m.laTelepen(88) = "101010BS1010"
    m.laTelepen(89) = "B01S1S1010"
    m.laTelepen(90) = "10B01010BS"
    m.laTelepen(91) = "BS1010BS"
    m.laTelepen(92) = "10101S1S1010"
    m.laTelepen(93) = "B0101010BS"
    m.laTelepen(94) = "101S101S1010"
    m.laTelepen(95) = "1S10101S1010"
    m.laTelepen(96) = "1010101010BS"
    m.laTelepen(97) = "B0B01S1S"
    m.laTelepen(98) = "10B0B0101010"
    m.laTelepen(99) = "BSB0101010"
    m.laTelepen(100) = "1010B01S1S"
    m.laTelepen(101) = "B010B0101010"
    m.laTelepen(102) = "10BS1S1S"
    m.laTelepen(103) = "1S1S1S1S"
    m.laTelepen(104) = "101010B0101010"
    m.laTelepen(105) = "B0BS101010"
    m.laTelepen(106) = "10B0101S1S"
    m.laTelepen(107) = "BS101S1S"
    m.laTelepen(108) = "1010BS101010"
    m.laTelepen(109) = "B010101S1S"
    m.laTelepen(110) = "101S1S101010"
    m.laTelepen(111) = "1S101S101010"
    m.laTelepen(112) = "101010101S1S"
    m.laTelepen(113) = "B0B010101010"
    m.laTelepen(114) = "10B01S101S"
    m.laTelepen(115) = "BS1S101S"
    m.laTelepen(116) = "1010B010101010"
    m.laTelepen(117) = "B0101S101S"
    m.laTelepen(118) = "10BS10101010"
    m.laTelepen(119) = "1S1S10101010"
    m.laTelepen(120) = "1010101S101S"
    m.laTelepen(121) = "B01S10101S"
    m.laTelepen(122) = "10B01010101010"
    m.laTelepen(123) = "BS1010101010"
    m.laTelepen(124) = "10101S10101S"
    m.laTelepen(125) = "B0101010101010"
    m.laTelepen(126) = "101S1010101S"
    m.laTelepen(127) = "1S101010101S"
    m.laTelepen(128) = "1010101010101010"    && DEL

    m.lnLen = LEN(THIS.cTextValue)

    *-- Always calculates the check digit
    m.lnSum = 0
    IF m.llDigit
      FOR m.ln = 1 TO m.lnLen STEP 2
        m.lnSum = m.lnSum + (VAL(SUBSTR(THIS.cTextValue, m.ln, 2)) + 27)
      ENDFOR
    ELSE
      FOR m.ln = 1 TO m.lnLen
        m.lnSum = m.lnSum + (ASC(SUBSTR(THIS.cTextValue, m.ln, 1)))
      ENDFOR
    ENDIF

    m.lnControl = IIF(MOD(m.lnSum, 127) > 0, MOD(m.lnSum, 127), MOD(m.lnSum, 127) * -1)

    m.lnLen = LEN(THIS.cTextValue)

    *-- Encode 0s and 1s
    m.lcRet = ""
    IF m.llDigit
      m.lcStart = "1010101011101000"  && by GBG
      m.lcStop =  "1110100010101010"  && by GBG
      FOR m.ln = 1 TO m.lnLen STEP 2
        m.lcRet = m.lcRet + m.laTelepen(VAL(SUBSTR(THIS.cTextValue, m.ln, 2)) + 27 + 1)
      ENDFOR
      m.lcRet = m.lcRet + m.laTelepen(127 - m.lnControl + 1)
    ELSE
      m.lcStart = m.laTelepen(ASC("_") + 1)
      m.lcStop = SUBSTR(m.laTelepen(ASC("z") + 1), 1, 15)
      THIS.cTextValue = THIS.cTextValue + CHR(127 - m.lnControl)
      m.lnLen = LEN(THIS.cTextValue)
      FOR m.ln = 1 TO m.lnLen
        m.lcRet = m.lcRet + m.laTelepen(ASC(SUBSTR(THIS.cTextValue, m.ln, 1)) + 1)
      ENDFOR
    ENDIF

    *-- Add Start and Stop and apply ratio
    RETURN THIS.ApplyRatio(m.lcStart + m.lcRet + m.lcStop, THIS.nRatio)

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Pharmacode1()
  *------------------------------------------------------
  * Generate One Track Pharmacode barcode
  * FBC_CODE_PHARMA1 174
  *------------------------------------------------------
  FUNCTION Code_Pharmacode1()
    LOCAL lnI, lcValid, lcRet

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_PHARMA1_01
      RETURN NULL
    ENDIF

    IF NOT BETWEEN(VAL(THIS.cTextValue), 3, 131070)
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_PHARMA1_02
      RETURN NULL
    ENDIF

    m.lcRet = ""
    m.lnI = VAL(THIS.cTextValue)
    DO WHILE m.lnI > 0
      IF MOD(m.lnI, 2) = 0
        m.lcRet = "111" + m.lcRet
        m.lnI = (m.lnI - 2) / 2
      ELSE
        m.lcRet = "1" + m.lcRet
        m.lnI = (m.lnI - 1) / 2
      ENDIF
      IF m.lnI > 0
        *-- Space
        m.lcRet = "00" + m.lcRet
      ENDIF
    ENDDO
    RETURN m.lcRet
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Pharmacode2()
  *------------------------------------------------------
  * Generate Two Track Pharmacode barcode
  * FBC_CODE_PHARMA2 175
  *------------------------------------------------------
  FUNCTION Code_Pharmacode2()
    LOCAL lnI, lcValid, lcRet
    LOCAL lnR

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cTextValue, CHRTRAN(THIS.cTextValue, m.lcValid, ""), "") == THIS.cTextValue
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_PHARMA1_03
      RETURN NULL
    ENDIF

    IF NOT BETWEEN(VAL(THIS.cTextValue), 4, 64570080)
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_PHARMA2_01
      RETURN NULL
    ENDIF

    m.lcRet = ""
    m.lnI = VAL(THIS.cTextValue)

    DO WHILE m.lnI > 0
      m.lnR = MOD(m.lnI, 3)
      DO CASE
        CASE m.lnR = 0
          *-- Full
          m.lcRet = "FFF" + m.lcRet
          m.lnI = (m.lnI - 3) / 3
        CASE m.lnR = 1
          *-- Desc
          m.lcRet = "DDD" + m.lcRet
          m.lnI = (m.lnI - 1) / 3
        CASE m.lnR = 2
          *-- Asc
          m.lcRet = "AAA" + m.lcRet
          m.lnI = (m.lnI - 2) / 3
      ENDCASE
      IF m.lnI > 0
        *-- Space
        m.lcRet = "SSS" + m.lcRet
      ENDIF
    ENDDO
    RETURN m.lcRet
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Sup5()
  *------------------------------------------------------
  * Generate UPC/EAN Supplemental 5
  *------------------------------------------------------
  FUNCTION Code_Sup5()
    LOCAL lnI, lcValid, lcStart, lcRet, lcControl

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cSupplementalText, CHRTRAN(THIS.cSupplementalText, m.lcValid, ""), "") == THIS.cSupplementalText
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_SUPP5_01
      RETURN NULL
    ENDIF

    *--
    THIS.cSupplementalText = PADL(THIS.cSupplementalText, 5, "0")
    * THIS.cHumanReadableText = THIS.cSupplementalText

    LOCAL ARRAY laA(10), laB(10), laParity(10)
    m.laParity(1) = "EEOOO"
    m.laParity(2) = "EOEOO"
    m.laParity(3) = "EOOEO"
    m.laParity(4) = "EOOOE"
    m.laParity(5) = "OEEOO"
    m.laParity(6) = "OOEEO"
    m.laParity(7) = "OOOEE"
    m.laParity(8) = "OEOEO"
    m.laParity(9) = "OEOOE"
    m.laParity(10) = "OOEOE"

    m.lcControl = RIGHT(STR(VAL(SUBSTR( THIS.cSupplementalText, 1, 1 )) * 3 + VAL(SUBSTR(THIS.cSupplementalText, 3, 1 )) * 3 + ;
          VAL(SUBSTR(THIS.cSupplementalText, 5, 1 )) * 3 + VAL(SUBSTR(THIS.cSupplementalText, 2, 1 )) * 9 + ;
          VAL(SUBSTR(THIS.cSupplementalText, 4, 1 )) * 9, 5, 0 ), 1 )

    m.lcControl = m.laParity(VAL(m.lcControl) + 1)

    *-- Left Set
    m.laA[1] = "0001101"   && 0
    m.laA[2] = "0011001"   && 1
    m.laA[3] = "0010011"   && 2
    m.laA[4] = "0111101"   && 3
    m.laA[5] = "0100011"   && 4
    m.laA[6] = "0110001"   && 5
    m.laA[7] = "0101111"   && 6
    m.laA[8] = "0111011"   && 7
    m.laA[9] = "0110111"   && 8
    m.laA[10] = "0001011"   && 9

    *-- Right Set
    m.laB[1] = "0100111"   && 0
    m.laB[2] = "0110011"   && 1
    m.laB[3] = "0011011"   && 2
    m.laB[4] = "0100001"   && 3
    m.laB[5] = "0011101"   && 4
    m.laB[6] = "0111001"   && 5
    m.laB[7] = "0000101"   && 6
    m.laB[8] = "0010001"   && 7
    m.laB[9] = "0001001"   && 8
    m.laB[10] = "0010111"   && 9

    m.lcStart = "1011"

    m.lcRet = m.lcStart

    FOR m.lnI = 1 TO 5
      IF SUBSTR(m.lcControl, m.lnI, 1 ) = "O"
        m.lcRet = m.lcRet + m.laA(VAL(SUBSTR(THIS.cSupplementalText, m.lnI, 1 )) + 1)
      ELSE
        m.lcRet = m.lcRet + m.laB(VAL(SUBSTR(THIS.cSupplementalText, m.lnI, 1 )) + 1)
      ENDIF
      IF m.lnI < 5
        m.lcRet = m.lcRet + "01"
      ENDIF
    ENDFOR

    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Sup2()
  *------------------------------------------------------
  * Generate UPC/EAN Supplemental 2
  *------------------------------------------------------
  FUNCTION Code_Sup2()
    LOCAL lnI, lcValid, lcStart, lcRet, lcControl

    m.lcValid = "1234567890"
    IF NOT CHRTRAN(THIS.cSupplementalText, CHRTRAN(THIS.cSupplementalText, m.lcValid, ""), "") == THIS.cSupplementalText
      *-- Chars or lenght not valid
      THIS.cMsgError = FBC_SUPP2_01
      RETURN NULL
    ENDIF

    *--
    THIS.cSupplementalText = PADL(THIS.cSupplementalText, 2, "0")
    *  THIS.cHumanReadableText = THIS.cTextValue

    LOCAL ARRAY laA(10), laB(10), laParity(4)
    m.laParity(1) = "OO"
    m.laParity(2) = "OE"
    m.laParity(3) = "EO"
    m.laParity(4) = "EE"

    m.lcControl = m.laParity(MOD(VAL(THIS.cSupplementalText), 4) + 1)

    *-- Left Set
    m.laA[1] = "0001101"   && 0
    m.laA[2] = "0011001"   && 1
    m.laA[3] = "0010011"   && 2
    m.laA[4] = "0111101"   && 3
    m.laA[5] = "0100011"   && 4
    m.laA[6] = "0110001"   && 5
    m.laA[7] = "0101111"   && 6
    m.laA[8] = "0111011"   && 7
    m.laA[9] = "0110111"   && 8
    m.laA[10] = "0001011"   && 9

    *-- Right Set
    m.laB[1] = "0100111"   && 0
    m.laB[2] = "0110011"   && 1
    m.laB[3] = "0011011"   && 2
    m.laB[4] = "0100001"   && 3
    m.laB[5] = "0011101"   && 4
    m.laB[6] = "0111001"   && 5
    m.laB[7] = "0000101"   && 6
    m.laB[8] = "0010001"   && 7
    m.laB[9] = "0001001"   && 8
    m.laB[10] = "0010111"   && 9

    m.lcStart = "1011"
    m.lcRet = m.lcStart

    FOR m.lnI = 1 TO 2
      IF SUBSTR(m.lcControl, m.lnI, 1 ) = "O"
        m.lcRet = m.lcRet + m.laA(VAL(SUBSTR(THIS.cSupplementalText, m.lnI, 1 )) + 1)
      ELSE
        m.lcRet = m.lcRet + m.laB(VAL(SUBSTR(THIS.cSupplementalText, m.lnI, 1 )) + 1)
      ENDIF
      IF m.lnI = 1
        m.lcRet = m.lcRet + "01"
      ENDIF
    ENDFOR

    RETURN m.lcRet

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Code_Ean128()
  *------------------------------------------------------
  * Generate EAN/UCC/GS1 128 bar code
  *------------------------------------------------------
  PROCEDURE Code_Ean128()

    LOCAL lcCurrentSet
    IF NOT THIS.ValidAscii(THIS.cTextValue, 0, 127)
      *-- Chars not valid
      THIS.cMsgError = FBC_EAN128_01
      RETURN NULL
    ENDIF

    *-- Special characters
    #DEFINE FBC_SHIFT CHR(98 + 32)
    #DEFINE FBC_CODEC CHR(99 + 32)
    #DEFINE FBC_CODEB CHR(100 + 32)
    #DEFINE FBC_CODEA CHR(101 + 32)
    #DEFINE FBC_FNC1 CHR(102 + 32)

    *-- Use Application Identifiers. Ex (02)012345678901234(37)10(10)BATCH
    IF THIS.lUseAppId
      LOCAL lcN, lnH, lnI, laL(1), laAI(351)

      *-- AIs fixed length
      m.laAI(1) = "(00)"
      m.laAI(2) = "(01)"
      m.laAI(3) = "(02)"
      m.laAI(4) = "(11)"
      m.laAI(5) = "(12)"
      m.laAI(6) = "(13)"
      m.laAI(7) = "(15)"
      m.laAI(8) = "(17)"
      m.laAI(9) = "(20)"
      m.laAI(10) = "(3100)"
      m.laAI(11) = "(3101)"
      m.laAI(12) = "(3102)"
      m.laAI(13) = "(3103)"
      m.laAI(14) = "(3104)"
      m.laAI(15) = "(3105)"
      m.laAI(16) = "(3110)"
      m.laAI(17) = "(3111)"
      m.laAI(18) = "(3112)"
      m.laAI(19) = "(3113)"
      m.laAI(20) = "(3114)"
      m.laAI(21) = "(3115)"
      m.laAI(22) = "(3120)"
      m.laAI(23) = "(3121)"
      m.laAI(24) = "(3122)"
      m.laAI(25) = "(3123)"
      m.laAI(26) = "(3124)"
      m.laAI(27) = "(3125)"
      m.laAI(28) = "(3130)"
      m.laAI(29) = "(3131)"
      m.laAI(30) = "(3132)"
      m.laAI(31) = "(3133)"
      m.laAI(32) = "(3134)"
      m.laAI(33) = "(3135)"
      m.laAI(34) = "(3140)"
      m.laAI(35) = "(3141)"
      m.laAI(36) = "(3142)"
      m.laAI(37) = "(3143)"
      m.laAI(38) = "(3144)"
      m.laAI(39) = "(3145)"
      m.laAI(40) = "(3150)"
      m.laAI(41) = "(3151)"
      m.laAI(42) = "(3152)"
      m.laAI(43) = "(3153)"
      m.laAI(44) = "(3154)"
      m.laAI(45) = "(3155)"
      m.laAI(46) = "(3160)"
      m.laAI(47) = "(3161)"
      m.laAI(48) = "(3162)"
      m.laAI(49) = "(3163)"
      m.laAI(50) = "(3164)"
      m.laAI(51) = "(3165)"
      m.laAI(52) = "(3200)"
      m.laAI(53) = "(3201)"
      m.laAI(54) = "(3202)"
      m.laAI(55) = "(3203)"
      m.laAI(56) = "(3204)"
      m.laAI(57) = "(3205)"
      m.laAI(58) = "(3210)"
      m.laAI(59) = "(3211)"
      m.laAI(60) = "(3212)"
      m.laAI(61) = "(3213)"
      m.laAI(62) = "(3214)"
      m.laAI(63) = "(3215)"
      m.laAI(64) = "(3220)"
      m.laAI(65) = "(3221)"
      m.laAI(66) = "(3222)"
      m.laAI(67) = "(3223)"
      m.laAI(68) = "(3224)"
      m.laAI(69) = "(3225)"
      m.laAI(70) = "(3230)"
      m.laAI(71) = "(3231)"
      m.laAI(72) = "(3232)"
      m.laAI(73) = "(3233)"
      m.laAI(74) = "(3234)"
      m.laAI(75) = "(3235)"
      m.laAI(76) = "(3240)"
      m.laAI(77) = "(3241)"
      m.laAI(78) = "(3242)"
      m.laAI(79) = "(3243)"
      m.laAI(80) = "(3244)"
      m.laAI(81) = "(3245)"
      m.laAI(82) = "(3250)"
      m.laAI(83) = "(3251)"
      m.laAI(84) = "(3252)"
      m.laAI(85) = "(3253)"
      m.laAI(86) = "(3254)"
      m.laAI(87) = "(3255)"
      m.laAI(88) = "(3260)"
      m.laAI(89) = "(3261)"
      m.laAI(90) = "(3262)"
      m.laAI(91) = "(3263)"
      m.laAI(92) = "(3264)"
      m.laAI(93) = "(3265)"
      m.laAI(94) = "(3270)"
      m.laAI(95) = "(3271)"
      m.laAI(96) = "(3272)"
      m.laAI(97) = "(3273)"
      m.laAI(98) = "(3274)"
      m.laAI(99) = "(3275)"
      m.laAI(100) = "(3280)"
      m.laAI(101) = "(3281)"
      m.laAI(102) = "(3282)"
      m.laAI(103) = "(3283)"
      m.laAI(104) = "(3284)"
      m.laAI(105) = "(3285)"
      m.laAI(106) = "(3290)"
      m.laAI(107) = "(3291)"
      m.laAI(108) = "(3292)"
      m.laAI(109) = "(3293)"
      m.laAI(110) = "(3294)"
      m.laAI(111) = "(3295)"
      m.laAI(112) = "(3300)"
      m.laAI(113) = "(3301)"
      m.laAI(114) = "(3302)"
      m.laAI(115) = "(3303)"
      m.laAI(116) = "(3304)"
      m.laAI(117) = "(3305)"
      m.laAI(118) = "(3310)"
      m.laAI(119) = "(3311)"
      m.laAI(120) = "(3312)"
      m.laAI(121) = "(3313)"
      m.laAI(122) = "(3314)"
      m.laAI(123) = "(3315)"
      m.laAI(124) = "(3320)"
      m.laAI(125) = "(3321)"
      m.laAI(126) = "(3322)"
      m.laAI(127) = "(3323)"
      m.laAI(128) = "(3324)"
      m.laAI(129) = "(3325)"
      m.laAI(130) = "(3330)"
      m.laAI(131) = "(3331)"
      m.laAI(132) = "(3332)"
      m.laAI(133) = "(3333)"
      m.laAI(134) = "(3334)"
      m.laAI(135) = "(3335)"
      m.laAI(136) = "(3340)"
      m.laAI(137) = "(3341)"
      m.laAI(138) = "(3342)"
      m.laAI(139) = "(3343)"
      m.laAI(140) = "(3344)"
      m.laAI(141) = "(3345)"
      m.laAI(142) = "(3350)"
      m.laAI(143) = "(3351)"
      m.laAI(144) = "(3352)"
      m.laAI(145) = "(3353)"
      m.laAI(146) = "(3354)"
      m.laAI(147) = "(3355)"
      m.laAI(148) = "(3360)"
      m.laAI(149) = "(3361)"
      m.laAI(150) = "(3362)"
      m.laAI(151) = "(3363)"
      m.laAI(152) = "(3364)"
      m.laAI(153) = "(3365)"
      m.laAI(154) = "(3370)"
      m.laAI(155) = "(3371)"
      m.laAI(156) = "(3372)"
      m.laAI(157) = "(3373)"
      m.laAI(158) = "(3374)"
      m.laAI(159) = "(3375)"
      m.laAI(160) = "(3400)"
      m.laAI(161) = "(3401)"
      m.laAI(162) = "(3402)"
      m.laAI(163) = "(3403)"
      m.laAI(164) = "(3404)"
      m.laAI(165) = "(3405)"
      m.laAI(166) = "(3410)"
      m.laAI(167) = "(3411)"
      m.laAI(168) = "(3412)"
      m.laAI(169) = "(3413)"
      m.laAI(170) = "(3414)"
      m.laAI(171) = "(3415)"
      m.laAI(172) = "(3420)"
      m.laAI(173) = "(3421)"
      m.laAI(174) = "(3422)"
      m.laAI(175) = "(3423)"
      m.laAI(176) = "(3424)"
      m.laAI(177) = "(3425)"
      m.laAI(178) = "(3430)"
      m.laAI(179) = "(3431)"
      m.laAI(180) = "(3432)"
      m.laAI(181) = "(3433)"
      m.laAI(182) = "(3434)"
      m.laAI(183) = "(3435)"
      m.laAI(184) = "(3440)"
      m.laAI(185) = "(3441)"
      m.laAI(186) = "(3442)"
      m.laAI(187) = "(3443)"
      m.laAI(188) = "(3444)"
      m.laAI(189) = "(3445)"
      m.laAI(190) = "(3450)"
      m.laAI(191) = "(3451)"
      m.laAI(192) = "(3452)"
      m.laAI(193) = "(3453)"
      m.laAI(194) = "(3454)"
      m.laAI(195) = "(3455)"
      m.laAI(196) = "(3460)"
      m.laAI(197) = "(3461)"
      m.laAI(198) = "(3462)"
      m.laAI(199) = "(3463)"
      m.laAI(200) = "(3464)"
      m.laAI(201) = "(3465)"
      m.laAI(202) = "(3470)"
      m.laAI(203) = "(3471)"
      m.laAI(204) = "(3472)"
      m.laAI(205) = "(3473)"
      m.laAI(206) = "(3474)"
      m.laAI(207) = "(3475)"
      m.laAI(208) = "(3480)"
      m.laAI(209) = "(3481)"
      m.laAI(210) = "(3482)"
      m.laAI(211) = "(3483)"
      m.laAI(212) = "(3484)"
      m.laAI(213) = "(3485)"
      m.laAI(214) = "(3490)"
      m.laAI(215) = "(3491)"
      m.laAI(216) = "(3492)"
      m.laAI(217) = "(3493)"
      m.laAI(218) = "(3494)"
      m.laAI(219) = "(3495)"
      m.laAI(220) = "(3500)"
      m.laAI(221) = "(3501)"
      m.laAI(222) = "(3502)"
      m.laAI(223) = "(3503)"
      m.laAI(224) = "(3504)"
      m.laAI(225) = "(3505)"
      m.laAI(226) = "(3510)"
      m.laAI(227) = "(3511)"
      m.laAI(228) = "(3512)"
      m.laAI(229) = "(3513)"
      m.laAI(230) = "(3514)"
      m.laAI(231) = "(3515)"
      m.laAI(232) = "(3520)"
      m.laAI(233) = "(3521)"
      m.laAI(234) = "(3522)"
      m.laAI(235) = "(3523)"
      m.laAI(236) = "(3524)"
      m.laAI(237) = "(3525)"
      m.laAI(238) = "(3530)"
      m.laAI(239) = "(3531)"
      m.laAI(240) = "(3532)"
      m.laAI(241) = "(3533)"
      m.laAI(242) = "(3534)"
      m.laAI(243) = "(3535)"
      m.laAI(244) = "(3540)"
      m.laAI(245) = "(3541)"
      m.laAI(246) = "(3542)"
      m.laAI(247) = "(3543)"
      m.laAI(248) = "(3544)"
      m.laAI(249) = "(3545)"
      m.laAI(250) = "(3550)"
      m.laAI(251) = "(3551)"
      m.laAI(252) = "(3552)"
      m.laAI(253) = "(3553)"
      m.laAI(254) = "(3554)"
      m.laAI(255) = "(3555)"
      m.laAI(256) = "(3560)"
      m.laAI(257) = "(3561)"
      m.laAI(258) = "(3562)"
      m.laAI(259) = "(3563)"
      m.laAI(260) = "(3564)"
      m.laAI(261) = "(3565)"
      m.laAI(262) = "(3570)"
      m.laAI(263) = "(3571)"
      m.laAI(264) = "(3572)"
      m.laAI(265) = "(3573)"
      m.laAI(266) = "(3574)"
      m.laAI(267) = "(3575)"
      m.laAI(268) = "(3600)"
      m.laAI(269) = "(3601)"
      m.laAI(270) = "(3602)"
      m.laAI(271) = "(3603)"
      m.laAI(272) = "(3604)"
      m.laAI(273) = "(3605)"
      m.laAI(274) = "(3610)"
      m.laAI(275) = "(3611)"
      m.laAI(276) = "(3612)"
      m.laAI(277) = "(3613)"
      m.laAI(278) = "(3614)"
      m.laAI(279) = "(3615)"
      m.laAI(280) = "(3620)"
      m.laAI(281) = "(3621)"
      m.laAI(282) = "(3622)"
      m.laAI(283) = "(3623)"
      m.laAI(284) = "(3624)"
      m.laAI(285) = "(3625)"
      m.laAI(286) = "(3630)"
      m.laAI(287) = "(3631)"
      m.laAI(288) = "(3632)"
      m.laAI(289) = "(3633)"
      m.laAI(290) = "(3634)"
      m.laAI(291) = "(3635)"
      m.laAI(292) = "(3640)"
      m.laAI(293) = "(3641)"
      m.laAI(294) = "(3642)"
      m.laAI(295) = "(3643)"
      m.laAI(296) = "(3644)"
      m.laAI(297) = "(3645)"
      m.laAI(298) = "(3650)"
      m.laAI(299) = "(3651)"
      m.laAI(300) = "(3652)"
      m.laAI(301) = "(3653)"
      m.laAI(302) = "(3654)"
      m.laAI(303) = "(3655)"
      m.laAI(304) = "(3660)"
      m.laAI(305) = "(3661)"
      m.laAI(306) = "(3662)"
      m.laAI(307) = "(3663)"
      m.laAI(308) = "(3664)"
      m.laAI(309) = "(3665)"
      m.laAI(310) = "(3670)"
      m.laAI(311) = "(3671)"
      m.laAI(312) = "(3672)"
      m.laAI(313) = "(3673)"
      m.laAI(314) = "(3674)"
      m.laAI(315) = "(3675)"
      m.laAI(316) = "(3680)"
      m.laAI(317) = "(3681)"
      m.laAI(318) = "(3682)"
      m.laAI(319) = "(3683)"
      m.laAI(320) = "(3684)"
      m.laAI(321) = "(3685)"
      m.laAI(322) = "(3690)"
      m.laAI(323) = "(3691)"
      m.laAI(324) = "(3692)"
      m.laAI(325) = "(3693)"
      m.laAI(326) = "(3694)"
      m.laAI(327) = "(3695)"
      m.laAI(328) = "(3940)"
      m.laAI(329) = "(3941)"
      m.laAI(330) = "(3942)"
      m.laAI(331) = "(3943)"
      m.laAI(332) = "(410)"
      m.laAI(333) = "(411)"
      m.laAI(334) = "(412)"
      m.laAI(335) = "(413)"
      m.laAI(336) = "(414)"
      m.laAI(337) = "(415)"
      m.laAI(338) = "(416)"
      m.laAI(339) = "(422)"
      m.laAI(340) = "(424)"
      m.laAI(341) = "(426)"
      m.laAI(342) = "(7001)"
      m.laAI(343) = "(7003)"
      m.laAI(344) = "(7004)"
      m.laAI(345) = "(7006)"
      m.laAI(346) = "(8001)"
      m.laAI(347) = "(8005)"
      m.laAI(348) = "(8017)"
      m.laAI(349) = "(8018)"
      m.laAI(350) = "(8026)"
      m.laAI(351) = "(8111)"

      m.lcN = ""
      m.lnH = ALINES(laL, THIS.cTextValue, 4, "(")
      FOR m.lnI =  1 TO m.lnH
        m.laL(m.lnI) = "(" + m.laL(m.lnI)
        IF ASCAN(m.laAI, SUBSTR(m.laL(m.lnI), 1, AT(")", m.laL(m.lnI), 1)), -1, -1, 1, 15) = 0
          IF m.lnI <> m.lnH
            m.laL(m.lnI) = m.laL(m.lnI) + FBC_FNC1
          ENDIF
        ENDIF
        m.lcN = m.lcN + m.laL(m.lnI)
      ENDFOR
      THIS.cTextValue = CHRTRAN(m.lcN, "()", "" )
    ENDIF

    *!*      *-- Use Application Identifiers. Ex (01)01234567890128(15)101231(10)BATCH
    *!*      IF THIS.lUseAppId
    *!*        *-- Replacement parentheses
    *!*        THIS.cTextValue = CHRTRAN(THIS.cTextValue, "()", FBC_FNC1 )
    *!*      ENDIF

    *-- Add FNC1 if necessary
    IF LEFT(THIS.cTextValue, 1) <> FBC_FNC1
      THIS.cTextValue = FBC_FNC1 + THIS.cTextValue
    ENDIF

    *-- Current Set
    LOCAL lnSum, lcStart, lcStop, lnLen, lcRet
    IF THIS.IsNumeric(SUBSTR(THIS.cTextValue, 2, 4))
      m.lcCurrentSet = "C"
      m.lnSum = 105 && C
    ELSE
      IF THIS.ValidAscii(THIS.cTextValue, 32, 134)
        m.lcCurrentSet = "B"
        m.lnSum = 104 && B
      ELSE
        m.lcCurrentSet = "A"
        m.lnSum = 103 && A
      ENDIF
    ENDIF

    *-- Check all string
    LOCAL lcPar, lcStr, ln
    STORE "" TO m.lcStr, m.lcPar
    FOR m.ln = 1 TO LEN(THIS.cTextValue)
      m.lcPar = m.lcPar + SUBSTR(THIS.cTextValue, m.ln, 1)
      IF LEN(m.lcPar) = 1
        IF INLIST(m.lcPar, FBC_FNC1, FBC_SHIFT, FBC_CODEC, FBC_CODEB, FBC_CODEA)
          *-- Control code
          m.lcStr = m.lcStr + m.lcPar
        ELSE  && INLIST(...
          IF ISDIGIT(m.lcPar) AND m.ln < LEN(THIS.cTextValue)
            LOOP
          ELSE && ISDIGIT(m.lcPar)
            IF m.lcCurrentSet = "C"
              IF THIS.ValidAscii(SUBSTR(THIS.cTextValue, m.ln), 32, 134) && The rest
                m.lcCurrentSet = "B"
                m.lcStr = m.lcStr + FBC_CODEB + m.lcPar
              ELSE && THIS.ValidAscii(
                m.lcCurrentSet = "A"
                m.lcStr = m.lcStr + FBC_CODEA + m.lcPar
              ENDIF && THIS.ValidAscii(
            ELSE && m.lcCurrentSet = "C"
              m.lcStr = m.lcStr + m.lcPar
            ENDIF && m.lcCurrentSet = "C"
          ENDIF && ISDIGIT(m.lcPar)
        ENDIF  && INLIST(...
      ELSE && LEN(m.lcPar) = 1
        IF THIS.IsNumeric(m.lcPar)
          IF m.lcCurrentSet = "C"
            m.lcStr = m.lcStr + THIS.Pair2Char(m.lcPar)
          ELSE && m.lcCurrentSet = "C"
            *-- Change Current Set C if 4 digit are numeric
            IF THIS.IsNumeric(SUBSTR(THIS.cTextValue, m.ln + 1, 2))
              m.lcCurrentSet = "C"
              m.lcStr = m.lcStr + FBC_CODEC + THIS.Pair2Char(m.lcPar)
            ELSE && THIS.IsNumeric(SUBSTR(THIS.cTextValue,m.ln+1,2))
              m.lcStr = m.lcStr + m.lcPar
            ENDIF && THIS.IsNumeric(SUBSTR(THIS.cTextValue,m.ln+1,2))
          ENDIF && m.lcCurrentSet = "C"
        ELSE && THIS.IsNumeric(m.lcPar)
          *-- 1st. is digit
          IF m.lcCurrentSet = "C"
            IF THIS.ValidAscii(SUBSTR(THIS.cTextValue, m.ln), 32, 134) && The rest
              m.lcCurrentSet = "B"
              m.lcStr = m.lcStr + FBC_CODEB + m.lcPar
            ELSE && THIS.ValidAscii(
              m.lcCurrentSet = "A"
              m.lcStr = m.lcStr + FBC_CODEA + m.lcPar
            ENDIF && THIS.ValidAscii(
          ELSE && m.lcCurrentSet = "C"
            m.lcStr = m.lcStr + m.lcPar
          ENDIF && m.lcCurrentSet = "C"
        ENDIF &&  && THIS.IsNumeric(m.lcPar)
      ENDIF && LEN(m.lcPar) = 1
      m.lcPar = ""
    ENDFOR

    THIS.cTextValue = m.lcStr

    LOCAL ARRAY laEan128[106]
    m.laEan128[1] = "11011001100"
    m.laEan128[2] = "11001101100"
    m.laEan128[3] = "11001100110"
    m.laEan128[4] = "10010011000"
    m.laEan128[5] = "10010001100"
    m.laEan128[6] = "10001001100"
    m.laEan128[7] = "10011001000"
    m.laEan128[8] = "10011000100"
    m.laEan128[9] = "10001100100"
    m.laEan128[10] = "11001001000"
    m.laEan128[11] = "11001000100"
    m.laEan128[12] = "11000100100"
    m.laEan128[13] = "10110011100"
    m.laEan128[14] = "10011011100"
    m.laEan128[15] = "10011001110"
    m.laEan128[16] = "10111001100"
    m.laEan128[17] = "10011101100"
    m.laEan128[18] = "10011100110"
    m.laEan128[19] = "11001110010"
    m.laEan128[20] = "11001011100"
    m.laEan128[21] = "11001001110"
    m.laEan128[22] = "11011100100"
    m.laEan128[23] = "11001110100"
    m.laEan128[24] = "11101101110"
    m.laEan128[25] = "11101001100"
    m.laEan128[26] = "11100101100"
    m.laEan128[27] = "11100100110"
    m.laEan128[28] = "11101100100"
    m.laEan128[29] = "11100110100"
    m.laEan128[30] = "11100110010"
    m.laEan128[31] = "11011011000"
    m.laEan128[32] = "11011000110"
    m.laEan128[33] = "11000110110"
    m.laEan128[34] = "10100011000"
    m.laEan128[35] = "10001011000"
    m.laEan128[36] = "10001000110"
    m.laEan128[37] = "10110001000"
    m.laEan128[38] = "10001101000"
    m.laEan128[39] = "10001100010"
    m.laEan128[40] = "11010001000"
    m.laEan128[41] = "11000101000"
    m.laEan128[42] = "11000100010"
    m.laEan128[43] = "10110111000"
    m.laEan128[44] = "10110001110"
    m.laEan128[45] = "10001101110"
    m.laEan128[46] = "10111011000"
    m.laEan128[47] = "10111000110"
    m.laEan128[48] = "10001110110"
    m.laEan128[49] = "11101110110"
    m.laEan128[50] = "11010001110"
    m.laEan128[51] = "11000101110"
    m.laEan128[52] = "11011101000"
    m.laEan128[53] = "11011100010"
    m.laEan128[54] = "11011101110"
    m.laEan128[55] = "11101011000"
    m.laEan128[56] = "11101000110"
    m.laEan128[57] = "11100010110"
    m.laEan128[58] = "11101101000"
    m.laEan128[59] = "11101100010"
    m.laEan128[60] = "11100011010"
    m.laEan128[61] = "11101111010"
    m.laEan128[62] = "11001000010"
    m.laEan128[63] = "11110001010"
    m.laEan128[64] = "10100110000"
    m.laEan128[65] = "10100001100"
    m.laEan128[66] = "10010110000"
    m.laEan128[67] = "10010000110"
    m.laEan128[68] = "10000101100"
    m.laEan128[69] = "10000100110"
    m.laEan128[70] = "10110010000"
    m.laEan128[71] = "10110000100"
    m.laEan128[72] = "10011010000"
    m.laEan128[73] = "10011000010"
    m.laEan128[74] = "10000110100"
    m.laEan128[75] = "10000110010"
    m.laEan128[76] = "11000010010"
    m.laEan128[77] = "11001010000"
    m.laEan128[78] = "11110111010"
    m.laEan128[79] = "11000010100"
    m.laEan128[80] = "10001111010"
    m.laEan128[81] = "10100111100"
    m.laEan128[82] = "10010111100"
    m.laEan128[83] = "10010011110"
    m.laEan128[84] = "10111100100"
    m.laEan128[85] = "10011110100"
    m.laEan128[86] = "10011110010"
    m.laEan128[87] = "11110100100"
    m.laEan128[88] = "11110010100"
    m.laEan128[89] = "11110010010"
    m.laEan128[90] = "11011011110"
    m.laEan128[91] = "11011110110"
    m.laEan128[92] = "11110110110"
    m.laEan128[93] = "10101111000"
    m.laEan128[94] = "10100011110"
    m.laEan128[95] = "10001011110"
    m.laEan128[96] = "10111101000" && DEL
    m.laEan128[97] = "10111100010" && FNC3
    m.laEan128[98] = "11110101000" && FNC2
    m.laEan128[99] = "11110100010" && Shift
    m.laEan128[100] = "10111011110" &&      / Code C
    m.laEan128[101] = "10111101110" && FNC4 / Code B
    m.laEan128[102] = "11101011110" &&      / Code A
    m.laEan128[103] = "11110101110" && FNC1
    m.laEan128[104] = "11010000100" && Start A
    m.laEan128[105] = "11010010000" && Start B
    m.laEan128[106] = "11010011100" && Start C

    m.lcStart = m.laEan128(m.lnSum + 1)
    m.lcStop = "1100011101011" && Stop

    *-- Always calculates the check digit
    FOR m.ln = 1 TO LEN(THIS.cTextValue)
      m.lnSum = m.lnSum + (ASC(SUBSTR(THIS.cTextValue, m.ln, 1)) - 32) * m.ln
    ENDFOR
    THIS.cTextValue = THIS.cTextValue + CHR(MOD(m.lnSum, 103) + 32)
    m.lnLen = LEN(THIS.cTextValue)

    *-- Encode 0s and 1s
    m.lcRet = ""
    FOR m.ln = 1 TO m.lnLen
      m.lcRet = m.lcRet + m.laEan128(ASC(SUBSTR(THIS.cTextValue, m.ln, 1)) - 32 + 1)
    ENDFOR

    *-- Add Start and Stop
    RETURN m.lcStart + m.lcRet + m.lcStop

  ENDPROC

  *------------------------------------------------------
  * PROCEDURE nFactor_Assign
  *------------------------------------------------------
  * Assign method
  *------------------------------------------------------
  PROCEDURE nFactor_Assign(tnValue)
    m.tnValue = INT(MIN(MAX(m.tnValue, 1), 10))
    THIS.nFactor = m.tnValue
    THIS.nFontHeight = THIS.nFactor * (THIS.nFontSize / THIS.nResolution) * 100
    THIS.nTextHeight = (THIS.nFontSize + 6 ) * THIS.nFactor
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE nResolution_Assign
  *------------------------------------------------------
  * Assign method
  *------------------------------------------------------
  PROCEDURE nResolution_Assign(tnValue)
    m.tnValue = INT(MIN(MAX(m.tnValue, 72), 1200))
    THIS.nResolution = m.tnValue
    THIS.nFontHeight = THIS.nFactor * (THIS.nFontSize / THIS.nResolution) * 100
    THIS.nTextHeight = (THIS.nFontSize + 6 ) * THIS.nFactor
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE nFontSize_Assign(tnValue)
  *------------------------------------------------------
  * Assign method
  *------------------------------------------------------
  PROCEDURE nFontSize_Assign(tnValue)
    m.tnValue = MIN(MAX(m.tnValue, 1), 72)
    THIS.nFontSize = m.tnValue
    THIS.nFontHeight = THIS.nFactor * (THIS.nFontSize / THIS.nResolution) * 100
    THIS.nTextHeight = (THIS.nFontSize + 6 ) * THIS.nFactor
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE lFontBold_Assign(tlValue)
  *------------------------------------------------------
  * Assign method
  *------------------------------------------------------
  PROCEDURE lFontBold_Assign(tlValue)
    THIS.lFontBold = m.tlValue
    THIS.cFontStyle = IIF(THIS.lFontBold, "B", "N") + IIF(THIS.lFontItalic, "I", "")
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE lFontItalic_Assign(tlValue)
  *------------------------------------------------------
  * Assign method
  *------------------------------------------------------
  PROCEDURE lFontItalic_Assign(tlValue)
    THIS.lFontItalic = m.tlValue
    THIS.cFontStyle = IIF(THIS.lFontBold, "B", "N") + IIF(THIS.lFontItalic, "I", "")
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Init()
  *------------------------------------------------------
  PROCEDURE INIT()
    THIS.cTempPath = ADDBS(THIS.TempPath() + SYS(2015))
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE Destroy()
  *------------------------------------------------------
  PROCEDURE DESTROY()
    IF THIS.lDeleteTempFiles
      THIS.EmptyFolder(THIS.cTempPath)
      IF DIRECTORY(THIS.cTempPath)
        RD (THIS.cTempPath)
      ENDIF
    ENDIF
  ENDPROC

  *---------------------------------------------------------
  * PROCEDURE ResetProperties()
  *---------------------------------------------------------
  * Reset to default properties
  *---------------------------------------------------------
  PROCEDURE ResetProperties()
    LOCAL lo, ln, la(1), lcProp
    m.lo = CREATEOBJECT("FoxBarcode")
    FOR m.ln = 1 TO AMEMBERS(m.la, m.lo)
      m.lcProp = "This." + m.la(m.ln)
      IF PEMSTATUS(m.lo, m.la(m.ln), 4) AND ;
          PEMSTATUS(m.lo, m.la(m.ln), 3) = "Property" AND ;
          NOT PEMSTATUS(m.lo, m.la(m.ln), 2) AND ;
          TYPE(m.lcProp) $ "NLC" AND ;
          NOT INLIST(UPPER(m.la(m.ln)), "CTEMPPATH", "CIMAGEFILE")
        &lcProp = EVALUATE("m.lo." + m.la(m.ln))
      ENDIF
    ENDFOR
    m.lo = NULL
  ENDPROC

  *---------------------------------------------------------
  * PROCEDURE BarcodeCopyToClipboard()
  *---------------------------------------------------------
  * Copy barcode image to clipboard
  *---------------------------------------------------------
  PROCEDURE BarcodeCopyToClipboard()
    LOCAL loGDIP, loImageCopy
    LOCAL loImgCopy AS "gpImage2"
    m.loGDIP = CREATEOBJECT("gpInit")
    m.loImgCopy = CREATEOBJECT("gpImage2")
    m.loImgCopy.LOAD(THIS.cImageFile)
    m.loImgCopy.ToClipboard()
    RETURN IIF(FILE(THIS.cImageFile), .T., .F.)
  ENDPROC

  *------------------------------------------------------

  **********************
  *** Common methods ***
  **********************

  *------------------------------------------------------
  * PROCEDURE CheckDigitEan(tcText)
  *------------------------------------------------------
  * Calculates check digit for EAN, UPC and I2of5
  *------------------------------------------------------
  PROCEDURE CheckDigitEan(tcText)
    LOCAL lnSum, lnI, lnJ
    STORE 0 TO m.lnSum, m.lnJ
    FOR m.lnI = LEN(m.tcText) TO 1 STEP - 1
      m.lnJ = m.lnJ + 1
      m.lnSum = m.lnSum + (VAL(SUBSTR(m.tcText, m.lnI, 1)) * IIF(MOD(m.lnJ, 2) = 0, 1, 3))
    ENDFOR
    RETURN TRANSFORM(MOD(10 - MOD(m.lnSum, 10), 10))
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE AddSpace(tcText, tnSpaces)
  *------------------------------------------------------
  * Add n spaces between each character
  *------------------------------------------------------
  PROCEDURE AddSpace(tcText, tnSpaces)
    LOCAL lc, ln, lnLen
    IF EMPTY(m.tnSpaces)
      m.tnSpaces = 1
    ENDIF
    m.lc = ""
    m.lnLen = LEN(m.tcText)
    FOR m.ln = 1 TO m.lnLen
      m.lc = m.lc + SUBSTR(m.tcText, m.ln, 1) + IIF(m.ln = m.lnLen, SPACE(0), SPACE(m.tnSpaces))
    ENDFOR
    RETURN m.lc
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE ValidAscii(tcText, tn1, tn2)
  *------------------------------------------------------
  * Valid each character Ascii
  *------------------------------------------------------
  PROCEDURE ValidAscii(tcText, tn1, tn2)
    LOCAL lnI, llRet
    m.llRet = .T.
    FOR m.lnI = 1 TO LEN(m.tcText)
      IF NOT BETWEEN(ASC(SUBSTR(m.tcText, m.lnI, 1)), m.tn1, m.tn2)
        m.llRet = .F.
        EXIT
      ENDIF
    ENDFOR
    RETURN m.llRet
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE ApplyRatio(tcEncoded, tnRatio)
  *------------------------------------------------------
  * Apply ratio between bar
  *------------------------------------------------------
  PROCEDURE ApplyRatio(tcEncoded, tnRatio)
    LOCAL lcRet
    m.tcEncoded = STRTRAN(m.tcEncoded, "B", REPLICATE("1", m.tnRatio))
    m.tcEncoded = STRTRAN(m.tcEncoded, "S", REPLICATE("0", m.tnRatio))
    RETURN m.tcEncoded
  ENDPROC

  *------------------------------------------------------
  * PROCEDURE EmptyFolder(tcFolder)
  *------------------------------------------------------
  * Empty temporary image folder
  *------------------------------------------------------
  PROCEDURE EmptyFolder(tcFolder)
    LOCAL loFso AS OBJECT
    LOCAL lcMask
    DO CASE
      CASE EMPTY(m.tcFolder)
        RETURN .F.
      CASE NOT DIRECTORY(m.tcFolder)
        RETURN .F.
    ENDCASE
    m.lcMask = ADDBS(m.tcFolder) + "*.*"
    #IF .T. && Use FSO
      m.loFso  = CREATEOBJECT("Scripting.FileSystemObject")
      m.loFso.DeleteFile(m.lcMask, .T.)
    #ELSE && Not Use FSO
      ERASE (m.lcMask)
    #ENDIF
    RETURN  .T.
  ENDPROC

  *---------------------------------------------------------
  * PROCEDURE DeleteFolder(pcFolder)
  *---------------------------------------------------------
  PROCEDURE DeleteFolder(pcFolder)
    LOCAL loFso AS OBJECT
    DO CASE
      CASE EMPTY(m.pcFolder)
        RETURN .F.
      CASE NOT DIRECTORY(m.pcFolder)
        RETURN .F.
    ENDCASE
    m.loFso  = CREATEOBJECT("Scripting.FileSystemObject")
    RETURN m.loFso.DeleteFolder(m.pcFolder)
  ENDPROC

  *---------------------------------------------------------
  * PROCEDURE TempPath()
  *---------------------------------------------------------
  * Returns the path for temporary files
  *---------------------------------------------------------
  PROCEDURE TempPath()
    LOCAL lcPath, lnRet
    LOCAL lnSize
    m.lcPath = SPACE(255)
    m.lnSize = 255
    DECLARE INTEGER GetTempPath IN WIN32API ;
      AS FBC_GetTempPath ;
      INTEGER nBufSize, ;
      STRING @cPathName
    m.lnRet = FBC_GetTempPath(m.lnSize, @m.lcPath)
    IF m.lnRet <= 0
      m.lcPath = ADDBS(FULLPATH("TEMP"))
    ELSE
      m.lcPath = ADDBS(SUBSTR(m.lcPath, 1, m.lnRet))
    ENDIF
    RETURN m.lcPath
  ENDPROC

  *---------------------------------------------------------
  * PROCEDURE Pair2Char(tcPair)
  *---------------------------------------------------------
  * Convert the pairs of numbers to char
  *---------------------------------------------------------
  PROCEDURE Pair2Char(tcPair)
    LOCAL lcRet, ln
    m.lcRet = ""
    FOR m.ln = 1 TO LEN(m.tcPair) STEP 2
      m.lcRet = m.lcRet + CHR(VAL(SUBS(m.tcPair, m.ln, 2)) + 32)
    ENDFOR
    RETURN m.lcRet
  ENDPROC

  *---------------------------------------------------------
  * PROCEDURE IsNumeric(tcString)
  *---------------------------------------------------------
  * Valid all chars are numerics
  *---------------------------------------------------------
  PROCEDURE IsNumeric(tcString)
    tcString = CHRTRAN(tcString, CHR(32), CHR(64))
    RETURN EMPTY(CHRTRAN(m.tcString, "1234567890", ""))
  ENDPROC

  *---------------------------------------------------------
  * PROCEDURE IsFontTrueType(tcFontName)
  *---------------------------------------------------------
  * Validates that the font is TrueType
  * Thanks to Koen Piller (Netherlands)
  *---------------------------------------------------------
  PROCEDURE IsFontTrueType(tcFontName)
    LOCAL lnPichFamily, lnFP
    LOCAL lnPitchFamily
    m.lnPitchFamily = FONTMETRIC(16, ALLTRIM(m.tcFontName), 10)
    m.lnFP = BITAND(m.lnPitchFamily, 0x0F)
    RETURN BITAND(m.lnFP, 0x04) <> 0
  ENDPROC

  *---------------------------------------------------------
  * PROCEDURE IsGdipFont(tcFontName, tcFontStyle)
  *---------------------------------------------------------
  * Validates that the font and style are permitted by GDI+
  * Thanks to Cesar Chalom (Brazil)
  *---------------------------------------------------------
  PROCEDURE IsGdipFont(tcFontName, tcFontStyle)
    * The Gdi+ API declarations were "Aliased" to avoid problems
    * with other possible Gdi+ classes working at the same time

    IF VERSION(5) < 700
      RETURN .T.
    ENDIF

    IF EMPTY(m.tcFontName)
      RETURN .F.
    ENDIF

    IF EMPTY(m.tcFontStyle)
      m.tcFontStyle = "N"
    ENDIF

    * GDI+ Initialization and Shutdown
    DECLARE LONG GdiplusStartup IN GDIPLUS.DLL ;
      AS FBC_GdiplusStartup ;
      LONG @ token, STRING @ INPUT, LONG @ OUTPUT

    DECLARE LONG GdiplusShutdown IN GDIPLUS.DLL ;
      AS FBC_GdiplusShutdown ;
      LONG token

    * FontFamily functions
    DECLARE INTEGER GdipCreateFontFamilyFromName IN GDIPLUS.DLL ;
      AS FBC_GdipCreateFontFamilyFromName ;
      STRING FamilyName, INTEGER FontCollection, INTEGER @FontFamily

    DECLARE INTEGER GdipDeleteFontFamily IN GDIPLUS.DLL ;
      AS FBC_GdipDeleteFontFamily ;
      INTEGER FontFamily

    LOCAL lcStartupInput, lcGdipToken
    m.lcStartupInput = CHR(1) + REPLICATE(CHR(0), 15)  && GdiplusStartupInput structure (sizeof = 16)
    * Initialize GDI+
    m.lcGdipToken = 0
    IF FBC_GdiplusStartup(@m.lcGdipToken, @m.lcStartupInput, 0) <> 0
      RETURN .F. && Could not initialize Gdi+
    ENDIF

    LOCAL lnStatus, lnFontFamily, llCanUse, lcFontName
    m.lnFontFamily = 0
    m.lcFontName  = THIS.Widestr(m.tcFontName)
    m.lnStatus = FBC_GdipCreateFontFamilyFromName(m.lcFontName, 0, @m.lnFontFamily)

    DECLARE INTEGER GdipIsStyleAvailable IN GDIPLUS.DLL ;
      AS FBC_GdipIsStyleAvailable ;
      INTEGER nFontFamily, INTEGER nStyle, INTEGER @bIsAvailable

    LOCAL lnAvailable, lnFontStyle
    m.lnAvailable = 0
    m.lnFontStyle = 0 + IIF("B" $ m.tcFontStyle, 1, 0) + IIF("I" $ m.tcFontStyle, 2, 0)

    *-- Add by VFPEncoding
    m.lnStatus = FBC_GdipIsStyleAvailable(m.lnFontFamily, m.lnFontStyle, @m.lnAvailable )

    m.llCanUse = m.lnAvailable <> 0
    IF m.llCanUse
      * Clear the Gdi+ FontFamily created
      m.lnStatus = FBC_GdipDeleteFontFamily(m.lnFontFamily)
    ENDIF
    * Clear the Gdi+ handle
    m.lnStatus = FBC_GdiplusShutdown(m.lcGdipToken)
    RETURN m.llCanUse
  ENDPROC

  *---------------------------------------------------------
  * PROTECTED FUNCTION WideStr(tcStr)
  * Thanks to gpImage2
  *---------------------------------------------------------
  PROTECTED FUNCTION WideStr(m.tcStr)
    IF VERSION(5) >= 700
      RETURN STRCONV(m.tcStr + CHR(0), 5)
    ELSE
      LOCAL lnLen, lcWideStr
      m.lnLen = 2 * (LEN(m.tcStr) + 1)
      m.lcWideStr = REPLICATE(CHR(0), m.lnLen)
      DECLARE LONG MultiByteToWideChar IN kernel32 ;
        AS FBC_MultiByteToWideChar ;
        LONG iCodePage, LONG dwFlags, STRING @ lpStr, LONG iMultiByte, ;
        STRING @ lpWideStr, LONG iWideChar
      FBC_MultiByteToWideChar(0, 0, @m.tcStr, LEN(m.tcStr), @m.lcWideStr, m.lnLen)
      RETURN m.lcWideStr
    ENDIF
  ENDFUNC

  *---------------------------------------------------------

ENDDEFINE && FoxBarcode

*--------------------------------------------------------------------------------------
* END DEFINE FoxBarcode Class
*--------------------------------------------------------------------------------------
