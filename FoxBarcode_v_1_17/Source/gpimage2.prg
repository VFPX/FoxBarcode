*************************************************************************
*    File:	gpImage.prg
* Version:	1.6
* Created:	12.09.2002
*Modified:	09.11.2003
*  Author:	Alexander Golovlev
* Country:	Russian Federation
*   Email:	golovlev@yandex.ru
*************************************************************************

*************************************************************************
*    File:	gpImage.prg
* Version:	1.68
* Created:	12.09.2002
*Modified:	05.22.2005 by Cesar Chalom
* Country:	Brazil
*   Email:	cchalom@hotmail.com
*
*   Notes:  Added GRAPHICS CLASS functions under the authorization of Alexander Golovlev
*			Great information about GDIPLUS can be found at
*			http://www.bobpowell.net/, from where I got valuable information
*************************************************************************

*************************************************************************
*    File:	gpImage2.prg
* Version:	1.72
* Created:	12.09.2002
*
*   Notes:  All changes under the authorization of Cesar Chalom
*Modified:	2010.10.25 by VFPEncoding
*           Changed the name of the class gpImage2, incompatibility using
*           FoxyPreviewer and GDIPlus.vcx class of the \FFC class library
*Modified:	2010.11.29 by VFPEncoding
*           Include #DEFINE from gdImage2.h file
*Modified:	2011.02.19 by VFPEncoding
*           Fixed variable names in functions Float2Int() and Int2Float()
*Modified:	2011.08.26 by VFPEncoding
*           Fixed variable names in many functions
*Modified:	2011.12.26 by VFPEncoding
*           Check and correct all the variables name to support mdot
*Modified:	2012.07.02 by VFPEncoding
*           Using aliases in DLL functions for compatibility with other applications
*************************************************************************

***************************
*** #INCLUDE gpImage2.h ***
***************************
*-- Encoder Values
#DEFINE EncoderValueCompressionLZW			2
#DEFINE EncoderValueCompressionCCITT3		3
#DEFINE EncoderValueCompressionCCITT4		4
#DEFINE EncoderValueCompressionRle			5
#DEFINE EncoderValueCompressionNone			6
#DEFINE EncoderValueTransformRotate90		13
#DEFINE EncoderValueTransformRotate180		14
#DEFINE EncoderValueTransformRotate270		15
#DEFINE EncoderValueTransformFlipHorizontal	16
#DEFINE EncoderValueTransformFlipVertical	17
#DEFINE EncoderValueMultiFrame				18
#DEFINE EncoderValueFrameDimensionTime		21
#DEFINE EncoderValueFrameDimensionPage		23

*-- RotateFlipType
#DEFINE RotateNoneFlipNone	0
#DEFINE Rotate90FlipNone	1
#DEFINE Rotate180FlipNone	2
#DEFINE Rotate270FlipNone	3

#DEFINE RotateNoneFlipX		4
#DEFINE Rotate90FlipX		5
#DEFINE Rotate180FlipX		6
#DEFINE Rotate270FlipX		7

#DEFINE RotateNoneFlipY		Rotate180FlipX
#DEFINE Rotate90FlipY		Rotate270FlipX
#DEFINE Rotate180FlipY		RotateNoneFlipX
#DEFINE Rotate270FlipY		Rotate90FlipX

#DEFINE RotateNoneFlipXY	Rotate180FlipNone
#DEFINE Rotate90FlipXY		Rotate270FlipNone
#DEFINE Rotate180FlipXY		RotateNoneFlipNone
#DEFINE Rotate270FlipXY		Rotate90FlipNone

*-- Quality mode constants
#DEFINE QualityModeInvalid	-1
#DEFINE QualityModeDefault	0
#DEFINE QualityModeLow		1	&& Best performance
#DEFINE QualityModeHigh		2	&& Best rendering quality

*-- Interpolation modes
#DEFINE InterpolationModeInvalid			-1
#DEFINE InterpolationModeDefault			0
#DEFINE InterpolationModeLowQuality			1
#DEFINE InterpolationModeHighQuality		2
#DEFINE InterpolationModeBilinear			3
#DEFINE InterpolationModeBicubic			4
#DEFINE InterpolationModeNearestNeighbor		5
#DEFINE InterpolationModeHighQualityBilinear	6
#DEFINE InterpolationModeHighQualityBicubic		7

*** Added by Cesar Chalom
*-- FontStyle: face types and common styles
#DEFINE GDIPLUS_FontStyle_Regular     0
#DEFINE GDIPLUS_FontStyle_Bold        1
#DEFINE GDIPLUS_FontStyle_Italic      2
#DEFINE GDIPLUS_FontStyle_BoldItalic  3
#DEFINE GDIPLUS_FontStyle_Underline   4
#DEFINE GDIPLUS_FontStyle_Strikeout   8

* StringAlignment enumeration
* Applies to GpStringFormat::Alignment, GpStringFormat::LineAlignment
#DEFINE GDIPLUS_STRINGALIGNMENT_Near	0	&& in Left-To-Right locale, this is Left
#DEFINE GDIPLUS_STRINGALIGNMENT_Center	1
#DEFINE GDIPLUS_STRINGALIGNMENT_Far		2	&& in Left-To-Right locale, this is Right

* StringFormatFlags enumeration
* applies to GpStringFormat::FormatFlags
#DEFINE GDIPLUS_STRINGFORMATFLAGS_DirectionRightToLeft     1
#DEFINE GDIPLUS_STRINGFORMATFLAGS_DirectionVertical        2
#DEFINE GDIPLUS_STRINGFORMATFLAGS_NoFitBlackBox            4
#DEFINE GDIPLUS_STRINGFORMATFLAGS_DisplayFormatControl    32
#DEFINE GDIPLUS_STRINGFORMATFLAGS_NoFontFallback        1024
#DEFINE GDIPLUS_STRINGFORMATFLAGS_MeasureTrailingSpaces 2048
#DEFINE GDIPLUS_STRINGFORMATFLAGS_NoWrap                4096
#DEFINE GDIPLUS_STRINGFORMATFLAGS_LineLimit             8192
#DEFINE GDIPLUS_STRINGFORMATFLAGS_NoClip               16384

* PEN Dash style constants
#DEFINE GDIPLUS_DashStyle_Solid			0
#DEFINE GDIPLUS_DashStyle_Dash			1
#DEFINE GDIPLUS_DashStyle_Dot			2
#DEFINE GDIPLUS_DashStyle_DashDot		3
#DEFINE GDIPLUS_DashStyle_DashDotDot	4
#DEFINE GDIPLUS_DashStyle_Custom       	5

* PEN Units
#DEFINE	GDIPLUS_Unit_World      0 && World coordinate (non-physical unit)
#DEFINE	GDIPLUS_Unit_Display    1 && Variable -- for PageTransform only
#DEFINE	GDIPLUS_Unit_Pixel      2 && one device pixel.
#DEFINE	GDIPLUS_Unit_Point      3 && 1/72 inch.
#DEFINE	GDIPLUS_Unit_Inch       4 && 1 inch.
#DEFINE	GDIPLUS_Unit_Document   5 && 1/300 inch.
#DEFINE	GDIPLUS_Unit_Millimeter 6 && 1 millimeter.

* HatchBrush styles
#DEFINE	GDIPLUS_HatchStyle_Horizontal		0
#DEFINE	GDIPLUS_HatchStyle_Vertical			1
#DEFINE	GDIPLUS_HatchStyle_ForwardDiagonal	2
#DEFINE	GDIPLUS_HatchStyle_BackwardDiagonal	3
#DEFINE	GDIPLUS_HatchStyle_Cross			4
#DEFINE	GDIPLUS_HatchStyle_DiagonalCross	5
#DEFINE	GDIPLUS_HatchStyle_05Percent		6
#DEFINE	GDIPLUS_HatchStyle_10Percent		7
#DEFINE	GDIPLUS_HatchStyle_20Percent		8
#DEFINE	GDIPLUS_HatchStyle_25Percent		9
#DEFINE	GDIPLUS_HatchStyle_30Percent		10
#DEFINE	GDIPLUS_HatchStyle_40Percent		11
#DEFINE	GDIPLUS_HatchStyle_50Percent		12
#DEFINE GDIPLUS_HatchStyle_60Percent		13
#DEFINE GDIPLUS_HatchStyle_70Percent		14
#DEFINE GDIPLUS_HatchStyle_75Percent		15
#DEFINE GDIPLUS_HatchStyle_80Percent		16
#DEFINE GDIPLUS_HatchStyle_90Percent		17
#DEFINE GDIPLUS_HatchStyle_LightDownwardDiagonal 18
#DEFINE GDIPLUS_HatchStyle_LightUpwardDiagonal	19
#DEFINE GDIPLUS_HatchStyle_DarkDownwardDiagonal	20
#DEFINE GDIPLUS_HatchStyle_DarkUpwardDiagonal	21
#DEFINE GDIPLUS_HatchStyle_WideDownwardDiagonal	22
#DEFINE GDIPLUS_HatchStyle_WideUpwardDiagonal	23
#DEFINE GDIPLUS_HatchStyle_LightVertical	24
#DEFINE GDIPLUS_HatchStyle_LightHorizontal	25
#DEFINE GDIPLUS_HatchStyle_NarrowVertical	26
#DEFINE GDIPLUS_HatchStyle_NarrowHorizontal	27
#DEFINE GDIPLUS_HatchStyle_DarkVertical		28
#DEFINE GDIPLUS_HatchStyle_DarkHorizontal	29
#DEFINE GDIPLUS_HatchStyle_DashedDownwardDiagonal 30
#DEFINE GDIPLUS_HatchStyle_DashedUpwardDiagonal	31
#DEFINE GDIPLUS_HatchStyle_DashedHorizontal	32
#DEFINE GDIPLUS_HatchStyle_DashedVertical	33
#DEFINE GDIPLUS_HatchStyle_SmallConfetti	34
#DEFINE GDIPLUS_HatchStyle_LargeConfetti	35
#DEFINE GDIPLUS_HatchStyle_ZigZag			36
#DEFINE GDIPLUS_HatchStyle_Wave				37
#DEFINE GDIPLUS_HatchStyle_DiagonalBrick	38
#DEFINE GDIPLUS_HatchStyle_HorizontalBrick	39
#DEFINE GDIPLUS_HatchStyle_Weave			40
#DEFINE GDIPLUS_HatchStyle_Plaid			41
#DEFINE GDIPLUS_HatchStyle_Divot			42
#DEFINE GDIPLUS_HatchStyle_DottedGrid		43
#DEFINE GDIPLUS_HatchStyle_DottedDiamond	44
#DEFINE GDIPLUS_HatchStyle_Shingle			45
#DEFINE GDIPLUS_HatchStyle_Trellis			46
#DEFINE GDIPLUS_HatchStyle_Sphere			47
#DEFINE GDIPLUS_HatchStyle_SmallGrid		48
#DEFINE GDIPLUS_HatchStyle_SmallCheckerBoard	49
#DEFINE GDIPLUS_HatchStyle_LargeCheckerBoard	50
#DEFINE GDIPLUS_HatchStyle_OutlinedDiamond	51
#DEFINE GDIPLUS_HatchStyle_SolidDiamond		52

* Wrap mode for brushes
#DEFINE	GDIPLUS_WrapMode_Tile		0
#DEFINE	GDIPLUS_WrapMode_TileFlipX	1
#DEFINE	GDIPLUS_WrapMode_TileFlipY	2
#DEFINE	GDIPLUS_WrapMode_TileFlipXY	3
#DEFINE	GDIPLUS_WrapMode_Clamp		4

*******************************
*** END #INCLUDE gpImage2.h ***
*******************************

*-- Error messages
#DEFINE ERR_MODULE		"Cannot load a module "
#DEFINE ERR_PICTYPE		"Unsupported picture type"
#DEFINE ERR_CLIPNOTOPEN	"Cannot open the clipboard"
#DEFINE ERR_CLIPNODATA	"No bitmap data found on the clipboard"
#DEFINE ERR_CLIPSETDATA	"Cannot place data on the clipboard"

*-- Constants
#DEFINE MAX_PATH	260
#DEFINE LPTR		0x0040
#DEFINE SRCCOPY		13369376
#DEFINE CRLF		CHR(13) + CHR(10)
#DEFINE VT_DISPATCH	9
#DEFINE IID_IDispatch CHR(0x00)+CHR(0x04)+CHR(0x02)+CHR(0x00)+ ;
  REPLICATE(CHR(0x00), 4) + CHR(0xC0) + REPLICATE(CHR(0x00), 6) + CHR(0x46)

*-- Picture Types
#DEFINE PICTYPE_UNINITIALIZED	(-1)
#DEFINE PICTYPE_NONE			0
#DEFINE PICTYPE_BITMAP			1
#DEFINE PICTYPE_METAFILE		2
#DEFINE PICTYPE_ICON			3
#DEFINE PICTYPE_ENHMETAFILE		4

*-- Predefined Clipboard Formats
#DEFINE CF_BITMAP				2
#DEFINE CF_PALETTE				9
#DEFINE OBJ_BITMAP				7

*-- Encoder CLSIDs
#DEFINE CLSID_Bmp				"{557CF400-1A04-11D3-9A73-0000F81EF32E}"
#DEFINE CLSID_JPEG				"{557CF401-1A04-11D3-9A73-0000F81EF32E}"
#DEFINE CLSID_GIF				"{557CF402-1A04-11D3-9A73-0000F81EF32E}"
#DEFINE CLSID_TIFF				"{557CF405-1A04-11D3-9A73-0000F81EF32E}"
#DEFINE CLSID_PNG				"{557CF406-1A04-11D3-9A73-0000F81EF32E}"

*-- Encoder parameter sets
#DEFINE GUID_Compress			"{e09d739d-ccd4-44ee-8eba-3fbf8be4fc58}"
#DEFINE GUID_ColorDepth			"{66087055-ad66-4c7c-9a18-38a2310b8337}"
#DEFINE GUID_Quality			"{1d5be4b5-fa4a-452d-9cdd-5db35105e7eb}"
#DEFINE GUID_Transform			"{8d0eb2d1-a58e-4ea8-aa14-108074b7b6f9}"
#DEFINE GUID_SaveFlag			"{292266fc-ac40-47bf-8cfc-a85b89a655de}"

*-- Predefined multi-frame Dimension IDs
#DEFINE GUID_Time				"{6aedbd6d-3fb5-418a-83a6-7f45229dc872}"
#DEFINE GUID_Page				"{7462dc86-6180-4c7e-8e3f-ee7333a7a483}"

*-- Image file format identifiers
#DEFINE GUID_FormatUndefined	"{b96b3ca9-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatMemoryBmp	"{b96b3caa-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatBmp			"{b96b3cab-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatEMF			"{b96b3cac-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatWMF			"{b96b3cad-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatJPEG			"{b96b3cae-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatPNG			"{b96b3caf-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatGIF			"{b96b3cb0-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatTIFF			"{b96b3cb1-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatEXIF			"{b96b3cb2-0728-11d3-9d7b-0000f81ef32e}"
#DEFINE GUID_FormatIcon			"{b96b3cb5-0728-11d3-9d7b-0000f81ef32e}"

*-- Pixel Formats
#DEFINE	PixelFormatIndexed		0x00010000	&& Indexes into a palette
#DEFINE	PixelFormatGDI			0x00020000	&& Is a GDI-supported format
#DEFINE	PixelFormatAlpha		0x00040000	&& Has an alpha component
#DEFINE	PixelFormatPAlpha		0x00080000	&& Pre-multiplied alpha
#DEFINE	PixelFormatExtended		0x00100000	&& Extended color 16 bits/channel
#DEFINE	PixelFormatCanonical	0x00200000

