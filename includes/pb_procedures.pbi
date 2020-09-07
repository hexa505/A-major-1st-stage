Procedure.s GetImage(Position = 0)
  Folder.s = Space(#MAX_PATH)
  SHGetFolderPath_(#Null, #CSIDL_MYPICTURES, 0, 0, Folder)
  PathAddBackslash_(Folder)
  Pattern.s = "All Images (*.*)|*.bmp;*.dib;*.jpeg;*.jpg;*.jpe;*.png;*.tiff;*.tif|Windows Bitmaps (*.bmp)|*.bmp;*.dib|JPEG Files (*.jpg)|*.jpeg;*.jpg;*.jpe|Portable Network Graphics (*.png)|*.png|TIFF Files (*.tiff)|*.tiff;*.tif"
  ProcedureReturn OpenFileRequester("Choose an image file", Folder, Pattern, Position)
EndProcedure

Procedure.s SaveFile(Position = 0)
  Folder.s = Space(#MAX_PATH)
  SHGetFolderPath_(#Null, #CSIDL_MYPICTURES, 0, 0, Folder)
  PathAddBackslash_(Folder)
  Pattern.s = "JPEG Files (*.jpeg;*.jpg;*.jpe)|*.jpeg;*.jpg;*.jpe|Portable Network Graphics (*.png)|*.png|Binary Files (*.ppm;*.pgm;*.pbm)|*.ppm;*.pgm;*.pbm"
  ProcedureReturn SaveFileRequester("Enter a file name", Folder, Pattern, Position)
EndProcedure

ProcedureC GetDBImage(dbName.s)
  UseSQLiteDatabase()

  If OpenDatabase(0, "database/opencv.sqlite", "", "")
    If DatabaseQuery(0, "SELECT * FROM images WHERE name = '" + dbName + "';")
      If FirstDatabaseRow(0)
        imageSize = DatabaseColumnSize(0, 1)
        *buffer = AllocateMemory(imageSize)

        If *buffer
          Select Right(GetDatabaseString(0, 0), 4)
            Case ".jpg"
              UseJPEGImageDecoder()
            Case ".png"
              UsePNGImageDecoder()
          EndSelect
          GetDatabaseBlob(0, 1, *buffer, imageSize)
          pbimage = CatchImage(#PB_Any, *buffer, imageSize)
          FreeMemory(*buffer)

          If pbimage
            UseJPEGImageEncoder()
            *buffer = EncodeImage(pbimage, #PB_ImagePlugin_JPEG)
            *mat.CvMat = cvCreateMatHeader(ImageHeight(pbimage), ImageWidth(pbimage), CV_MAKETYPE(#CV_32F, 1))
            cvSetData(*mat, *buffer, #CV_AUTOSTEP)
            *image.IplImage = cvDecodeImage(*mat, #CV_LOAD_IMAGE_COLOR)
            FreeMemory(*buffer)
            FreeImage(pbimage)
          EndIf
        EndIf
      EndIf
      FinishDatabaseQuery(0)
    EndIf
    CloseDatabase(0)
  EndIf
  ProcedureReturn *image
EndProcedure

ProcedureC.s ImportImage(*image.IplImage, name.s, extension.s = ".jpg")
  UseSQLiteDatabase()

  If FileSize("database/opencv.sqlite") = -1
    If FileSize("database") <> -2 : CreateDirectory("database") : EndIf
    If CreateFile(0, "database/opencv.sqlite") : CloseFile(0) : EndIf
  EndIf

  If OpenDatabase(0, "database/opencv.sqlite", "", "")
    DatabaseUpdate(0, "CREATE TABLE images (name VARCHAR(255), image BLOB);")
    params.SAVE_INFO

    Select LCase(extension)
      Case ".png"
        UsePNGImageDecoder()
        params\paramId = #CV_IMWRITE_PNG_COMPRESSION
        params\paramValue = 3
      Case ".ppm"
        params\paramId = #CV_IMWRITE_PXM_BINARY
        params\paramValue = 1
      Default
        UseJPEGImageDecoder()
        params\paramId = #CV_IMWRITE_JPEG_QUALITY
        params\paramValue = 95
    EndSelect
    *mat.CvMat = cvEncodeImage(extension, *image, @params)
    pbimage = CatchImage(#PB_Any, *mat\ptr)

    If IsImage(pbimage)
      Select LCase(extension)
        Case ".jpg"
          UseJPEGImageEncoder()
          *buffer = EncodeImage(pbimage, #PB_ImagePlugin_JPEG)
        Case ".png"
          UsePNGImageEncoder()
          *buffer = EncodeImage(pbimage, #PB_ImagePlugin_PNG)
        Case ".ppm"
          *buffer = EncodeImage(pbimage)
      EndSelect
      LocalTime.SYSTEMTIME
      GetLocalTime_(LocalTime)
      dateTime.s = Right("0" + Str(LocalTime\wMonth), 2) + "_" + Right("0" + Str(LocalTime\wDay), 2) + "_" + Str(LocalTime\wYear) + "_" + Right("0" + Str(LocalTime\wHour), 2) + "_" + Right("0" + Str(LocalTime\wMinute), 2) + "_" + Right("0" + Str(LocalTime\wSecond), 2) + "_" + Right("00" + Str(LocalTime\wMilliseconds), 3)
      name + "_" + dateTime + extension
      length = MemorySize(*buffer)
      SetDatabaseBlob(0, 0, *buffer, length)
      DatabaseUpdate(0, "INSERT INTO images (name, image) VALUES ('" + name + "', ?);")
      FreeImage(pbimage)
    EndIf
    CloseDatabase(0)
  EndIf
  ProcedureReturn name
EndProcedure

Procedure BringToTop(hWnd)
  ForeThread = GetWindowThreadProcessId_(GetForegroundWindow_(), #Null)
  AppThread = GetCurrentThreadId_()

  If ForeThread <> AppThread
    AttachThreadInput_(ForeThread, AppThread, #True)
    BringWindowToTop_(hWnd)
    ShowWindow_(hWnd, #SW_SHOW)
    AttachThreadInput_(ForeThread, AppThread, #False)
  Else
    BringWindowToTop_(hWnd)
    ShowWindow_(hWnd, #SW_SHOW)
  EndIf
EndProcedure

Procedure ToolTip(hWnd, Msg.s)
  hToolTip = CreateWindowEx_(0, "Tooltips_Class32", "", #TTS_BALLOON, 0, 0, 0, 0, 0, 0, GetModuleHandle_(0), 0)
  ti.TOOLINFO\cbSize = SizeOf(TOOLINFO)
  ti\uFlags = #TTF_IDISHWND | #TTF_SUBCLASS
  ti\uId = hWnd
  ti\lpszText = @Msg
  SendMessage_(hToolTip, #TTM_ADDTOOL, 0, ti)
  SendMessage_(hToolTip, #TTM_SETMAXTIPWIDTH, 0, 200)
  SendMessage_(hToolTip, #TTM_SETDELAYTIME, #TTDT_AUTOPOP, 10000)
EndProcedure

Procedure.s GetFOURCC(fourcc)
  ProcedureReturn UCase(Chr(fourcc & $FF)) + UCase(Chr((fourcc & $FF00) >> 8)) + UCase(Chr((fourcc & $FF0000) >> 16)) + UCase(Chr((fourcc & $FF000000) >> 24))
EndProcedure

Procedure.q UnsignedLong(value)
  Define Result.q

  If value < 0 : Result = value + 4294967295 + 1 : Else : Result = value : EndIf

  ProcedureReturn Result
EndProcedure

ProcedureC.q cvRNG(seed.q)
  Global rng.q

  If seed < -1 : seed + 9223372036854775807 + 1 : EndIf
  If seed : rng = seed : Else : rng = -1 : EndIf

  ProcedureReturn rng
EndProcedure

ProcedureC cvRandInt(temp.q)
  If temp < 0 : temp + 9223372036854775807 + 1 : EndIf

  temp * #CV_RNG_COEFF + (temp >> 32)

  If temp < 0 : temp + 9223372036854775807 + 1 : EndIf

  rng = temp
  ProcedureReturn temp
EndProcedure

ProcedureC.d cvRandReal(rng.q)
  ProcedureReturn cvRandInt(rng) * Pow(2, -32)
EndProcedure

ProcedureC cvScalar(val0.d, val1.d = 0, val2.d = 0, val3.d = 0)
  *scalar.CvScalar = AllocateMemory(SizeOf(CvScalar))
  *scalar\val[0] = val0
  *scalar\val[1] = val1
  *scalar\val[2] = val2
  *scalar\val[3] = val3
  ProcedureReturn *scalar
EndProcedure

ProcedureC cvRealScalar(val0.d)
  *scalar.CvScalar = AllocateMemory(SizeOf(CvScalar))
  *scalar\Val[0] = val0
  *scalar\Val[1] = 0
  *scalar\Val[2] = 0
  *scalar\Val[3] = 0
  ProcedureReturn *scalar
EndProcedure

ProcedureC cvScalarAll(val0123.d)
  *scalar.CvScalar = AllocateMemory(SizeOf(CvScalar))
  *scalar\val[0] = val0123
  *scalar\val[1] = val0123
  *scalar\val[2] = val0123
  *scalar\val[3] = val0123
  ProcedureReturn *scalar
EndProcedure

ProcedureC cvMat(rows, cols, type, *data)
  *m.CvMat = AllocateMemory(SizeOf(CvMat))

  If CV_MAT_DEPTH(type) <= #CV_64F
    type = CV_MAT_TYPE(type)
    *m\type = #CV_MAT_MAGIC_VAL | #CV_MAT_CONT_FLAG | type
    *m\cols = cols
    *m\rows = rows
    *m\Step = *m\cols * CV_ELEM_SIZE(type)
    *m\ptr = *data
    *m\refcount = #Null
    *m\hdr_refcount = 0
    ProcedureReturn *m
  EndIf
EndProcedure

ProcedureC.d cvmGet(*mat.CvMat, row, col)
  If row < *mat\rows And col < *mat\cols
    type = CV_MAT_TYPE(*mat\type)

    If type = CV_MAKETYPE(#CV_32F, 1)
      ProcedureReturn PeekF(@*mat\fl\f + row * *mat\Step + col * 4)
    Else
      If type = CV_MAKETYPE(#CV_64F, 1) : ProcedureReturn PeekD(@*mat\db\d + row * *mat\Step + col * 8) : EndIf
    EndIf
  EndIf
EndProcedure

ProcedureC cvmSet(*mat.CvMat, row, col, value.d)
  If row < *mat\rows And col < *mat\cols
    type = CV_MAT_TYPE(*mat\type)

    If type = CV_MAKETYPE(#CV_32F, 1)
      PokeF(@*mat\fl\f + row * *mat\Step + col * 4, value)
    Else
      If type = CV_MAKETYPE(#CV_64F, 1) : PokeD(@*mat\db\d + row * *mat\Step + col * 8, value) : EndIf
    EndIf
  EndIf
EndProcedure

ProcedureC cvFloor(value.d)
  i = Round(value, #PB_Round_Nearest)
  diff.f = value - i
  ProcedureReturn i - Bool(diff < 0)
EndProcedure

ProcedureC cvCeil(value.d)
  i = Round(value, #PB_Round_Nearest)
  diff.f = i - value
  ProcedureReturn i + Bool(diff < 0)
EndProcedure
; IDE Options = PureBasic 5.31 (Windows - x64)
; CursorPosition = 7
; Folding = ----
; DisableDebugger