#DEFINE	PixelFormat1bppIndexed		( 1 + ( 1 * 256) + PixelFormatIndexed + PixelFormatGDI)
#DEFINE	PixelFormat4bppIndexed		( 2 + ( 4 * 256) + PixelFormatIndexed + PixelFormatGDI)
#DEFINE	PixelFormat8bppIndexed		( 3 + ( 8 * 256) + PixelFormatIndexed + PixelFormatGDI)
#DEFINE	PixelFormat16bppGrayScale	( 4 + (16 * 256) + PixelFormatExtended)
#DEFINE	PixelFormat16bppRGB555		( 5 + (16 * 256) + PixelFormatGDI)
#DEFINE	PixelFormat16bppRGB565		( 6 + (16 * 256) + PixelFormatGDI)
#DEFINE	PixelFormat16bppARGB1555	( 7 + (16 * 256) + PixelFormatAlpha + PixelFormatGDI)
#DEFINE	PixelFormat24bppRGB			( 8 + (24 * 256) + PixelFormatGDI)
#DEFINE	PixelFormat32bppRGB			( 9 + (32 * 256) + PixelFormatGDI)
#DEFINE	PixelFormat32bppARGB		(10 + (32 * 256) + PixelFormatAlpha + PixelFormatGDI + PixelFormatCanonical)
#DEFINE	PixelFormat32bppPARGB		(11 + (32 * 256) + PixelFormatAlpha + PixelFormatPAlpha + PixelFormatGDI)
#DEFINE	PixelFormat48bppRGB			(12 + (48 * 256) + PixelFormatExtended)
#DEFINE	PixelFormat64bppARGB		(13 + (64 * 256) + PixelFormatAlpha + PixelFormatCanonical + PixelFormatExtended)
#DEFINE	PixelFormat64bppPARGB		(14 + (64 * 256) + PixelFormatAlpha + PixelFormatPAlpha + PixelFormatExtended)

***********************************************************************
*   Class:	gpInit
***********************************************************************

 DEFINE CLASS gpInit AS CUSTOM

  PROTECTED m.gdiplusToken
  m.gdiplusToken = 0

   PROTECTED PROCEDURE INIT(m.tcFileName)

    * AS GPI2_
    DECLARE LONG PathFindOnPath IN Shlwapi.DLL ;
      STRING @ pszFile, LONG ppszOtherDirs
    DECLARE LONG UuidFromString IN rpcrt4.DLL ;
      STRING StringUuid, STRING @ Uuid
    DECLARE LONG LocalAlloc IN Win32API ;
      LONG uFlags, LONG uBytes
    DECLARE LONG LocalFree IN Win32API ;
      LONG HMEM
    DECLARE LONG LoadLibrary IN Win32API ;
      STRING FileName
    DECLARE LONG FreeLibrary IN Win32API ;
      LONG hModule
    DECLARE LONG GdiplusStartup IN GDIPLUS.DLL ;
      LONG @ token, STRING @ INPUT, LONG @ OUTPUT
    DECLARE LONG GdiplusShutdown IN GDIPLUS.DLL ;
      LONG token
    DECLARE LONG GdipLoadImageFromFile IN GDIPLUS.DLL ;
      STRING FileName, LONG @ GpImage
    DECLARE LONG GdipSaveImageToFile IN GDIPLUS.DLL ;
      LONG GpImage, STRING FileName, STRING @ EncoderClsid, STRING @ EncoderParams
    DECLARE LONG GdipSaveAddImage IN GDIPLUS.DLL ;
      LONG GpImage, LONG NewImage, STRING @ EncoderParams
    DECLARE LONG GdipCreateBitmapFromScan0 IN GDIPLUS.DLL ;
      INTEGER WIDTH, INTEGER HEIGHT, INTEGER stride, LONG FORMAT, LONG scan0, LONG @ BITMAP
    DECLARE LONG GdipCreateBitmapFromResource IN GDIPLUS.DLL ;
      LONG hInstance, STRING bitmapName, LONG @ BITMAP
    DECLARE LONG GdipCreateBitmapFromHBITMAP IN GDIPLUS.DLL ;
      LONG hbm, LONG hpal, LONG @ BITMAP
    DECLARE LONG GdipCreateBitmapFromHICON IN GDIPLUS.DLL ;
      LONG hicon, LONG @ BITMAP
    DECLARE LONG GdipCreateMetafileFromWmf IN GDIPLUS.DLL ;
      LONG hWmf, LONG deleteWmf, LONG wmfPlaceableFileHeader, LONG @ metafile
    DECLARE LONG GdipCreateMetafileFromEmf IN GDIPLUS.DLL ;
      LONG hEmf, LONG deleteEmf, LONG @ metafile
    DECLARE LONG GdipCreateHBITMAPFromBitmap IN GDIPLUS.DLL ;
      LONG NativeImage, LONG @ hbmReturn, LONG argb
    DECLARE LONG GdipCreateHICONFromBitmap IN GDIPLUS.DLL ;
      LONG NativeImage, LONG @ hbmReturn
    DECLARE LONG GdipGetImageRawFormat IN GDIPLUS.DLL ;
      LONG NativeImage, STRING @ RawFormat
    DECLARE LONG GdipGetImagePixelFormat IN GDIPLUS.DLL ;
      LONG NativeImage, LONG @ PixelFormat
    DECLARE LONG GdipGetImageWidth IN GDIPLUS.DLL ;
      LONG NativeImage, LONG @ WIDTH
    DECLARE LONG GdipGetImageHeight IN GDIPLUS.DLL ;
      LONG NativeImage, LONG @ HEIGHT
    DECLARE LONG GdipGetImageThumbnail IN GDIPLUS.DLL ;
      LONG NativeImage, LONG thumbWidth, LONG thumbHeight, LONG @ thumbimage, LONG callback, LONG callbackData
    DECLARE LONG GdipDisposeImage IN GDIPLUS.DLL ;
      LONG GpImage
    DECLARE LONG GdipBitmapGetPixel IN GDIPLUS.DLL ;
      LONG NativeImage, LONG x, LONG Y, LONG @ argb
    DECLARE LONG GdipBitmapSetPixel IN GDIPLUS.DLL ;
      LONG NativeImage, LONG x, LONG Y, LONG argb
    DECLARE LONG GdipGetImageHorizontalResolution IN GDIPLUS.DLL ;
      LONG NativeImage, SINGLE @ resolution
    DECLARE LONG GdipGetImageVerticalResolution IN GDIPLUS.DLL ;
      LONG NativeImage, SINGLE @ resolution
    DECLARE LONG GdipBitmapSetResolution IN GDIPLUS.DLL ;
      LONG NativeImage, SINGLE xdpi, SINGLE ydpi
    DECLARE LONG GdipCloneImage IN GDIPLUS.DLL ;
      LONG NativeImage, LONG @ cloneBitmap
    DECLARE LONG GdipCloneBitmapAreaI IN GDIPLUS.DLL ;
      LONG x, LONG Y, LONG WIDTH, LONG HEIGHT, LONG FORMAT, LONG NativeImage, LONG @ gpdstBitmap
    DECLARE LONG GdipImageRotateFlip IN GDIPLUS.DLL ;
      LONG NativeImage, LONG rotateFlipType
    DECLARE LONG GdipGetImageGraphicsContext IN GDIPLUS.DLL ;
      LONG IMAGE, LONG @ graphics
    DECLARE LONG GdipSetInterpolationMode IN GDIPLUS.DLL ;
      LONG graphics, LONG interpolationMode
    DECLARE LONG GdipDrawImageRectI IN GDIPLUS.DLL ;
      LONG graphics, LONG IMAGE, INTEGER x, INTEGER Y, INTEGER WIDTH, INTEGER HEIGHT
    DECLARE LONG GdipImageGetFrameCount IN GDIPLUS.DLL ;
      LONG IMAGE, STRING @ DimensionID, LONG @ COUNT
    DECLARE LONG GdipImageSelectActiveFrame IN GDIPLUS.DLL ;
      LONG IMAGE, STRING @ DimensionID, LONG frameIndex
    DECLARE LONG OpenClipboard IN Win32API ;
      LONG HWND
    DECLARE LONG CloseClipboard IN Win32API
    DECLARE LONG EmptyClipboard IN Win32API
    DECLARE LONG GetClipboardData IN Win32API ;
      LONG uFormat
    DECLARE LONG SetClipboardData IN Win32API ;
      LONG uFormat, LONG HMEM
    DECLARE LONG CopyImage IN Win32API ;
      LONG hImage, LONG uType, LONG cx, LONG cy, LONG uFlags
    DECLARE LONG DeleteObject IN Win32API ;
      LONG hObject
    DECLARE LONG GetObjectType IN Win32API ;
      LONG h
    DECLARE LONG GetDesktopWindow IN Win32API
    DECLARE LONG GetWindowDC IN Win32API ;
      LONG HWND
    DECLARE LONG GetWindowRect IN Win32API ;
      LONG HWND, STRING @ lpRect
    DECLARE LONG CreateCompatibleDC IN Win32API ;
      LONG hdc
    DECLARE LONG CreateCompatibleBitmap IN Win32API ;
      LONG hdc, LONG nWidth, LONG nHeight
    DECLARE LONG SelectObject IN Win32API ;
      LONG hdc, LONG hObject
    DECLARE LONG ReleaseDC IN Win32API ;
      LONG HWND, LONG hdc
    DECLARE LONG DeleteDC IN Win32API ;
      LONG hdc
    DECLARE LONG BitBlt IN Win32API ;
      LONG hDestDC, LONG x, LONG Y, LONG nWidth, LONG nHeight, LONG hSrcDC, LONG xSrc, LONG ySrc, LONG dwRop
    DECLARE RtlMoveMemory IN Win32API AS RtlCopyLong ;
      INTEGER @ DestNum, STRING @ pVoidSource, INTEGER nLength

    *** API DECLARATIONS FOR GRAPHICS CLASS

    *!*	GRAPHICS FUNCTIONS

    DECLARE INTEGER GdipCreateFromHWND IN GDIPLUS.DLL ;
      INTEGER hWind, INTEGER @graphics
    DECLARE INTEGER GdipDeleteGraphics IN GDIPLUS.DLL ;
      INTEGER graphics
    DECLARE INTEGER GdipTranslateWorldTransform IN GDIPLUS.DLL ;
      INTEGER graphics, SINGLE dX, SINGLE dY, INTEGER nOrder
    DECLARE INTEGER GdipRotateWorldTransform IN GDIPLUS.DLL ;
      INTEGER graphics, SINGLE Angle, INTEGER nOrder
    DECLARE INTEGER GdipResetWorldTransform IN GDIPLUS.DLL ;
      INTEGER graphics
    DECLARE INTEGER GdipDrawString IN GDIPLUS.DLL;
      INTEGER graphics, STRING wchar, INTEGER LENGTH, INTEGER fnt, STRING @rectangleF, INTEGER stringFormat, INTEGER brush
    DECLARE INTEGER GdipMeasureString IN GDIPLUS.DLL ;
      INTEGER Graphics, STRING wchar, INTEGER LENGTH, INTEGER fnt, STRING  rectangleF, INTEGER StringFormat, ;
      STRING @boundingBoxRectF, INTEGER @nCodepointsFitted, INTEGER @nLinesFilled
    DECLARE INTEGER GdipDrawLine IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER npen, SINGLE X1, SINGLE Y1, SINGLE X2, SINGLE Y2
    DECLARE GdipDrawRectangle IN GDIPLUS.DLL;
      INTEGER graphics, INTEGER npen, SINGLE x, SINGLE Y, SINGLE w, SINGLE h
    DECLARE INTEGER GdipFillRectangle IN GDIPLUS.DLL;
      INTEGER graphics, INTEGER brush, SINGLE x, SINGLE Y, SINGLE w, SINGLE h
    DECLARE INTEGER GdipDrawEllipse IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER npen, SINGLE x, SINGLE Y, SINGLE w, SINGLE h
    DECLARE INTEGER GdipFillEllipse IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER brush, SINGLE x, SINGLE Y, SINGLE w, SINGLE h
    DECLARE INTEGER GdipDrawPie IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER npen, SINGLE x, SINGLE Y, SINGLE w, SINGLE h, SINGLE StartAngle, SINGLE SweepAngle
    DECLARE INTEGER GdipFillPie IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER brush, SINGLE x, SINGLE Y, SINGLE w, SINGLE h, SINGLE StartAngle, SINGLE SweepAngle
    DECLARE INTEGER GdipDrawArc IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER nPen, SINGLE x, SINGLE Y, SINGLE w, SINGLE h, SINGLE StartAngle, SINGLE SweepAngle
    DECLARE INTEGER GdipDrawPolygon IN GDIPLUS.DLL ;
      INTEGER Graphics, INTEGER nPen, STRING PointsF, INTEGER nCount
    DECLARE INTEGER GdipFillPolygon IN GDIPLUS.DLL ;
      INTEGER Graphics, INTEGER Brush, STRING PointsF, INTEGER nCount, INTEGER FillMode
    DECLARE INTEGER GdipDrawImage IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER nImage, SINGLE X, SINGLE Y
    DECLARE INTEGER GdipDrawImageRect IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER nImage, SINGLE x, SINGLE Y, SINGLE w, SINGLE h
    DECLARE INTEGER GdipDrawImageRectRect IN GDIPLUS.DLL ;
      INTEGER Graphics, INTEGER nImage, SINGLE dstx, SINGLE dsty, SINGLE dstwidth, SINGLE dstheight, ;
      SINGLE srcx, SINGLE srcy, SINGLE srcwidth, SINGLE srcheight, INTEGER srcUnit, INTEGER imageAttributes, ;
      INTEGER Callback, INTEGER CallbackData

    *!*	IMAGE ATTRIBUTES

    DECLARE INTEGER GdipCreateImageAttributes IN GDIPLUS.DLL ;
      INTEGER @ImgAttr
    DECLARE INTEGER GdipDisposeImageAttributes IN GDIPLUS.DLL ;
      INTEGER imageattr
    DECLARE INTEGER GdipResetImageAttributes IN GDIPLUS.DLL ;
      INTEGER imageattr, INTEGER ColorAdjustType
    DECLARE INTEGER GdipSetImageAttributesColorMatrix IN GDIPLUS.DLL ;
      INTEGER imageattr, INTEGER ColorAdjustType, INTEGER enableFlag, ;
      STRING  colorMatrix, INTEGER grayMatrix, INTEGER ColorMatrixFlags
    DECLARE INTEGER GdipSetImageAttributesRemapTable IN GDIPLUS.DLL ;
      INTEGER imageattr, INTEGER ColorAdjustType, INTEGER enableFlag, INTEGER mapsize, STRING  colorMap

    *!*	FONT FUNCTIONS

    DECLARE INTEGER GdipCreateFont IN GDIPLUS.DLL;
      INTEGER fontFamily, SINGLE emSize, INTEGER fntstyle, INTEGER unit, INTEGER @fnt
    DECLARE INTEGER GdipDeleteFont IN GDIPLUS.DLL ;
      INTEGER fnt

    *!*	FONTFAMILY FUNCTIONS

    DECLARE INTEGER GdipCreateFontFamilyFromName IN GDIPLUS.DLL;
      STRING familyname, INTEGER FontCollection, INTEGER @FontFamily
    DECLARE INTEGER GdipDeleteFontFamily IN GDIPLUS.DLL ;
      INTEGER FontFamily

    *!*	STRING FORMAT FUNCTIONS

    DECLARE INTEGER GdipCreateStringFormat IN GDIPLUS.DLL ;
      INTEGER formatAttributes, INTEGER LANGUAGE, INTEGER @nFormat
    DECLARE INTEGER GdipSetStringFormatAlign IN GDIPLUS.DLL ;
      INTEGER nFormat, INTEGER StringAlignment
    DECLARE INTEGER GdipSetStringFormatLineAlign IN GDIPLUS.DLL ;
      INTEGER nformat, INTEGER StringAlignment

    *!*	PEN FUNCTIONS

    DECLARE INTEGER GdipCreatePen1 IN GDIPLUS.DLL;
      INTEGER ARGBcolor, SINGLE penwidth, INTEGER unit, INTEGER @npen
    DECLARE INTEGER GdipSetPenDashStyle IN GDIPLUS.DLL ;
      INTEGER nPen, INTEGER DashStyle
    DECLARE INTEGER GdipDeletePen IN GDIPLUS.DLL ;
      INTEGER nPen

    *!*	BRUSH FUNCTIONS

    DECLARE INTEGER GdipCreateSolidFill IN GDIPLUS.DLL;
      INTEGER ARGBcolor, INTEGER @brush
    DECLARE INTEGER GdipDeleteBrush IN GDIPLUS.DLL ;
      INTEGER brush
    DECLARE INTEGER GdipCreateHatchBrush IN GDIPLUS.DLL;
      INTEGER hatchstyle, INTEGER FORECOL, INTEGER BACKCOL, INTEGER @brush
    DECLARE INTEGER GdipCreateTexture IN GDIPLUS.DLL;
      INTEGER nimage, INTEGER wrapmode, INTEGER @brushTexture

    *!*

    #IF VERSION(5) >= 700
      DECLARE LONG OleCreatePictureIndirect IN oleaut32 ;
        STRING @ PicDesc, STRING @ RefIID, LONG fPictureOwnsHandle, OBJECT @ IPic
    #ELSE
      DECLARE LONG OleCreatePictureIndirect IN oleaut32 ;
        STRING @ PicDesc, STRING @ RefIID, LONG fPictureOwnsHandle, LONG @ IPic
      DECLARE LONG MultiByteToWideChar IN kernel32 ;
        LONG iCodePage, LONG dwFlags, STRING @ lpStr, LONG iMultiByte, STRING @ lpWideStr, LONG iWideChar
      DECLARE LONG OleSavePictureFile IN oleaut32 ;
        LONG IPic, LONG bstrFile
      DECLARE LONG SysAllocString IN oleaut32 ;
        STRING @ szString
      DECLARE SysFreeString IN oleaut32 ;
        LONG bstr
      DECLARE LONG VariantClear IN oleaut32 ;
        STRING @ pvarg
    #ENDIF

    LOCAL gdiplusStartupInput, lcToken
    *	struct GdiplusStartupInput
    *	{
    *		UINT32 GdiplusVersion;				// Must be 1
    *		DebugEventProc DebugEventCallback;	// Ignored on free builds
    *		BOOL SuppressBackgroundThread;		// FALSE unless you're prepared to call
    *											// the hook/unhook functions properly
    *		BOOL SuppressExternalCodecs;		// FALSE unless you want GDI+ only to use
    *											// its internal image codecs.
    *	}
    m.gdiplusStartupInput = CHR(1) + REPLICATE(CHR(0), 15)	&& GdiplusStartupInput structure (sizeof = 16)

    * Initialize GDI+.
    m.lcToken = 0
    IF GdiplusStartup(@m.lcToken, @m.gdiplusStartupInput, 0) != 0
      RETURN .F.
    ENDIF
    THIS.gdiplusToken = m.lcToken
  ENDPROC

   PROTECTED PROCEDURE DESTROY
    GdiplusShutdown(THIS.gdiplusToken)

    #IF VERSION(5) >= 700
      CLEAR DLLS "PathFindOnPath", "UuidFromString"
      CLEAR DLLS "LocalAlloc", "LocalFree", "LoadLibrary", "FreeLibrary"
      CLEAR DLLS "GdiplusStartup", "GdiplusShutdown", ;
        "GdipLoadImageFromFile", "GdipSaveImageToFile", "GdipSaveAddImage", ;
        "GdipCreateBitmapFromScan0", "GdipCreateBitmapFromResource", "GdipCreateBitmapFromHBITMAP", ;
        "GdipCreateBitmapFromHICON", "GdipCreateMetafileFromWmf", "GdipCreateMetafileFromEmf", ;
        "GdipCreateHBITMAPFromBitmap", "GdipCreateHICONFromBitmap"
      CLEAR DLLS "GdipGetImageRawFormat", "GdipGetImagePixelFormat", ;
        "GdipGetImageWidth", "GdipGetImageHeight", "GdipGetImageThumbnail", "GdipDisposeImage"
      CLEAR DLLS "GdipBitmapGetPixel", "GdipBitmapSetPixel", "GdipGetImageHorizontalResolution", ;
        "GdipGetImageVerticalResolution", "GdipBitmapSetResolution", "GdipCloneImage", ;
        "GdipCloneBitmapAreaI", "GdipImageRotateFlip"
      CLEAR DLLS "GdipGetImageGraphicsContext", "GdipSetInterpolationMode", "GdipDrawImageRectI"
      CLEAR DLLS "GdipImageGetFrameCount", "GdipImageSelectActiveFrame"
      CLEAR DLLS "OpenClipboard", "CloseClipboard", "EmptyClipboard", "GetClipboardData", "SetClipboardData", ;
        "CopyImage", "DeleteObject", "GetObjectType", "OleCreatePictureIndirect"
      CLEAR DLLS "GetDesktopWindow", "GetWindowDC", "GetWindowRect", "CreateCompatibleDC", ;
        "CreateCompatibleBitmap", "SelectObject", "ReleaseDC", "DeleteDC", "BitBlt", "RtlMoveMemory"

      *** Clearing DLLS used in Graphics class
      *!*	GRAPHICS
      CLEAR DLLS "GdipCreateFromHWND", "GdipDeleteGraphics", "GdipTranslateWorldTransform", ;
        "GdipRotateWorldTransform", "GdipResetWorldTransform", "GdipDrawString", ;
        "GdipMeasureString", "GdipDrawLine", "GdipDrawRectangle", "GdipFillRectangle", ;
        "GdipDrawEllipse", "GdipFillEllipse", "GdipDrawPie", "GdipFillPie", "GdipDrawArc", ;
        "GdipDrawPolygon", "GdipFillPolygon", "GdipDrawImage", "GdipDrawImageRect", ;
        "GdipDrawImageRectRect"

      *!*	FONT FUNCTIONS
      CLEAR DLLS "GdipCreateFont", "GdipDeleteFont"

      *!*	FONTFAMILY FUNCTIONS
      CLEAR DLLS "GdipCreateFontFamilyFromName", "GdipDeleteFontFamily"

      *!*	STRING FORMAT FUNCTIONS
      CLEAR DLLS "GdipCreateStringFormat", "GdipSetStringFormatAlign", "GdipSetStringFormatLineAlign"

      *!*	PEN FUNCTIONS
      CLEAR DLLS "GdipCreatePen1", "GdipSetPenDashStyle", "GdipDeletePen"

      *!*	BRUSH FUNCTIONS
      CLEAR DLLS "GdipCreateSolidFill", "GdipDeleteBrush", "GdipCreateHatchBrush", "GdipCreateTexture"

      *!*	IMAGE ATTRIBUTES
      CLEAR DLLS "GdipCreateImageAttributes", "GdipDisposeImageAttributes", ;
        "GdipSetImageAttributesColorMatrix", "GdipSetImageAttributesRemapTable", ;
        "GdipResetImageAttributes"
      ***
    #ENDIF
  ENDPROC

 ENDDEFINE


***********************************************************************
*   Class:	gpImage2
***********************************************************************

DEFINE CLASS gpImage2 AS CUSTOM
  PROTECTED STAT
  PROTECTED m.NativeImage

  m.NativeImage = 0
  m.ImageFormat = ""
  m.PixelFormat = ""
  m.ImageWidth = 0
  m.ImageHeight = 0
  m.HorizontalResolution = 0.0
  m.VerticalResolution = 0.0
  m.PixelRed   = 0
  m.PixelGreen = 0
  m.PixelBlue  = 0

   PROTECTED PROCEDURE INIT(m.tcFileName)
    IF !EMPTY(m.tcFileName)
      * Create Image object from handle
      IF VARTYPE(m.tcFileName) = 'N'
        THIS.NativeImage = m.tcFileName
        RETURN
      ENDIF

      * Create Image object from file
      IF (VARTYPE(m.tcFileName) != 'C') OR !FILE(m.tcFileName)
        RETURN .F.
      ENDIF

      LOCAL lnImage
      m.lnImage = 0
      THIS.STAT = GdipLoadImageFromFile(THIS.WideStr(m.tcFileName), @m.lnImage)
      IF THIS.STAT = 0
        THIS.NativeImage = m.lnImage
      ENDIF
    ENDIF
  ENDPROC

   PROCEDURE CreateFromGraphics(tnGraphics)
    LOCAL lnHeight, lnWidth
    DECLARE INTEGER GdipGetClipBounds IN GDIPLUS.DLL ;
      INTEGER nGraphics, STRING @ pRectF

    DECLARE INTEGER GdipCreateBitmapFromGraphics IN GDIPLUS.DLL ;
      INTEGER nWidth, INTEGER nHeight, INTEGER nGraphics, INTEGER @ nImage

    LOCAL lcRectF, lnImage
    m.lcRectF = REPLICATE(CHR(0), 16)
    THIS.STAT = GdipGetClipBounds (m.tnGraphics, @m.lcRectF )
    m.lnWidth = float2int(buf2dword(SUBSTR(m.lcRectF, 9, 4)))
    m.lnHeight = float2int(buf2dword(SUBSTR(m.lcRectF, 13, 4)))

    m.lnImage = 0
    THIS.STAT = GdipCreateBitmapFromGraphics(m.lnWidth, m.lnHeight, m.tnGraphics, @m.lnImage)
    THIS.NativeImage = m.lnImage
  ENDPROC

   PROTECTED PROCEDURE DESTROY
    IF THIS.NativeImage != 0
      GdipDisposeImage(THIS.NativeImage)
    ENDIF
  ENDPROC

   PROCEDURE CREATE(tnWidth, tnHeight, tcPixelFormat)
    IF VARTYPE(m.tcPixelFormat) == "L"
      m.tcPixelFormat = "32bppARGB"
    ENDIF

    IF (VARTYPE(m.tnWidth) != 'N') OR (VARTYPE(m.tnHeight) != 'N')
      ERROR 11
    ENDIF

    LOCAL NewImage, lnFormat
    m.NewImage = 0
    m.lnFormat = THIS.StrToPixelFormat(m.tcPixelFormat)

    THIS.STAT = GdipCreateBitmapFromScan0(m.tnWidth, m.tnHeight, 0, m.lnFormat, 0, @m.NewImage)
    IF THIS.STAT = 0
      GdipDisposeImage(THIS.NativeImage)
      THIS.NativeImage = m.NewImage
    ENDIF
  ENDPROC

   PROCEDURE LOAD(tcFileName)
    IF VARTYPE(m.tcFileName) != 'C'
      ERROR 11
    ENDIF
    IF !FILE(m.tcFileName)
      ERROR 1, m.tcFileName
    ENDIF

    LOCAL lnImage
    IF THIS.NativeImage != 0
      GdipDisposeImage(THIS.NativeImage)
    ENDIF
    THIS.NativeImage = 0

    * Create Image from file
    m.lnImage = 0
    THIS.STAT = GdipLoadImageFromFile(THIS.WideStr(m.tcFileName), @m.lnImage)
    IF THIS.STAT = 0
      THIS.NativeImage = m.lnImage
    ENDIF
  ENDPROC

   PROCEDURE FromHBITMAP(thBitmap, thPalette)
    IF VARTYPE(m.thBitmap) != 'N'
      ERROR 11
    ENDIF
    IF !EMPTY(m.thPalette) AND (VARTYPE(m.thPalette) != 'N')
      ERROR 11
    ENDIF
    IF EMPTY(m.thPalette)
      m.thPalette = 0
    ENDIF

    LOCAL NewImage
    IF THIS.NativeImage != 0
      GdipDisposeImage(THIS.NativeImage)
    ENDIF
    THIS.NativeImage = 0

    m.NewImage = 0
    THIS.STAT = GdipCreateBitmapFromHBITMAP(m.thBitmap, m.thPalette, @m.NewImage)
    IF THIS.STAT = 0
      THIS.NativeImage = m.NewImage
    ENDIF
  ENDPROC

   PROCEDURE FromHICON(thIcon)
    IF VARTYPE(m.thIcon) != 'N'
      ERROR 11
    ENDIF

    LOCAL NewImage
    IF THIS.NativeImage != 0
      GdipDisposeImage(THIS.NativeImage)
    ENDIF
    THIS.NativeImage = 0

    m.NewImage = 0
    THIS.STAT = GdipCreateBitmapFromHICON(m.thIcon, @m.NewImage)
    IF THIS.STAT = 0
      THIS.NativeImage = m.NewImage
    ENDIF
  ENDPROC

   PROCEDURE GetHBITMAP(tnColor)
    IF !EMPTY(m.tnColor) AND (VARTYPE(m.tnColor) != 'N')
      ERROR 11
    ENDIF
    IF EMPTY(m.tnColor)
      m.tnColor = 0x00FFFFFF
    ENDIF

    LOCAL hBmp, argb
    m.hBmp = 0
    m.argb = MakeARGB(m.tnColor, 255)
    THIS.STAT = GdipCreateHBITMAPFromBitmap(THIS.NativeImage, @m.hBmp, m.argb)
    RETURN m.hBmp
  ENDPROC

   PROCEDURE GetHICON
    LOCAL hIcon
    m.hIcon = 0
    THIS.STAT = GdipCreateHICONFromBitmap(THIS.NativeImage, @m.hIcon)
    RETURN m.hIcon
  ENDPROC

   PROCEDURE FromResource(tcFileName, tcBitmapName)
    IF (VARTYPE(m.tcFileName) != 'C') OR (VARTYPE(m.tcBitmapName) != 'C')
      ERROR 11
    ENDIF
    * first parameter is used to return a full qualified path name
    IF PathFindOnPath(PADR(m.tcFileName, MAX_PATH, CHR(0)), 0) = 0
      ERROR 1, m.tcFileName
    ENDIF

    LOCAL hInstance, Bmp
    IF THIS.NativeImage != 0
      GdipDisposeImage(THIS.NativeImage)
    ENDIF
    THIS.NativeImage = 0

    m.hInstance = LoadLibrary(m.tcFileName)
    IF m.hInstance = 0
      ERROR ERR_MODULE + m.tcFileName
    ENDIF
    m.Bmp = 0
    THIS.STAT = GdipCreateBitmapFromResource(m.hInstance, THIS.WideStr(m.tcBitmapName), @m.Bmp)
    IF THIS.STAT = 0
      THIS.NativeImage = m.Bmp
    ENDIF
    FreeLibrary(m.hInstance)
  ENDPROC

   PROCEDURE FromPicture(toPicture)
    IF (VARTYPE(m.toPicture) != 'O') OR (COMCLASSINFO(m.toPicture, 5) != '3')
      ERROR 11
    ENDIF

    LOCAL NewImage
    IF THIS.NativeImage != 0
      GdipDisposeImage(THIS.NativeImage)
    ENDIF
    THIS.NativeImage = 0

    m.NewImage = 0
    DO CASE
      CASE m.toPicture.TYPE = PICTYPE_BITMAP
        THIS.STAT = GdipCreateBitmapFromHBITMAP(m.toPicture.Handle, m.toPicture.hPal, @m.NewImage)
      CASE m.toPicture.TYPE = PICTYPE_METAFILE
        THIS.STAT = GdipCreateMetafileFromWmf(m.toPicture.Handle, 0, 0, @m.NewImage)
      CASE m.toPicture.TYPE = PICTYPE_ICON
        THIS.STAT = GdipCreateBitmapFromHICON(m.toPicture.Handle, @m.NewImage)
      CASE m.toPicture.TYPE = PICTYPE_ENHMETAFILE
        THIS.STAT = GdipCreateMetafileFromEmf(m.toPicture.Handle, 0, @m.NewImage)
      OTHERWISE
        ERROR ERR_PICTYPE
    ENDCASE
    IF THIS.STAT = 0
      THIS.NativeImage = m.NewImage
    ENDIF
  ENDPROC

   FUNCTION GetPicture()
    LOCAL hBmp, PictDesc, IPic
    *:Global iid
    m.hBmp = 0
    THIS.STAT = GdipCreateHBITMAPFromBitmap(THIS.NativeImage, @m.hBmp, 0xFFFFFFFF)
    IF THIS.STAT = 0
      * Create Picture object according to PICTDESC structure
      m.PictDesc = DWord(16) ;				&& Size of PICTDESC structure
        + DWord(PICTYPE_BITMAP) ;	&& Type of picture
        + DWord(m.hBmp) ;			&& HBITMAP
        + DWord(0)					&& HPALETTE
      m.iid = IID_IDispatch
      m.IPic = 0
      OleCreatePictureIndirect(@m.PictDesc, @m.iid, 1, @m.IPic)
      #IF VERSION(5) >= 700
        RETURN m.IPic
      #ELSE
        LOCAL lcTmpFile, lnBstr, lcVar, loPic
        m.lcTmpFile = "tmp.Bmp"
        m.lnBstr = SysAllocString(THIS.WideStr(m.lcTmpFile))
        OleSavePictureFile(m.IPic, m.lnBstr)
        SysFreeString(m.lnBstr)
        * IPicture->Release()
        m.lcVar = CHR(VT_DISPATCH) + REPLICATE(CHR(0), 7) + DWord(m.IPic)
        VariantClear(@m.lcVar)
        m.loPic = LOADPICTURE(m.lcTmpFile)
        ERASE (m.lcTmpFile)
        RETURN m.loPic
      #ENDIF
    ENDIF
  ENDPROC

   PROCEDURE FromClipboard()
    LOCAL hBmp, hPal, Bmp
    IF THIS.NativeImage != 0
      GdipDisposeImage(THIS.NativeImage)
    ENDIF
    THIS.NativeImage = 0

    m.hBmp = 0
    m.hPal = 0
    IF OpenClipboard(0) != 0
      m.hBmp = GetClipboardData(CF_BITMAP)
      m.hPal = GetClipboardData(CF_PALETTE)
      CloseClipboard()
    ELSE
      ERROR ERR_CLIPNOTOPEN
    ENDIF
    IF m.hBmp = 0 OR GetObjectType(m.hBmp) <> OBJ_BITMAP
      ERROR ERR_CLIPNODATA
    ENDIF

    m.Bmp = 0
    THIS.STAT = GdipCreateBitmapFromHBITMAP(m.hBmp, m.hPal, @m.Bmp)
    IF THIS.STAT = 0
      THIS.NativeImage = m.Bmp
    ENDIF
    DeleteObject(m.hBmp)
  ENDPROC

   PROCEDURE ToClipboard()
    LOCAL hBmp, hReturnBmp, hndl
    m.hReturnBmp = 0
    THIS.STAT = GdipCreateHBITMAPFromBitmap(THIS.NativeImage, @m.hReturnBmp, 0xFFFFFFFF)
    m.hBmp = CopyImage(m.hReturnBmp, 0, 0, 0, 0)
    DeleteObject(m.hReturnBmp)
    IF THIS.STAT = 0
      IF OpenClipboard(0) != 0
        EmptyClipboard()
        m.hndl = SetClipboardData(CF_BITMAP, m.hBmp)
        CloseClipboard()
        IF m.hndl = 0
          ERROR ERR_CLIPSETDATA
        ENDIF
      ELSE
        ERROR ERR_CLIPNOTOPEN
      ENDIF
    ENDIF
  ENDPROC

   PROCEDURE CLONE
    LOCAL cloneImage
    *:Global cloneBitmap
    m.cloneBitmap = 0
    THIS.STAT = GdipCloneImage(THIS.NativeImage, @m.cloneImage)
    RETURN CREATEOBJECT("gpImage2", m.cloneImage)
  ENDPROC

   PROCEDURE CloneArea(tnX, tnY, tnWidth, tnHeight, tcPixelFormat)
    IF (VARTYPE(m.tnX) != 'N') OR (VARTYPE(m.tnY) != 'N')
      ERROR 11
    ENDIF
    IF (VARTYPE(m.tnWidth) != 'N') OR (VARTYPE(m.tnHeight) != 'N')
      ERROR 11
    ENDIF
    IF !EMPTY(m.tcPixelFormat) AND (VARTYPE(m.tcPixelFormat) != 'C')
      ERROR 11
    ENDIF

    LOCAL lnFormat, gpdstBitmap
    m.lnFormat = 0
    IF EMPTY(m.tcPixelFormat)
      THIS.STAT = GdipGetImagePixelFormat(THIS.NativeImage, @m.lnFormat)
    ELSE
      m.lnFormat = THIS.StrToPixelFormat(m.tcPixelFormat)
    ENDIF

    m.gpdstBitmap = 0
    THIS.STAT = GdipCloneBitmapAreaI(m.tnX, m.tnY, m.tnWidth, m.tnHeight, ;
        m.lnFormat, THIS.NativeImage, @m.gpdstBitmap)
    RETURN CREATEOBJECT("gpImage2", m.gpdstBitmap)
  ENDPROC

   PROCEDURE Thumbnail(tnWidth, tnHeight)
    IF (VARTYPE(m.tnWidth) != 'N') OR (VARTYPE(m.tnHeight) != 'N')
      ERROR 11
    ENDIF

    LOCAL thumbImage
    m.thumbImage = 0
    THIS.STAT = GdipGetImageThumbnail(THIS.NativeImage, m.tnWidth, m.tnHeight, @m.thumbImage, 0, 0)
    IF THIS.STAT = 0
      GdipDisposeImage(THIS.NativeImage)
      THIS.NativeImage = m.thumbImage
    ENDIF
  ENDPROC

   PROCEDURE SaveAsBmp(tcFileName)
    IF VARTYPE(m.tcFileName) != 'C'
      ERROR 11
    ENDIF

    LOCAL EncoderClsid, lcFile
    m.lcFile = DEFAULTEXT(m.tcFileName, "Bmp")
    ERASE (m.lcFile)
    m.EncoderClsid = THIS.StrToGuid(CLSID_Bmp)
    THIS.STAT = GdipSaveImageToFile(THIS.NativeImage, THIS.WideStr(m.lcFile), @m.EncoderClsid, NULL)
  ENDPROC

  * tnQuality - quality of JPEG compression, 0-100, optional
  *			0 - highest compression, 100 - highest quality, default value - 75.
  * tnTransform - type of transformation without loss of information,
  *			any of EncoderValueTransform values, optional.
   PROCEDURE SaveAsJPEG(tcFileName, tnQuality, tnTransform)
    IF VARTYPE(m.tcFileName) != 'C'
      ERROR 11
    ENDIF
    IF !EMPTY(m.tnQuality) AND (VARTYPE(m.tnQuality) != 'N')
      ERROR 11
    ENDIF
    IF !EMPTY(m.tnTransform) AND (VARTYPE(m.tnTransform) != 'N')
      ERROR 11
    ENDIF

    LOCAL EncoderClsid, lcFile, EncoderParams, loQuality, loTransform, paramCnt
    m.lcFile = DEFAULTEXT(m.tcFileName, "jpg")
    ERASE (m.lcFile)
    m.EncoderClsid = THIS.StrToGuid(CLSID_JPEG)

    m.paramCnt = 0
    m.EncoderParams = ""
    IF VARTYPE(m.tnQuality) = 'N'
      m.loQuality = CREATEOBJECT("EncoderParameter", THIS.StrToGuid(GUID_Quality), m.tnQuality)
      m.EncoderParams = m.EncoderParams + m.loQuality.GetString()
      m.paramCnt = m.paramCnt + 1
    ENDIF
    IF VARTYPE(m.tnTransform) = 'N'
      m.loTransform = CREATEOBJECT("EncoderParameter", THIS.StrToGuid(GUID_Transform), m.tnTransform)
      m.EncoderParams = m.EncoderParams + m.loTransform.GetString()
      m.paramCnt = m.paramCnt + 1
    ENDIF

    IF m.paramCnt > 0
      *	class EncoderParameters
      *	{
      *	public:
      *		UINT Count;						// Number of parameters in this structure
      *		EncoderParameter Parameter[1];	// Parameter values
      *	}
      m.EncoderParams = DWord(m.paramCnt) + m.EncoderParams
      THIS.STAT = GdipSaveImageToFile(THIS.NativeImage, THIS.WideStr(m.lcFile), @m.EncoderClsid, @m.EncoderParams)
    ELSE
      THIS.STAT = GdipSaveImageToFile(THIS.NativeImage, THIS.WideStr(m.lcFile), @m.EncoderClsid, NULL)
    ENDIF
  ENDPROC

   PROCEDURE SaveAsGIF(tcFileName)
    IF VARTYPE(m.tcFileName) != 'C'
      ERROR 11
    ENDIF

    LOCAL EncoderClsid, lcFile
    m.lcFile = DEFAULTEXT(m.tcFileName, "gif")
    ERASE (m.lcFile)
    m.EncoderClsid = THIS.StrToGuid(CLSID_GIF)
    THIS.STAT = GdipSaveImageToFile(THIS.NativeImage, THIS.WideStr(m.lcFile), @m.EncoderClsid, NULL)
  ENDPROC

  * tnCompress - type of compression, any of EncoderValueCompression values, optional.
  * tnColorDepth - number of colors in bits per pixel (1,4,8,16,24,32,48,64), optional.
   PROCEDURE SaveAsTIFF(tcFileName, tnCompress, tnColorDepth)
    LOCAL loColorDepth AS "EncoderParameter"
    LOCAL loCompress AS "EncoderParameter"
    IF VARTYPE(m.tcFileName) != 'C'
      ERROR 11
    ENDIF
    IF !EMPTY(m.tnCompress) AND (VARTYPE(m.tnCompress) != 'N')
      ERROR 11
    ENDIF
    IF !EMPTY(m.tnColorDepth) AND (VARTYPE(m.tnColorDepth) != 'N')
      ERROR 11
    ENDIF

    LOCAL EncoderClsid, lcFile, EncoderParams, loQuality, loTransform, paramCnt
    m.lcFile = DEFAULTEXT(m.tcFileName, "tif")
    ERASE (m.lcFile)
    m.EncoderClsid = THIS.StrToGuid(CLSID_TIFF)

    m.paramCnt = 0
    m.EncoderParams = ""
    IF VARTYPE(m.tnCompress) = 'N'
      m.loCompress = CREATEOBJECT("EncoderParameter", THIS.StrToGuid(GUID_Compress), m.tnCompress)
      m.EncoderParams = m.EncoderParams + m.loCompress.GetString()
      m.paramCnt = m.paramCnt + 1
    ENDIF
    IF VARTYPE(m.tnColorDepth) = 'N'
      m.loColorDepth = CREATEOBJECT("EncoderParameter", THIS.StrToGuid(GUID_ColorDepth), m.tnColorDepth)
      m.EncoderParams = m.EncoderParams + m.loColorDepth.GetString()
      m.paramCnt = m.paramCnt + 1
    ENDIF

    IF m.paramCnt > 0
      *	class EncoderParameters
      *	{
      *	public:
      *		UINT Count;						// Number of parameters in this structure
      *		EncoderParameter Parameter[1];	// Parameter values
      *	}
      m.EncoderParams = DWord(m.paramCnt) + m.EncoderParams
      THIS.STAT = GdipSaveImageToFile(THIS.NativeImage, THIS.WideStr(m.lcFile), @m.EncoderClsid, @m.EncoderParams)
    ELSE
      THIS.STAT = GdipSaveImageToFile(THIS.NativeImage, THIS.WideStr(m.lcFile), @m.EncoderClsid, NULL)
    ENDIF
  ENDPROC

  * tnCompress - type of compression, any of EncoderValueCompression values, optional.
  * tnColorDepth - number of colors in bits per pixel (1,4,8,16,24,32,48,64), optional.
   PROCEDURE SaveAsMultipageTIFF(tcFileName, tnCompress, tnColorDepth)
    LOCAL loColorDepth AS "EncoderParameter"
    LOCAL loCompress AS "EncoderParameter"
    IF VARTYPE(m.tcFileName) != 'C'
      ERROR 11
    ENDIF
    IF !EMPTY(m.tnCompress) AND (VARTYPE(m.tnCompress) != 'N')
      ERROR 11
    ENDIF
    IF !EMPTY(m.tnColorDepth) AND (VARTYPE(m.tnColorDepth) != 'N')
      ERROR 11
    ENDIF

    LOCAL EncoderClsid, lcFile, EncoderParams, loQuality, loTransform, paramCnt
    m.lcFile = DEFAULTEXT(m.tcFileName, "tif")
    ERASE (m.lcFile)
    m.EncoderClsid = THIS.StrToGuid(CLSID_TIFF)

    m.loCompress = CREATEOBJECT("EncoderParameter", THIS.StrToGuid(GUID_SaveFlag), EncoderValueMultiFrame)
    m.EncoderParams = m.loCompress.GetString()
    m.paramCnt = 1

    IF VARTYPE(m.tnCompress) = 'N'
      m.loCompress = CREATEOBJECT("EncoderParameter", THIS.StrToGuid(GUID_Compress), m.tnCompress)
      m.EncoderParams = m.EncoderParams + m.loCompress.GetString()
      m.paramCnt = m.paramCnt + 1
    ENDIF
    IF VARTYPE(m.tnColorDepth) = 'N'
      m.loColorDepth = CREATEOBJECT("EncoderParameter", THIS.StrToGuid(GUID_ColorDepth), m.tnColorDepth)
      m.EncoderParams = m.EncoderParams + m.loColorDepth.GetString()
      m.paramCnt = m.paramCnt + 1
    ENDIF

    m.EncoderParams = DWord(m.paramCnt) + m.EncoderParams
    THIS.STAT = GdipSaveImageToFile(THIS.NativeImage, THIS.WideStr(m.lcFile), @m.EncoderClsid, @m.EncoderParams)
  ENDPROC

   FUNCTION GetImage
    RETURN THIS.NativeImage
  ENDFUNC

   PROCEDURE SaveAddPage(tnImage)
    LOCAL loCompress AS "EncoderParameter"
    IF EMPTY(m.tnImage) AND (VARTYPE(m.tnImage) != 'N')
      ERROR 11
    ENDIF

    LOCAL EncoderParams, paramCnt
    m.loCompress = CREATEOBJECT("EncoderParameter", THIS.StrToGuid(GUID_SaveFlag), EncoderValueFrameDimensionPage)
    m.EncoderParams = m.loCompress.GetString()
    m.paramCnt = 1

    m.EncoderParams = DWord(m.paramCnt) + m.EncoderParams
    THIS.STAT = GdipSaveAddImage(THIS.NativeImage, m.tnImage, @m.EncoderParams)
  ENDPROC

   PROCEDURE SaveAsPNG(tcFileName)
    IF VARTYPE(m.tcFileName) != 'C'
      ERROR 11
    ENDIF

    LOCAL EncoderClsid, lcFile
    m.lcFile = DEFAULTEXT(m.tcFileName, "png")
    ERASE (m.lcFile)
    m.EncoderClsid = THIS.StrToGuid(CLSID_PNG)
    THIS.STAT = GdipSaveImageToFile(THIS.NativeImage, THIS.WideStr(m.lcFile), @m.EncoderClsid, NULL)
  ENDPROC

   PROCEDURE ImageFormat_Access
    LOCAL lcFormat
    m.lcFormat = THIS.StrToGuid(GUID_FormatUndefined)
    THIS.STAT = GdipGetImageRawFormat(THIS.NativeImage, @m.lcFormat)
    DO CASE
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatMemoryBmp) OR m.lcFormat = THIS.StrToGuid(GUID_FormatBmp)
        RETURN "Bmp"
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatEMF)
        RETURN "EMF"
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatWMF)
        RETURN "WMF"
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatJPEG)
        RETURN "JPEG"
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatPNG)
        RETURN "PNG"
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatGIF)
        RETURN "GIF"
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatTIFF)
        RETURN "TIFF"
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatEXIF)
        RETURN "EXIF"
      CASE m.lcFormat = THIS.StrToGuid(GUID_FormatIcon)
        RETURN "ICON"
      OTHERWISE
        RETURN "UNDEFINED"
    ENDCASE
  ENDPROC

   PROCEDURE PixelFormat_Access
    LOCAL lnFormat
    m.lnFormat = 0
    THIS.STAT = GdipGetImagePixelFormat(THIS.NativeImage, @m.lnFormat)
    DO CASE
      CASE m.lnFormat = PixelFormat1bppIndexed
        RETURN "1bppIndexed"
      CASE m.lnFormat = PixelFormat4bppIndexed
        RETURN "4bppIndexed"
      CASE m.lnFormat = PixelFormat8bppIndexed
        RETURN "8bppIndexed"
      CASE m.lnFormat = PixelFormat16bppGrayScale
        RETURN "16bppGrayScale"
      CASE m.lnFormat = PixelFormat16bppRGB555
        RETURN "16bppRGB555"
      CASE m.lnFormat = PixelFormat16bppRGB565
        RETURN "16bppRGB565"
      CASE m.lnFormat = PixelFormat16bppARGB1555
        RETURN "16bppARGB1555"
      CASE m.lnFormat = PixelFormat24bppRGB
        RETURN "24bppRGB"
      CASE m.lnFormat = PixelFormat32bppRGB
        RETURN "32bppRGB"
      CASE m.lnFormat = PixelFormat32bppARGB
        RETURN "32bppARGB"
      CASE m.lnFormat = PixelFormat32bppPARGB
        RETURN "32bppPARGB"
      CASE m.lnFormat = PixelFormat48bppRGB
        RETURN "48bppRGB"
      CASE m.lnFormat = PixelFormat64bppARGB
        RETURN "64bppARGB"
      CASE m.lnFormat = PixelFormat64bppPARGB
        RETURN "64bppPARGB"
      OTHERWISE
        RETURN "Undefined"
    ENDCASE
  ENDPROC

   PROCEDURE PixelFormat_Assign(tcFormat)
    IF VARTYPE(m.tcFormat) != 'C'
      ERROR 11
    ENDIF

    LOCAL lnFormat, lnWidth, lnHeight, gpdstBitmap
    m.lnFormat = THIS.StrToPixelFormat(m.tcFormat)

    m.lnWidth = 0
    THIS.STAT = GdipGetImageWidth(THIS.NativeImage, @m.lnWidth)
    m.lnHeight = 0
    THIS.STAT = GdipGetImageHeight(THIS.NativeImage, @m.lnHeight)
    m.gpdstBitmap = 0
    THIS.STAT = GdipCloneBitmapAreaI(0, 0, m.lnWidth, m.lnHeight, ;
        m.lnFormat, THIS.NativeImage, @m.gpdstBitmap)
    IF THIS.STAT = 0
      GdipDisposeImage(THIS.NativeImage)
      THIS.NativeImage = m.gpdstBitmap
    ENDIF
  ENDPROC

   PROCEDURE ImageWidth_Access
    LOCAL lnWidth
    m.lnWidth = 0
    THIS.STAT = GdipGetImageWidth(THIS.NativeImage, @m.lnWidth)
    RETURN m.lnWidth
  ENDPROC

   PROCEDURE ImageHeight_Access
    LOCAL lnHeight
    m.lnHeight = 0
    THIS.STAT = GdipGetImageHeight(THIS.NativeImage, @m.lnHeight)
    RETURN m.lnHeight
  ENDPROC

   PROCEDURE HorizontalResolution_Access
    LOCAL lnResolution
    m.lnResolution = 0
    THIS.STAT = GdipGetImageHorizontalResolution(THIS.NativeImage, @m.lnResolution)
    RETURN m.lnResolution
  ENDPROC

   PROCEDURE VerticalResolution_Access
    LOCAL lnResolution
    m.lnResolution = 0
    THIS.STAT = GdipGetImageVerticalResolution(THIS.NativeImage, @m.lnResolution)
    RETURN m.lnResolution
  ENDPROC

   PROCEDURE HorizontalResolution_Assign(tnResolution)
    IF VARTYPE(m.tnResolution) != 'N'
      ERROR 11
    ENDIF
    LOCAL lnVertRes
    m.lnVertRes = 0
    THIS.STAT = GdipGetImageVerticalResolution(THIS.NativeImage, @m.lnVertRes)
    THIS.STAT = GdipBitmapSetResolution(THIS.NativeImage, m.tnResolution, m.lnVertRes)
  ENDPROC

   PROCEDURE VerticalResolution_Assign(tnResolution)
    IF VARTYPE(m.tnResolution) != 'N'
      ERROR 11
    ENDIF
    LOCAL lnHorRes
    m.lnHorRes = 0
    THIS.STAT = GdipGetImageHorizontalResolution(THIS.NativeImage, @m.lnHorRes)
    THIS.STAT = GdipBitmapSetResolution(THIS.NativeImage, m.lnHorRes, m.tnResolution)
  ENDPROC

   PROCEDURE GetPixelColor(tnX, tnY)
    IF (VARTYPE(m.tnX) != 'N') OR (VARTYPE(m.tnY) != 'N')
      ERROR 11
    ENDIF
    LOCAL argb, red, green, blue
    m.argb = 0
    THIS.STAT = GdipBitmapGetPixel(THIS.NativeImage, m.tnX, m.tnY, @m.argb)
    m.red = BITRSHIFT(BITAND(m.argb, 0x00FF0000), 16)
    m.green = BITRSHIFT(BITAND(m.argb, 0x0000FF00), 8)
    m.blue = BITAND(m.argb, 0x000000FF)
    THIS.PixelRed   = m.Red
    THIS.PixelGreen = m.Green
    THIS.PixelBlue  = m.Blue
    RETURN m.red + BITLSHIFT(m.green, 8) + BITLSHIFT(m.blue, 16)
  ENDPROC

   PROCEDURE GetPixelAlpha(tnX, tnY)
    IF (VARTYPE(m.tnX) != 'N') OR (VARTYPE(m.tnY) != 'N')
      ERROR 11
    ENDIF
    LOCAL argb
    m.argb = 0
    THIS.STAT = GdipBitmapGetPixel(THIS.NativeImage, m.tnX, m.tnY, @m.argb)
    RETURN BITRSHIFT(m.argb, 24)
  ENDPROC

   PROCEDURE SetPixel(tnX, tnY, tnColor, tnAlpha)
    IF (VARTYPE(m.tnX) != 'N') OR (VARTYPE(m.tnY) != 'N') OR (VARTYPE(m.tnColor) != 'N')
      ERROR 11
    ENDIF
    IF !EMPTY(m.tnAlpha) AND (VARTYPE(m.tnAlpha) != 'N')
      ERROR 11
    ENDIF
    LOCAL argb
    m.argb = MakeARGB(m.tnColor, m.tnAlpha)
    THIS.STAT = GdipBitmapSetPixel(THIS.NativeImage, m.tnX, m.tnY, m.argb)
  ENDPROC

   PROCEDURE Crop(tnX, tnY, tnWidth, tnHeight)
    IF (VARTYPE(m.tnX) != 'N') OR (VARTYPE(m.tnY) != 'N')
      ERROR 11
    ENDIF
    IF (VARTYPE(m.tnWidth) != 'N') OR (VARTYPE(m.tnHeight) != 'N')
      ERROR 11
    ENDIF
    LOCAL lnFormat, gpdstBitmap
    m.lnFormat = 0
    THIS.STAT = GdipGetImagePixelFormat(THIS.NativeImage, @m.lnFormat)
    m.gpdstBitmap = 0
    THIS.STAT = GdipCloneBitmapAreaI(m.tnX, m.tnY, m.tnWidth, m.tnHeight, ;
        m.lnFormat, THIS.NativeImage, @m.gpdstBitmap)
    IF THIS.STAT = 0
      GdipDisposeImage(THIS.NativeImage)
      THIS.NativeImage = m.gpdstBitmap
    ENDIF
  ENDPROC

   PROCEDURE ROTATEFLIP(rotateFlipType)
    IF VARTYPE(m.rotateFlipType) != 'N'
      ERROR 11
    ENDIF
    THIS.STAT = GdipImageRotateFlip(THIS.NativeImage, m.rotateFlipType)
  ENDPROC

   PROCEDURE RESIZE(tnWidth, tnHeight, tnInterpolationMode)
    IF (VARTYPE(m.tnWidth) != 'N') OR (VARTYPE(m.tnHeight) != 'N')
      ERROR 11
    ENDIF
    IF !EMPTY(m.tnInterpolationMode) AND (VARTYPE(m.tnInterpolationMode) != 'N')
      ERROR 11
    ENDIF
    IF VARTYPE(m.tnInterpolationMode) != 'N'
      m.tnInterpolationMode = InterpolationModeDefault
    ENDIF

    LOCAL lnFormat, graphics, resizedImage
    m.lnFormat = 0
    m.graphics = 0
    m.resizedImage = 0

    THIS.STAT = GdipGetImagePixelFormat(THIS.NativeImage, @m.lnFormat)
    THIS.STAT = GdipCreateBitmapFromScan0(m.tnWidth, m.tnHeight, 0, m.lnFormat, 0, @m.resizedImage)
    IF THIS.STAT != 0
      RETURN
    ENDIF
    THIS.STAT = GdipGetImageGraphicsContext(m.resizedImage, @m.graphics)
    IF THIS.STAT != 0
      RETURN
    ENDIF
    THIS.STAT = GdipSetInterpolationMode(m.graphics, m.tnInterpolationMode)
    THIS.STAT = GdipDrawImageRectI(m.graphics, THIS.NativeImage, 0, 0, m.tnWidth, m.tnHeight)
    IF THIS.STAT = 0
      GdipDisposeImage(THIS.NativeImage)
      THIS.NativeImage = m.resizedImage
    ENDIF
  ENDPROC

   FUNCTION GetPageCount()
    LOCAL DimensionID, COUNT
    m.DimensionID = THIS.StrToGuid(GUID_Page)
    m.COUNT = 0
    GdipImageGetFrameCount(THIS.NativeImage, @m.DimensionID, @m.COUNT)
    RETURN m.COUNT
  ENDFUNC

   PROCEDURE SelectPage(tnPage)
    IF (VARTYPE(m.tnPage) != 'N')
      ERROR 11
    ENDIF
    LOCAL DimensionID
    m.DimensionID = THIS.StrToGuid(GUID_Page)
    GdipImageSelectActiveFrame(THIS.NativeImage, @m.DimensionID, m.tnPage)
  ENDPROC

   FUNCTION GetFrameCount()
    LOCAL DimensionID, COUNT
    m.DimensionID = THIS.StrToGuid(GUID_Time)
    m.COUNT = 0
    GdipImageGetFrameCount(THIS.NativeImage, @m.DimensionID, @m.COUNT)
    RETURN m.COUNT
  ENDFUNC

   PROCEDURE SelectFrame(tnFrame)
    IF (VARTYPE(m.tnFrame) != 'N')
      ERROR 11
    ENDIF
    LOCAL DimensionID
    m.DimensionID = THIS.StrToGuid(GUID_Time)
    GdipImageSelectActiveFrame(THIS.NativeImage, @m.DimensionID, m.tnFrame)
  ENDPROC

   PROCEDURE Capture(thWnd)
    IF VARTYPE(m.thWnd) != 'N'
      ERROR 11
    ENDIF
    IF THIS.NativeImage != 0
      GdipDisposeImage(THIS.NativeImage)
    ENDIF
    THIS.NativeImage = 0
    LOCAL Bmp
    LOCAL lhDC, lhMemDC, lhOldBmp, lhMemBmp
    LOCAL lnWidth, lnHeight

    IF EMPTY(m.thWnd)
      m.thWnd = GetDesktopWindow()
    ENDIF
    m.lhDC = GetWindowDC(m.thWnd)
    = THIS.GetWinRect(m.thWnd, @m.lnWidth, @m.lnHeight)

    m.lhMemDC = CreateCompatibleDC(m.lhDC)
    m.lhMemBmp = CreateCompatibleBitmap(m.lhDC, m.lnWidth, m.lnHeight)

    m.lhOldBmp = SelectObject(m.lhMemDC, m.lhMemBmp)
    = BitBlt(m.lhMemDC, 0, 0, m.lnWidth, m.lnHeight, m.lhDC, 0, 0, SRCCOPY)
    = SelectObject(m.lhMemDC, m.lhOldBmp)

    = DeleteDC(m.lhMemDC)
    = ReleaseDC(m.thWnd, m.lhDC)

    m.Bmp = 0
    THIS.STAT = GdipCreateBitmapFromHBITMAP(m.lhMemBmp, 0, @m.Bmp)
    IF THIS.STAT = 0
      THIS.NativeImage = m.Bmp
    ENDIF
    DeleteObject(m.lhMemBmp)
  ENDPROC


  ***********************************************************************
  * Protected functions
  ***********************************************************************

  *!*		Protected Procedure PrintHDC(thDC)
  *!*		EndProc

   PROTECTED PROCEDURE GetWinRect(m.tnHWND, m.tnWidth, m.tnHeight)
    * Returns width and height of window, passed by handle
    LOCAL lpRect, lnLeft, lnTop, lnRight, lnBottom
    m.lpRect = REPLICATE(CHR(0), 16)
    = GetWindowRect(m.tnHWND, @m.lpRect)

    m.lnLeft   = THIS.LongToNum(SUBSTR(m.lpRect,  1, 4))
    m.lnTop    = THIS.LongToNum(SUBSTR(m.lpRect,  5, 4))
    m.lnRight  = THIS.LongToNum(SUBSTR(m.lpRect,  9, 4))
    m.lnBottom = THIS.LongToNum(SUBSTR(m.lpRect, 13, 4))

    m.tnWidth  = m.lnRight - m.lnLeft
    m.tnHeight = m.lnBottom - m.lnTop
  ENDPROC

   PROTECTED FUNCTION LongToNum(m.tcLong)
    * Converts a signed long value to a VFP numeric
    LOCAL nNum
    LOCAL lnNum
    m.lnNum = 0
    RtlCopyLong(@m.lnNum, m.tcLong, 4)
    RETURN m.lnNum
  ENDFUNC

   PROTECTED FUNCTION StrToPixelFormat(m.tcFormat)
    m.tcFormat = UPPER(m.tcFormat)
    DO CASE
      CASE m.tcFormat = "1BPPINDEXED"
        RETURN PixelFormat1bppIndexed
      CASE m.tcFormat = "4BPPINDEXED"
        RETURN PixelFormat4bppIndexed
      CASE m.tcFormat = "8BPPINDEXED"
        RETURN PixelFormat8bppIndexed
      CASE m.tcFormat = "16BPPGRAYSCALE"
        RETURN PixelFormat16bppGrayScale
      CASE m.tcFormat = "16BPPRGB555"
        RETURN PixelFormat16bppRGB555
      CASE m.tcFormat = "16BPPRGB565"
        RETURN PixelFormat16bppRGB565
      CASE m.tcFormat = "16BPPARGB1555"
        RETURN PixelFormat16bppARGB1555
      CASE m.tcFormat = "24BPPRGB"
        RETURN PixelFormat24bppRGB
      CASE m.tcFormat = "32BPPRGB"
        RETURN PixelFormat32bppRGB
      CASE m.tcFormat = "32BPPARGB"
        RETURN PixelFormat32bppARGB
      CASE m.tcFormat = "32BPPPARGB"
        RETURN PixelFormat32bppPARGB
      CASE m.tcFormat = "48BPPRGB"
        RETURN PixelFormat48bppRGB
      CASE m.tcFormat = "64BPPARGB"
        RETURN PixelFormat64bppARGB
      CASE m.tcFormat = "64BPPPARGB"
        RETURN PixelFormat64bppPARGB
      OTHERWISE
        ERROR 11
    ENDCASE
  ENDFUNC

   PROTECTED FUNCTION StrToGuid(m.tc)
    LOCAL guid
    m.guid = SPACE(16)
    m.tc = CHRTRAN(m.tc, "{}", "")
    UuidFromString(m.tc, @m.guid)
    RETURN m.guid
  ENDFUNC

   PROTECTED FUNCTION WideStr(m.tcStr)
    #IF VERSION(5) >= 700
      RETURN STRCONV(m.tcStr + CHR(0), 5)
    #ELSE
      LOCAL lnLen, lcWideStr
      m.lnLen = 2 * (LEN(m.tcStr) + 1)
      m.lcWideStr = REPLICATE(CHR(0), m.lnLen)
      MultiByteToWideChar(0, 0, @m.tcStr, LEN(m.tcStr), @m.lcWideStr, m.lnLen)
      RETURN m.lcWideStr
    #ENDIF
  ENDFUNC

   PROTECTED PROCEDURE stat_Assign(m.tnStatus)
    *!*			If m.tnStatus != 0
    *!*				Local res
    *!*				m.res = MessageBox("GDI+ error in " + Program(Program(-1) - 1) + CRLF;
    *!*					+ "Error code : " + Transform(m.tnStatus) + CRLF ;
    *!*					+ "Description: " + ErrorInfo(m.tnStatus) + CRLF + CRLF;
    *!*					+ "Press 'Retry' to debug the application.", 16 + 2, "Error")
    *!*				If m.res = 3
    *!*					Cancel
    *!*				EndIf
    *!*				If m.res = 4
    *!*					Suspend
    *!*				EndIf
    *!*			EndIf
    THIS.STAT = m.tnStatus
  ENDPROC

 ENDDEFINE

***********************************************************************
*   Class:	Graphics
***********************************************************************

DEFINE CLASS Graphics AS CUSTOM
  PROTECTED STAT
  PROTECTED nativeGraphics
   PROTECTED m.NativeImage

  m.NativeImage = 0
  m.nativeGraphics = 0
  m.brush    = 0
  m.PEN      = 0
  m.rectf    = 0
  m.nalign   = 0
  m.StringMeasure = .T.
  m.StringW  = 0 && Gets Width  from MeasureString
  m.StringH  = 0 && Gets Height from MeasureString
  m.StringChars = 0
  m.StringLines = 0
  m.PageScale   = 0
  m.ImgAttribs  = 0

   PROTECTED PROCEDURE INIT(m.tnNImage, m.tcMODE)
    IF PCOUNT() = 0
      RETURN
    ENDIF

    IF !(VARTYPE(m.tnNImage) == "N")
      ERROR 11
    ENDIF

    IF PCOUNT() = 1
      m.tcMode = "IMG"
    ENDIF

    THIS.NativeImage    = m.tnNImage
    DO CASE
      CASE UPPER(m.tcMode) = "IMG"
        THIS.CreateFromImage(m.tnNImage)
      CASE UPPER(m.tcMode) = "HWND"
        THIS.CreateFromHWND(m.tnNImage)
      CASE UPPER(m.tcMode) = "HDC"

    ENDCASE
  ENDPROC

   FUNCTION CreateFromImage(tnImage)
    LOCAL graphics
    m.graphics = 0
    THIS.STAT = GdipGetImageGraphicsContext(m.tnImage, @m.graphics)
    THIS.NativeImage = m.tnImage
    THIS.NativeGraphics = m.graphics
    RETURN m.graphics
  ENDFUNC

   PROCEDURE CreateFromHWND(tnHWND)
    LOCAL graphics
    m.graphics = 0
    THIS.STAT = GdipCreateFromHWND(m.tnHWND, @m.graphics)
    THIS.NativeGraphics = m.graphics
    RETURN m.graphics
  ENDPROC

   PROTECTED PROCEDURE DESTROY
    IF THIS.PEN <> 0
      = GdipDeletePen(THIS.PEN)
    ENDIF

    IF THIS.Brush <> 0
      = GdipDeleteBrush(THIS.Brush)
    ENDIF

    IF THIS.nativeGraphics != 0
      = GdipDeleteGraphics(THIS.nativeGraphics)
    ENDIF
  ENDPROC

   PROTECTED PROCEDURE stat_Assign(m.tnStatus)
    IF m.tnStatus != 0
      LOCAL res
      m.res = MESSAGEBOX("GDI+ error in " + PROGRAM(PROGRAM(-1) - 1) + CRLF;
          + "Error code : " + TRANSFORM(m.tnStatus) + CRLF ;
          + "Description: " + ErrorInfo(m.tnStatus) + CRLF + CRLF;
          + "Press 'Retry' to debug the application.", 16 + 2, "Error")
      IF m.res = 3
        CANCEL
      ENDIF
      IF m.res = 4
        SUSPEND
      ENDIF
    ENDIF
    THIS.STAT = m.tnStatus
  ENDPROC

  *!*	PEN FUNCTIONS

   PROCEDURE SetPen(tnColor, tnWidth, tnUnit, tnDashStyle)
    LOCAL lnARGB
    *:Global gdipen
    IF VARTYPE(m.tnColor) <> 'N'
      ERROR 11	&& function argument
    ENDIF
    IF VARTYPE(m.tnWidth) == 'L'
      m.tnWidth = 1.0
    ENDIF
    IF VARTYPE(m.tnUnit) == 'L'
      m.tnUnit = 0
    ENDIF

    IF THIS.PEN <> 0
      THIS.DeletePen(THIS.PEN)
    ENDIF
    m.gdipen = 0
    m.lnARGB = makeargb(m.tncolor)
    THIS.STAT = GdipCreatePen1(m.lnARGB, m.tnWidth, m.tnUnit, @m.gdipen)
    THIS.PEN  = m.GdiPen
  ENDPROC

   PROCEDURE SetPenDash(tnDashStyle)
    IF PCOUNT() = 0 && Reset DashStyle to Solid
      m.tnDashStyle = 0
    ENDIF
    IF VARTYPE(m.tnDashStyle) <> 'N'
      ERROR 11	&& function argument
    ENDIF
    THIS.STAT = GdipSetPenDashStyle(THIS.PEN, m.tnDashStyle)
  ENDPROC

   PROCEDURE DeletePen(tnPen)
    THIS.STAT = GdipDeletePen(m.tnPen)
    THIS.PEN  = 0
  ENDPROC

  *!*	BRUSH FUNCTIONS

   PROCEDURE SetBrush(tnColor, tnAlpha)
    *:Global gdibrush
    IF PCOUNT() = 1
      STORE 255 TO m.tnAlpha && Opaque
    ENDIF
    IF VARTYPE(m.tnColor) != 'N' OR VARTYPE(m.tnColor) != 'N'
      ERROR 11	&& function argument
    ENDIF

    IF THIS.Brush <> 0
      THIS.DeleteBrush(THIS.Brush)
    ENDIF
    m.gdibrush = 0
    THIS.STAT  = GdipCreateSolidFill(makeARGB(m.tnColor, m.tnAlpha), @m.gdiBrush)
    THIS.Brush = m.GdiBrush
  ENDPROC

   PROCEDURE SetHatchBrush(tnHatchStyle, tnBackCol, tnBackAlpha, tnForeCol, tnForeAlpha)
    *:Global gdibrush
    IF VARTYPE(m.tnHatchStyle) + VARTYPE(m.tnBackCol) + VARTYPE(m.tnBackAlpha) <> "NNN"
      ERROR 11	&& function argument
    ENDIF

    IF VARTYPE(m.tnForeCol) = "L"
      m.tnForeCol = 0 && Black
    ENDIF

    IF VARTYPE(m.tnForeAlpha) = "L"
      m.tnBackCol = 255 && Opaque
    ENDIF

    IF THIS.Brush <> 0
      THIS.DeleteBrush(THIS.Brush)
    ENDIF
    m.gdibrush = 0
    THIS.STAT  = GdipCreateHatchBrush(m.tnHatchStyle, ;
        makeARGB(m.tnForeCol, m.tnForeAlpha), makeARGB(m.tnBackCol, m.tnBackAlpha), @m.gdiBrush)
    THIS.Brush = m.GdiBrush
  ENDPROC

   PROCEDURE SetTextureBrush(tcFileName, tnWrapMode)
    *:Global gdibrush
    IF NOT VARTYPE(m.tcFileName) $ "CN"
      ERROR 11 && function argument
    ENDIF

    IF VARTYPE(m.tnWrapMode) = "L"
      m.tnWrapMode = 0 && WrapModeTile - Default
    ENDIF

    LOCAL lnPasteImage
    IF VARTYPE(m.tcFileName) = "C"  && Image file to load
      m.lnPasteImage = 0
      THIS.STAT = GdipLoadImageFromFile(THIS.WideStr(m.tcFileName), @m.lnPasteImage)
    ELSE && Use other image handle
      m.lnPasteImage = m.tcFileName
    ENDIF
    IF THIS.Brush <> 0
      THIS.DeleteBrush(THIS.Brush)
    ENDIF
    m.gdibrush = 0

    THIS.STAT = GdipCreateTexture(m.lnPasteImage, m.tnWrapMode, @m.gdiBrush)
    IF m.lnPasteImage <> THIS.NativeImage
      THIS.STAT = GdipDisposeImage(m.lnPasteImage)
    ENDIF
    THIS.Brush = m.GdiBrush
  ENDPROC

   PROCEDURE DeleteBrush(tnBrush)
    THIS.STAT = GdipDeleteBrush(m.tnBrush)
    THIS.Brush = 0
  ENDPROC

  *!*	GRAPHICS FUNCTIONS

   PROCEDURE TranslateTransform(tndX, tndY)
    IF VARTYPE(m.tndX) + VARTYPE(m.tndY) <> 'NN'
      ERROR 11 && function argument
    ENDIF
    THIS.STAT = GdipTranslateWorldTransform(THIS.GetGraphics(), m.tndX, m.tndY, 0)
  ENDPROC

   PROCEDURE RotateTransform(tnAngle)
    IF VARTYPE(m.tnAngle) <> 'N'
      ERROR 11 && function argument
    ENDIF
    THIS.STAT = GdipRotateWorldTransform(THIS.getgraphics(), m.tnAngle, 0)
  ENDPROC

   PROCEDURE ResetTransform
    THIS.STAT = GdipResetWorldTransform(THIS.getGraphics())
  ENDPROC

  *!*	STRING FUNCTIONS

   PROCEDURE DrawString(tcText, tcFontName, tnSize, tcFontStyle, tlMeasure)
    LOCAL lnFontStyle
    IF !(VARTYPE(m.tcText) + VARTYPE(m.tcFontName) + VARTYPE(m.tnSize) + ;
          VARTYPE(m.tcFontStyle) + VARTYPE(m.tlMeasure) == 'CCNCL')
      ERROR 11	&& function argument
    ENDIF

    m.lnFontStyle = GDIPLUS_FontStyle_Regular && 0
    m.tcFontStyle = UPPER(m.tcFontStyle)
    IF "B" $ m.tcFontStyle
      m.lnFontStyle = m.lnFontStyle + GDIPLUS_FontStyle_Bold && 1
    ENDIF
    IF "I" $ m.tcFontStyle
      m.lnFontStyle = m.lnFontStyle + GDIPLUS_FontStyle_Italic && 2
    ENDIF
    IF "U" $ m.tcFontStyle
      m.lnFontStyle = m.lnFontStyle + GDIPLUS_FontStyle_Underline && 4
    ENDIF
    IF "S" $ m.tcFontStyle
      m.lnFontStyle = m.lnFontStyle + GDIPLUS_FontStyle_Strikeout && 8
    ENDIF

    LOCAL lnFontFamily, lnFont, lcText, lcFontName, lcRectangleF
    STORE 0 TO m.lnFontFamily, m.lnFont && handles for FontFamily & FontName

    m.lcText       = THIS.Widestr(m.tcText)
    m.lcFontName   = THIS.Widestr(m.tcFontName)
    m.lcRectangleF = THIS.Rectf

    THIS.STAT = GdipCreateFontFamilyFromName(m.lcFontName, 0, @m.lnFontFamily)
    THIS.STAT = GdipCreateFont(m.lnFontFamily, m.tnSize, m.lnFontStyle, 3, @m.lnFont)

    THIS.STAT = GdipDrawString(THIS.getgraphics(), m.lcText, LEN(m.tcText), m.lnFont, @m.lcRectangleF, THIS.nAlign, THIS.Brush)

    IF m.tlMeasure = .T. OR THIS.StringMeasure = .T.
      THIS.GetMeasures(m.lcText, m.lnFont)
    ENDIF

    *** Clearing Font Handles
    THIS.STAT = GdipDeleteFont(m.lnFont)
    THIS.STAT = GdipDeleteFontFamily(m.lnFontFamily)
  ENDPROC

   PROTECTED PROCEDURE GetMeasures(m.tcText, m.tnFontHandle)
    LOCAL lcBoundingBox, lnCodePointsFitted, lnLines, lcRectangleF
    LOCAL lnChars

    m.lcRectangleF = REPLICATE(CHR(0), 16)
    m.lcBoundingBox = REPLICATE(CHR(0), 16)
    m.lnChars = 0
    m.lnLines = 0

    THIS.STAT = GdipMeasureString(THIS.getgraphics(), m.tcText, -1, m.tnFontHandle, m.lcRectangleF, THIS.nAlign, @m.lcBoundingBox, @m.lnChars, @m.lnLines)

    THIS.GetRectfBounds(RIGHT(m.lcBoundingBox, 8))

    THIS.StringChars = m.lnChars
    THIS.StringLines = m.lnLines
  ENDPROC

   PROTECTED FUNCTION GetRectfBounds(m.tcBoxf)
    THIS.StringW = float2int(buf2dword(SUBSTR(m.tcBoxF, 1, 4)))
    THIS.StringH = float2int(buf2dword(SUBSTR(m.tcBoxF, 5, 4)))
  ENDFUNC

   PROCEDURE MeasureString(tcText, tcFontName, tnSize, tcFontStyle)
    LOCAL lcFontName, lcText, lnChars, lnFont, lnFontFamily, lnFontStyle
    IF !(VARTYPE(m.tcText) + VARTYPE(m.tcFontName) + VARTYPE(m.tnSize) + VARTYPE(m.tcFontStyle) == 'CCNC')
      ERROR 11	&& function argument
    ENDIF

    m.lnFontStyle = GDIPLUS_FontStyle_Regular && 0
    m.tcFontStyle = UPPER(m.tcFontStyle)
    IF "B" $ m.tcFontStyle
      m.lnFontStyle = m.lnFontStyle + GDIPLUS_FontStyle_Bold && 1
    ENDIF
    IF "I" $ m.tcFontStyle
      m.lnFontStyle = m.lnFontStyle + GDIPLUS_FontStyle_Italic && 2
    ENDIF
    IF "U" $ m.tcFontStyle
      m.lnFontStyle = m.lnFontStyle + GDIPLUS_FontStyle_Underline && 4
    ENDIF
    IF "S" $ m.tcFontStyle
      m.lnFontStyle = m.lnFontStyle + GDIPLUS_FontStyle_Strikeout && 8
    ENDIF

    LOCAL lnFontFamilyHandle, lnRectf, lnFontHandle
    STORE 0 TO m.lnFontFamily, m.lnFont && handles for FontFamily & FontName

    m.lcText     = THIS.Widestr(m.tcText)
    m.lcFontName = THIS.Widestr(m.tcFontName)
    m.lnRectf    = THIS.Rectf

    THIS.STAT = GdipCreateFontFamilyFromName(m.lcFontName, 0, @m.lnFontFamilyHandle)
    THIS.STAT = GdipCreateFont(m.lnFontFamilyHandle, m.tnSize, m.lnFontStyle, 3, @m.lnFontHandle)

    LOCAL lcBoundingBox, lnCodePointsFitted, lnLines, lcRectangleF

    m.lcRectangleF  = REPLICATE(CHR(0), 16)
    m.lcBoundingBox = REPLICATE(CHR(0), 16)
    m.lnChars = 0
    m.lnLines = 0

    THIS.STAT = GdipMeasureString(THIS.getgraphics(), m.lcText, -1, m.lnFontHandle, m.lcRectangleF, ;
        THIS.nAlign, @m.lcBoundingBox, @m.lnChars, @m.lnLines)

    THIS.GetRectfBounds(RIGHT(m.lcBoundingBox, 8))

    *** Clearing Font Handles
    THIS.STAT = GdipDeleteFont(m.lnFontHandle)
    THIS.STAT = GdipDeleteFontFamily(m.lnFontFamilyHandle)
  ENDPROC

   PROCEDURE SetRect(tnX, tnY, tnWidth, tnHeight)
    IF PCOUNT() = 2
      STORE 0 TO m.tnWidth, m.tnHeight
    ENDIF

    IF !(VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnWidth) + VARTYPE(m.tnHeight) == 'NNNN')
      ERROR 11	&& function argument
    ENDIF
    THIS.Rectf = rectf(m.tnX, m.tnY, m.tnWidth, m.tnHeight)
  ENDPROC

   PROCEDURE SetAlignment(thAlignment, tvAlignment, tFlags) && Horizontal - Vertical - Flags
    LOCAL lnFormatHandle
    IF PCOUNT() = 1
      STORE 0 TO m.tvAlignment, m.tFlags
    ENDIF
    IF PCOUNT() = 2
      STORE 0 TO m.tFlags
    ENDIF
    IF !(VARTYPE(m.thAlignment) + VARTYPE(m.tvAlignment) + VARTYPE(m.tFlags) == 'NNN')
      ERROR 11	&& function argument
    ENDIF
    m.lnFormatHandle = 0
    THIS.STAT = GdipCreateStringFormat(m.tFlags, 0, @m.lnFormatHandle )
    THIS.STAT = GdipSetStringFormatAlign(m.lnFormatHandle, m.thAlignment)
    THIS.STAT = GdipSetStringFormatLineAlign(m.lnFormatHandle, m.tvAlignment)
    THIS.nAlign = m.lnFormatHandle
  ENDPROC

  *!*	DRAWING SHAPES FUNCTIONS

   PROCEDURE DrawLine(tnX1, tnY1, tnX2, tnY2)
    IF VARTYPE(m.tnx1) + VARTYPE(m.tny1) + VARTYPE(m.tnx2) + VARTYPE(m.tny2) <> 'NNNN'
      ERROR 11	&& function argument
    ENDIF
    THIS.STAT = GdipDrawLine(THIS.getgraphics(), THIS.PEN, m.tnx1, m.tny1, m.tnx2, m.tny2)
  ENDPROC

   PROCEDURE DrawRect(tnX, tnY, tnWidth, tnHeight)
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnWidth) + VARTYPE(m.tnHeight) <> 'NNNN'
      ERROR 11	&& function argument
    ENDIF
    = GdipDrawRectangle(THIS.getgraphics(), THIS.PEN, m.tnX, m.tnY, m.tnWidth, m.tnHeight)
  ENDPROC

   PROCEDURE FillRect(tnX, tnY, tnWidth, tnHeight)
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnWidth) + VARTYPE(m.tnHeight) <> 'NNNN'
      ERROR 11	&& function argument
    ENDIF
    THIS.STAT = GdipFillRectangle(THIS.GetGraphics(), THIS.Brush, m.tnX, m.tnY, m.tnWidth, m.tnHeight)
  ENDPROC

   PROCEDURE DrawEllipse(tnX, tnY, tnW, tnH)
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnW) + VARTYPE(m.tnH) <> 'NNNN'
      ERROR 11 && function argument
    ENDIF
    THIS.STAT = GdipDrawEllipse(THIS.getGraphics(), THIS.PEN, m.tnX, m.tnY, m.tnW, m.tnH)
  ENDPROC

   PROCEDURE FillEllipse(tnX, tnY, tnW, tnH)
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnW) + VARTYPE(m.tnH) <> 'NNNN'
      ERROR 11 && function argument
    ENDIF
    THIS.STAT = GdipFillEllipse(THIS.getgraphics(), THIS.Brush, m.tnX, m.tnY, m.tnW, m.tnH)
  ENDPROC

   PROCEDURE DrawPie(tnX, tnY, tnw, tnh, tnStartAngle, tnSweepAngle)
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnW) + VARTYPE(m.tnH) + ;
        VARTYPE(m.tnStartAngle) + VARTYPE(m.tnSweepAngle) <> 'NNNNNN'
      ERROR 11 && function argument
    ENDIF
    THIS.STAT = GdipDrawPie(THIS.GetGraphics(), THIS.PEN, m.tnX, m.tnY, ;
        m.tnW, m.tnH, m.tnStartAngle, m.tnSweepAngle)
  ENDPROC

   PROCEDURE FillPie(tnX, tnY, tnw, tnh, tnStartAngle, tnSweepAngle)
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnW) + VARTYPE(m.tnH) + ;
        VARTYPE(m.tnStartAngle) + VARTYPE(m.tnSweepAngle) <> 'NNNNNN'
      ERROR 11 && function argument
    ENDIF
    THIS.STAT = GdipFillPie(THIS.GetGraphics(), THIS.Brush, m.tnX, m.tnY, ;
        m.tnW, m.tnH, m.tnStartAngle, m.tnSweepAngle)
  ENDPROC

   PROCEDURE DrawArc(tnX, tnY, tnw, tnh, tnStartAngle, tnSweepAngle)
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnW) + VARTYPE(m.tnH) + ;
        VARTYPE(m.tnStartAngle) + VARTYPE(m.tnSweepAngle) <> 'NNNNNN'
      ERROR 11 && function argument
    ENDIF
    THIS.STAT = GdipDrawArc(THIS.GetGraphics(), THIS.PEN, m.tnX, m.tnY, ;
        m.tnW, m.tnH, m.tnStartAngle, m.tnSweepAngle)
  ENDPROC

   PROCEDURE DrawPolygon(taPoints)
    LOCAL lcPoints
    m.lcPoints = MakePointsFSequence(@m.taPoints)
    THIS.STAT = GdipDrawPolygon(THIS.GetGraphics(), THIS.PEN, ;
        m.lcPoints, ALEN(m.taPoints, 1))
  ENDPROC

   PROCEDURE FillPolygon(taPoints)
    LOCAL lcPoints
    m.lcPoints = MakePointsFSequence(@m.taPoints)
    THIS.STAT = GdipFillPolygon( THIS.GetGraphics(), THIS.Brush, ;
        m.lcPoints, ALEN(m.taPoints, 1), 0 )
  ENDPROC

  *!*	DRAWING IMAGES FUNCTIONS

   PROCEDURE DrawImage(tcFileName, tnX, tnY, tnWidth, tnHeight)&&)
    IF PCOUNT() = 5 && Draw Image Scaled
      THIS.DrawImageScaled(m.tcFileName, m.tnX, m.tnY, m.tnWidth, m.tnHeight)
      RETURN
    ENDIF
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) <> 'NN' OR NOT VARTYPE(m.tcFileName) $ "CN"
      ERROR 11 && function argument
    ENDIF
    LOCAL lnPasteImage
    IF VARTYPE(m.tcFileName) = "C"  && Image file to load
      m.lnPasteImage = 0
      THIS.STAT = GdipLoadImageFromFile(THIS.WideStr(m.tcFileName), @m.lnPasteImage)
    ELSE && Use other image handle
      m.lnPasteImage = m.tcFileName
    ENDIF
    THIS.STAT = GdipDrawImage(THIS.getgraphics(), m.lnPasteImage, m.tnX, m.tnY)
    IF m.lnPasteImage <> THIS.NativeImage AND VARTYPE(m.tcFileName) = "C"  && Image file
      THIS.STAT = GdipDisposeImage(m.lnPasteImage)
    ENDIF
  ENDPROC

   PROCEDURE DrawImageScaled(tcFileName, tnX, tnY, tnWidth, tnHeight)
    LOCAL lnPasteImage
    IF VARTYPE(m.tnX) + VARTYPE(m.tnY) + VARTYPE(m.tnWidth) + VARTYPE(m.tnHeight) <> 'NNNN' ;
        OR NOT VARTYPE(m.tcFileName) $ "CN"
      ERROR 11 && function argument
    ENDIF
    IF VARTYPE(m.tcFileName) = "C"  && Image file to load
      m.lnPasteImage = 0
      THIS.STAT = GdipLoadImageFromFile(THIS.WideStr(m.tcFileName), @m.lnPasteImage)
    ELSE && Use other image handle
      m.lnPasteImage = m.tcFileName
    ENDIF
    THIS.STAT = GdipDrawImageRect(THIS.getgraphics(), m.lnPasteImage, m.tnX, m.tnY, m.tnWidth, m.tnHeight)
    IF m.lnPasteImage <> THIS.NativeImage AND VARTYPE(m.tcFileName) = "C"  && Image file
      THIS.STAT = GdipDisposeImage(m.lnPasteImage)
    ENDIF
  ENDPROC

   PROCEDURE DrawImageRectRect(tcFileName, ;
        dstx, dsty, dstwidth, dstheight, ;
        srcx, srcy, srcwidth, srcheight)

    *:Global SrcUnit
    IF VARTYPE(m.dstX) + VARTYPE(m.dstY) + VARTYPE(m.dstWidth) + VARTYPE(m.dstHeight) + ;
        VARTYPE(m.srcX) + VARTYPE(m.srcY) + VARTYPE(m.srcWidth) + VARTYPE(m.srcHeight) <> 'NNNNNNNN' ;
        OR NOT VARTYPE(m.tcFileName) $ "CN"
      ERROR 11 && function argument
    ENDIF

    LOCAL lnPasteImage, nScrUnit, imageattribs
    IF VARTYPE(m.tcFileName) = "C"  && Image file to load
      m.lnPasteImage = 0
      THIS.STAT = GdipLoadImageFromFile(THIS.WideStr(m.tcFileName), @m.lnPasteImage)
    ELSE && Use other image handle
      m.lnPasteImage = m.tcFileName
    ENDIF

    m.imageAttribs = THIS.ImgAttribs
    m.SrcUnit = 2 && GraphicsUnit:Pixel
    THIS.STAT = GdipDrawImageRectRect(THIS.GetGraphics(), m.lnPasteImage, ;
        m.dstx, m.dsty, m.dstwidth, m.dstheight, ;
        m.srcx, m.srcy, m.srcwidth, m.srcheight, ;
        m.srcUnit, m.imageAttribs, 0, 0)

    IF m.lnPasteImage <> THIS.NativeImage AND VARTYPE(m.tcFileName) = "C"  && Image file
      THIS.STAT = GdipDisposeImage(m.lnPasteImage)
    ENDIF

  ENDPROC

  *!*	IMAGE ATTRIBUTES

   PROCEDURE SetColorMatrix(taColMatrix)
    *!*	The enableFlag parameter in the flat function is a Boolean value
    *!*	that specifies whether a separate color adjustment is enabled for
    *!*	the category specified by the type parameter. SetColorMatrix sets
    *!*	enableFlag to TRUE, and ClearColorMatrix sets enableFlag to FALSE.

    *!*	The grayMatrix parameter specifies a matrix to be used for adjusting
    *!*	gray shades when the value of the flags parameter is ColorMatrixFlagsAltGray.

    LOCAL lcColorMatrix
    *:Global imageattr
    m.lcColorMatrix = MakeColorMatrix(@m.taColMatrix)
    IF THIS.ImgAttribs <> 0
      THIS.DisposeImageAttributes(THIS.ImgAttribs)
    ENDIF
    m.imageattr = 0
    THIS.STAT = GdipCreateImageAttributes(@m.imageattr)
    THIS.ImgAttribs = m.imageAttr

    THIS.STAT = GdipSetImageAttributesColorMatrix(m.ImageAttr, 0, 1, m.lcColorMatrix, 0, 0)
  ENDPROC

   PROCEDURE RemapTable(tnOldColor, tnNewColor, tnOldAlpha, tnNewAlpha)
    LOCAL argbOld, argbNew, lcColorMap, imageattr

    IF PCOUNT() = 1 AND VARTYPE(m.tnOldColor) = "N" && Array of Colors is expected
      m.lcColorMap = MakeColorMap(@m.tnOldColor)
    ELSE
      IF PCOUNT() = 2 && Ignore Alpha = 255 - opaque
        m.tnOldAlpha = 255
        m.tnNewAlpha = 255
      ENDIF
      IF VARTYPE(m.tnOldColor) + VARTYPE(m.tnNewColor) <> "NN"
        ERROR 11
      ENDIF

      m.argbOld = MakeARGB(m.tnOldColor, m.tnOldAlpha)
      m.argbNew = MakeARGB(m.tnNewColor, m.tnNewAlpha)
      m.lcColorMap = dword(m.argbOld) + dword(m.argbNew)
    ENDIF

    IF THIS.ImgAttribs <> 0
      THIS.DisposeImageAttributes(THIS.ImgAttribs)
    ENDIF

    m.imageattr = 0
    THIS.STAT = GdipCreateImageAttributes(@m.imageattr)
    THIS.ImgAttribs = m.imageAttr
    THIS.STAT = GdipSetImageAttributesRemapTable(m.imageattr, 0, 1, (LEN(m.lcColorMap) / 4), m.lcColorMap)
  ENDPROC

   PROCEDURE DisposeImageAttributes(tnImgAttributes)
    THIS.STAT = GdipDisposeImageAttributes(m.tnImgAttributes)
    THIS.ImgAttribs = 0
  ENDPROC

   PROCEDURE ResetImageAttributes(tnImgAttributes)
    THIS.STAT = GdipResetImageAttributes(m.tnImgAttributes, 0)
    THIS.ImgAttribs = 0
  ENDPROC

   PROCEDURE ChangeColors(tnRed, tnGreen, tnBlue, tnAlpha)
    IF PCOUNT() = 1
      IF VARTYPE(m.tnRed) <> "N"
        ERROR 11
      ENDIF
    ELSE
      IF (VARTYPE(m.tnRed) + VARTYPE(m.tnGreen) + VARTYPE(m.tnBlue) <> "NNN") ;
          OR (NOT VARTYPE(m.tnAlpha) $ "NL")
        ERROR 11
      ENDIF
    ENDIF

    IF VARTYPE(m.tnAlpha) = "L"
      m.tnAlpha = 0
    ENDIF

    LOCAL lnWidth, lnHeight
    m.lnWidth  = 0
    m.lnHeight = 0
    THIS.STAT = GdipGetImageWidth(THIS.NativeImage, @lm.nWidth)
    THIS.STAT = GdipGetImageHeight(THIS.NativeImage, @m.lnHeight)

    IF PCOUNT() = 1
      THIS.SetPredefColorMatrix(m.tnRed)
    ELSE
      THIS.SetPredefColorMatrix(m.tnRed, m.tnGreen, m.tnBlue, m.tnAlpha)
    ENDIF

    THIS.DrawImageRectRect(THIS.NativeImage, 0, 0, m.lnWidth, m.lnHeight, 0, 0, m.lnWidth, m.lnHeight)
  ENDPROC

   PROCEDURE SetPredefColorMatrix(tnRed, tnGreen, tnBlue, tnAlpha)
    *!*	Great information about COLOR MATRICES can be found at
    *!*	http://www.bobpowell.net/
    *!*	There I found all information I needed about COLOR MATRICES

    LOCAL lnSa, lnSb, lnSg, lnSr
    *:Global taBW[1], taCustom[1], taNegative[1]
    IF PCOUNT() = 1 && Predefined

      IF m.tnRed = 1 && BW
        *!*	BLACK AND WHITE IMAGE
        DIMENSION taBW(5, 5)
        m.taBW(1, 1) = 0.299
        m.taBW(1, 2) = 0.299
        m.taBW(1, 3) = 0.299
        m.taBW(1, 4) = 0
        m.taBW(1, 5) = 0

        m.taBW(2, 1) = 0.587
        m.taBW(2, 2) = 0.587
        m.taBW(2, 3) = 0.587
        m.taBW(2, 4) = 0
        m.taBW(2, 5) = 0

        m.taBW(3, 1) = 0.114
        m.taBW(3, 2) = 0.114
        m.taBW(3, 3) = 0.114
        m.taBW(3, 4) = 0
        m.taBW(3, 5) = 0

        m.taBW(4, 1) = 0
        m.taBW(4, 2) = 0
        m.taBW(4, 3) = 0
        m.taBW(4, 4) = 1
        m.taBW(4, 5) = 0

        m.taBW(5, 1) = 0
        m.taBW(5, 2) = 0
        m.taBW(5, 3) = 0
        m.taBW(5, 4) = 0
        m.taBW(5, 5) = 1
        THIS.SetColorMatrix(@m.taBW)
      ENDIF

      IF m.tnRed = 2 && Negative
        *!*	NEGATIVE IMAGE
        DIMENSION taNegative(5, 5)
        m.taNegative(1, 1) = -1
        m.taNegative(1, 2) = 0
        m.taNegative(1, 3) = 0
        m.taNegative(1, 4) = 0
        m.taNegative(1, 5) = 0

        m.taNegative(2, 1) = 0
        m.taNegative(2, 2) = -1
        m.taNegative(2, 3) = 0
        m.taNegative(2, 4) = 0
        m.taNegative(2, 5) = 0

        m.taNegative(3, 1) = 0
        m.taNegative(3, 2) = 0
        m.taNegative(3, 3) = -1
        m.taNegative(3, 4) = 0
        m.taNegative(3, 5) = 0

        m.taNegative(4, 1) = 0
        m.taNegative(4, 2) = 0
        m.taNegative(4, 3) = 0
        m.taNegative(4, 4) = 1
        m.taNegative(4, 5) = 0

        m.taNegative(5, 1) = 0
        m.taNegative(5, 2) = 0
        m.taNegative(5, 3) = 0
        m.taNegative(5, 4) = 0
        m.taNegative(5, 5) = 1
        THIS.SetColorMatrix(@m.taNegative)
      ENDIF

    ELSE

      *!*	CHANGE COLORS
      m.lnSr = m.tnRed / 100
      m.lnSg = m.tnGreen / 100
      m.lnSb = m.tnBlue / 100
      m.lnSa = m.tnAlpha / 100

      ** create the color matrix
      DIMENSION taCustom(5, 5)
      m.taCustom(1, 1) = 1
      m.taCustom(1, 2) = 0
      m.taCustom(1, 3) = 0
      m.taCustom(1, 4) = 0
      m.taCustom(1, 5) = 0

      m.taCustom(2, 1) = 0
      m.taCustom(2, 2) = 1
      m.taCustom(2, 3) = 0
      m.taCustom(2, 4) = 0
      m.taCustom(2, 5) = 0

      m.taCustom(3, 1) = 0
      m.taCustom(3, 2) = 0
      m.taCustom(3, 3) = 1
      m.taCustom(3, 4) = 0
      m.taCustom(3, 5) = 0

      m.taCustom(4, 1) = 0
      m.taCustom(4, 2) = 0
      m.taCustom(4, 3) = 0
      m.taCustom(4, 4) = 1
      m.taCustom(4, 5) = 0

      m.taCustom(5, 1) = m.lnSr
      m.taCustom(5, 2) = m.lnSg
      m.taCustom(5, 3) = m.lnSb
      m.taCustom(5, 4) = m.lnSa
      m.taCustom(5, 5) = 1
      THIS.SetColorMatrix(@m.taCustom)
    ENDIF
  ENDPROC

   PROCEDURE CreateFromGraphics(tnGraphics)
    LOCAL lnHeight
    DECLARE INTEGER GdipGetClipBounds IN GDIPLUS.DLL ;
      INTEGER nGraphics, STRING @ pRectF
    LOCAL lcRectF, nImage, lnWidth, lnHeigth
    m.lcRectF = REPLICATE(CHR(0), 16)
    THIS.STAT = GdipGetClipBounds (m.tnGraphics, @m.lcRectF )
    m.lnWidth = float2int(buf2dword(SUBSTR(m.lcRectF, 9, 4)))
    m.lnHeight = float2int(buf2dword(SUBSTR(m.lcRectF, 13, 4)))
    DECLARE INTEGER GdipCreateBitmapFromGraphics IN GDIPLUS.DLL ;
      INTEGER nWidth, INTEGER nHeight, INTEGER nGraphics, INTEGER @ nImage
    *!*	this.Destroy()
    m.nImage = 0
    THIS.STAT = GdipCreateBitmapFromGraphics(m.lnWidth, m.lnHeight, m.tnGraphics, @m.nImage)
  ENDPROC

   FUNCTION GetImage
    RETURN THIS.NativeImage
  ENDFUNC

   FUNCTION GetGraphics
    RETURN THIS.nativeGraphics
  ENDFUNC

   PROTECTED FUNCTION WideStr(m.tcStr)
    #IF VERSION(5) >= 700
      RETURN STRCONV(m.tcStr + CHR(0), 5)
    #ELSE
      LOCAL lnLen, lcWideStr
      m.lnLen = 2 * (LEN(m.tcStr) + 1)
      m.lcWideStr = REPLICATE(CHR(0), m.lnLen)
      MultiByteToWideChar(0, 0, @m.tcStr, LEN(m.tcStr), @m.lcWideStr, m.lnLen)
      RETURN m.lcWideStr
    #ENDIF
  ENDFUNC

  *!*	FUNCTIONS TO DEVELOP

   PROCEDURE FillRegion
    *!*			DECLARE INTEGER GdipCreateRegion IN GdiPlus.dll ;
    *!*				INTEGER @GpRegion
    *!*			This.Stat = GdipCreateRegion(@region)
    LOCAL REGION

    DECLARE INTEGER GdipCreateRegionRect IN GDIPLUS.DLL ;
      STRING cLayoutRect, INTEGER @GpRegion

    DECLARE INTEGER GdipFillRegion IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER nBrush, INTEGER GpRegion

    m.REGION = 0
    THIS.STAT = GdipCreateRegionRect(THIS.RectF, @m.REGION)
    THIS.STAT = GdipFillRegion(THIS.GetGraphics(), THIS.Brush, m.REGION)
  ENDPROC

   PROCEDURE FillPath
    *:Global nPath
    DECLARE INTEGER GdipCreatePath IN GDIPLUS.DLL ;
      INTEGER PathMode, INTEGER @GpRegion
    m.nPath = 0
    THIS.STAT = GdipCreatePath(1, @m.nPath)

    DECLARE INTEGER GdipFillPath IN GDIPLUS.DLL ;
      INTEGER graphics, INTEGER nBrush, INTEGER nPath
    THIS.STAT = GdipFillPath(THIS.GetGraphics(), THIS.Brush, m.nPath)
  ENDPROC

 ENDDEFINE


***********************************************************************
*   Class:	EncoderParameter
***********************************************************************

DEFINE CLASS EncoderParameter AS CUSTOM
  *	class EncoderParameter
  *	{
  *	public:
  *		GUID    Guid;				// GUID of the parameter
  *		ULONG   NumberOfValues;		// Number of the parameter values
  *		ULONG   Type;				// Value type, like ValueTypeLONG  etc.
  *		VOID*   Value;				// A pointer to the parameter values
  *	}

  PROTECTED ValuePtr
  PROTECTED EncoderParam

   PROCEDURE INIT(tcGuid, tnValue)
    IF (VARTYPE(m.tcGuid) != 'C') OR (VARTYPE(m.tnValue) != 'N')
      ERROR 11
    ENDIF

    THIS.ValuePtr = LocalAlloc(LPTR, 4)
    IF THIS.ValuePtr = 0
      ERROR 1149
    ENDIF
    *		Sys(2600, This.ValuePtr, 4, DWord(lnValue))
    DECLARE RtlMoveMemory IN Win32API AS RtlCopyData ;
      LONG DestNum, LONG @ pVoidSource, INTEGER nLength
    RtlCopyData(THIS.ValuePtr, m.tnValue, 4)

    THIS.EncoderParam = m.tcGuid + DWord(1) + DWord(4)
    THIS.EncoderParam = THIS.EncoderParam + DWord(THIS.ValuePtr)
  ENDFUNC

   PROCEDURE DESTROY
    LocalFree(THIS.ValuePtr)
  ENDFUNC

   FUNCTION GetString
    RETURN THIS.EncoderParam
  ENDFUNC

 ENDDEFINE

***********************************************************************
* Global functions
***********************************************************************

FUNCTION DWord(tnValue)
  * Creates a DWORD (unsigned 32-bit) 4 byte STRING from a number
  LOCAL laByte(4)
  IF m.tnValue < 0
    m.tnValue = m.tnValue + 4294967296
  ENDIF
  m.laByte(1) = m.tnValue % 256
  m.laByte(2) = BITRSHIFT(m.tnValue, 8) % 256
  m.laByte(3) = BITRSHIFT(m.tnValue, 16) % 256
  m.laByte(4) = BITRSHIFT(m.tnValue, 24) % 256
  RETURN CHR(m.laByte(1)) + CHR(m.laByte(2)) + CHR(m.laByte(3)) + CHR(m.laByte(4))
ENDFUNC

 FUNCTION ErrorInfo(tnStatus)
  DO CASE
    CASE m.tnStatus = 0
      RETURN "Ok"
    CASE m.tnStatus = 1
      RETURN "Generic Error"
    CASE m.tnStatus = 2
      RETURN "Invalid Parameter"
    CASE m.tnStatus = 3
      RETURN "Out Of Memory"
    CASE m.tnStatus = 4
      RETURN "Object Busy"
    CASE m.tnStatus = 5
      RETURN "Insufficient Buffer"
    CASE m.tnStatus = 6
      RETURN "Not Implemented"
    CASE m.tnStatus = 7
      RETURN "Win32 Error"
    CASE m.tnStatus = 8
      RETURN "Wrong State"
    CASE m.tnStatus = 9
      RETURN "Aborted"
    CASE m.tnStatus = 10
      RETURN "File Not Found"
    CASE m.tnStatus = 11
      RETURN "Value Overflow"
    CASE m.tnStatus = 12
      RETURN "Access Denied"
    CASE m.tnStatus = 13
      RETURN "Unknown Image Format"
    CASE m.tnStatus = 14
      RETURN "Font Family Not Found"
    CASE m.tnStatus = 15
      RETURN "Font Style Not Found"
    CASE m.tnStatus = 16
      RETURN "Not True Type Font"
    CASE m.tnStatus = 17
      RETURN "Unsupported Gdiplus Version"
    CASE m.tnStatus = 18
      RETURN "Gdiplus Not Initialized"
    CASE m.tnStatus = 19
      RETURN "Property Not Found"
    CASE m.tnStatus = 20
      RETURN "Property Not Supported"
    OTHERWISE
      RETURN "Unknown Error"
  ENDCASE
ENDFUNC

***
*** Functions added
***

 FUNCTION POINTF(tnX, tnY) && adapted from RECTF found in www.news2news.com
  RETURN dword(Int2Float(m.tnX)) + dword(Int2Float(m.tnY))
ENDFUNC

 FUNCTION RECTF(tnX, tnY, tnWIDTH, tnHEIGHT) && found in www.news2news.com
  RETURN dword(Int2Float(m.tnX)) + dword(Int2Float(m.tnY)) + ;
    dword(Int2Float(m.tnWIDTH)) + dword(Int2Float(m.tnHEIGHT))
ENDFUNC

 FUNCTION Int2Float(tnNum) && By Anatoly Mogylevets - found in www.fox.wikis.com
  * converts FoxPro numeric to 32-bit float form
  #DEFINE REAL_BIAS 127
  #DEFINE REAL_MANTISSA_SIZE 23
  #DEFINE REAL_NEGATIVE 0x80000000
  #DEFINE EXPONENT_MASK 0x7F800000
  #DEFINE MANTISSA_MASK 0x7FFFFF
  LOCAL Sgn, Exponent, Mantissa
  DO CASE
    CASE m.tnNum < 0
      m.Sgn = REAL_NEGATIVE
      m.tnNum = - m.tnNum
    CASE m.tnNum > 0
      m.Sgn = 0
    OTHERWISE
      RETURN 0
  ENDCASE
  m.Exponent = FLOOR(LOG(m.tnNum) / LOG(2))
  m.Mantissa = (m.tnNum - 2^m.Exponent) * 2^(REAL_MANTISSA_SIZE - m.Exponent)
  m.Exponent = BITLSHIFT(m.Exponent + REAL_BIAS, REAL_MANTISSA_SIZE)

  RETURN BITOR(BITOR(m.Sgn, m.Exponent), m.Mantissa)
  *  RETURN BITOR(m.Sgn, m.Exponent, m.Mantissa)
ENDFUNC

 FUNCTION MAKEARGB(tnColor, tnAlpha)  && Alexander GolovLev
  LOCAL argb, red, green, blue
  m.blue = BITRSHIFT(BITAND(m.tnColor, 0x00FF0000), 16)
  m.green = BITRSHIFT(BITAND(m.tnColor, 0x0000FF00), 8)
  m.red = BITAND(m.tnColor, 0x000000FF)
  m.argb = m.blue + BITLSHIFT(m.green, 8) + BITLSHIFT(m.red, 16)
  IF VARTYPE(m.tnAlpha) = 'N'
    m.argb = m.argb + BITLSHIFT(BITAND(m.tnAlpha, 0xFF), 24)
  ELSE
    m.argb = m.argb + BITLSHIFT(255, 24)
  ENDIF
  RETURN m.ARGB
ENDFUNC

 FUNCTION GetRed(tnColor)
  RETURN BITAND(m.tnColor, 0x000000FF)
ENDFUNC

 FUNCTION GetGreen(tnColor)
  RETURN BITRSHIFT(BITAND(m.tnColor, 0x0000FF00), 8)
ENDFUNC

 FUNCTION GetBlue(tnColor)
  RETURN BITRSHIFT(BITAND(m.tnColor, 0x00FF0000), 16)
ENDFUNC

 FUNCTION Float2Int(tnNum) && By Anatoly Mogylevets - found in www.fox.wikis.com
  * converts 32-bit float form to FoxPro numeric
  LOCAL Sgn, Exponent, Mantissa
  m.Sgn = IIF(BITTEST(m.tnNum, 31), -1, 1)
  m.Exponent = BITRSHIFT(BITAND(m.tnNum, EXPONENT_MASK), REAL_MANTISSA_SIZE) - REAL_BIAS
  m.Mantissa = BITAND(m.tnNum, MANTISSA_MASK) / 2 ^ (REAL_MANTISSA_SIZE - m.Exponent)
  RETURN (2 ^ m.Exponent + m.Mantissa) * m.Sgn

 FUNCTION buf2dword(tcBuffer)  && found in www.fox.wikis.com
  RETURN ASC(SUBSTR(m.tcBuffer, 1, 1)) + ;
    ASC(SUBSTR(m.tcBuffer, 2, 1)) * 256 + ;
    ASC(SUBSTR(m.tcBuffer, 3, 1)) * 65536 + ;
    ASC(SUBSTR(m.tcBuffer, 4, 1)) * 16777216
ENDFUNC

 FUNCTION MakePointsFSequence(taIntPoints)
  *** Creates a String containing all PointsF of the received array
  EXTERNAL ARRAY taIntPoints
  LOCAL lcPointsFSequence, lcPointF, ln
  m.lcPointsFSequence = ""
  FOR m.ln = 1 TO ALEN(m.taIntPoints, 1)
    m.lcPointF = PointF(m.taIntPoints(m.ln, 1), m.taIntPoints(m.ln, 2))
    m.lcPointsFSequence = m.lcPointsFSequence + m.lcPointF
  ENDFOR
  RETURN m.lcPointsFSequence
ENDFUNC

 FUNCTION MakeColorMatrix(taColMatrix)
  *** Creates a String containing ColorMatrix from the 5x5 received array
  LOCAL lcMatrix
  EXTERNAL ARRAY taColMatrix
  LOCAL lcColorMatrix, lnRow, lnCol
  m.lcMatrix = ""
  FOR m.lnRow = 1 TO 5
    FOR m.lnCol = 1 TO 5
      m.lcMatrix = m.lcMatrix + dword(Int2Float(m.taColMatrix(m.lnRow, m.lnCol)))
    ENDFOR
  ENDFOR
  RETURN m.lcMatrix
ENDFUNC

 FUNCTION MakeColorMap(taColorMap)
  *** Creates a String containing ColorMapt from the 4 column Array
  EXTERNAL ARRAY taColorMatrix
  LOCAL lcColorMap, ln, lnArgbOld, lnArgbNew
  m.lcColorMap = ""
  *!*		FOR m.ln = 1 TO ALEN(m.taColorMap,1)
  *!*			m.lnargbOld = MakeARGB(m.taColorMap(m.ln,1), m.taColorMap(m.ln,3))
  *!*			m.lnargbNew = MakeARGB(m.taColorMap(m.ln,2), m.taColorMap(m.ln,4))
  *!*			m.lcColorMap = m.lcColorMap + dword(m.lnargbOld) + dword(m.lnargbNew)
  *!*		ENDFOR
  RETURN m.lcColorMap
ENDFUNC

*************************************************************************
  