Macro CV_FOURCC(c1, c2, c3, c4)
  (Asc(c1) & 255) + ((Asc(c2) & 255) << 8) + ((Asc(c3) & 255) << 16) + ((Asc(c4) & 255) << 24)
EndMacro

Macro CV_IABS(a)
  Abs(a)
EndMacro

Macro CV_SWAP(a, b, t)
  t = a
  a = b
  b = t
EndMacro

Macro CV_MIN(a, b)
  If a > b : a = b : EndIf
EndMacro

Macro CV_MAX(a, b)
  If a < b : a = b : EndIf
EndMacro

Macro CV_IMAGE_ELEM(image, row, col)
  image\imageData\b + image\widthStep * row + col
EndMacro

Macro CV_MAT_ELEM_PTR_FAST(mat, row, col, pix_size, result)
  If row < mat\rows And col < mat\cols : result = mat\ptr + mat\Step * row + pix_size * col : EndIf
EndMacro

Macro CV_MAT_ELEM(mat, elemtype, row, col, result)
  CV_MAT_ELEM_PTR_FAST(mat, row, col, SizeOf(elemtype), result)
EndMacro

Macro CV_MAT_CN(flags)
  ((flags & #CV_MAT_CN_MASK) >> #CV_CN_SHIFT) + 1
EndMacro

Macro CV_MAT_DEPTH(flags)
  flags & #CV_MAT_DEPTH_MASK
EndMacro

Macro CV_ELEM_SIZE(type)
  CV_MAT_CN(type) << ((((SizeOf(LONG) / 4 + 1) * 16384 | $3a50) >> CV_MAT_DEPTH(type) * 2) & 3)
EndMacro

Macro CV_MAT_TYPE(flags)
  flags & #CV_MAT_TYPE_MASK
EndMacro

Macro CV_MAKETYPE(depth, cn)
  CV_MAT_DEPTH(depth) + ((cn - 1) << #CV_CN_SHIFT)
EndMacro

Macro CV_RGB(r, g, b)
  b + (g << 8) + (r << 16)
EndMacro

Macro CV_IS_HAAR_CLASSIFIER(haar)
  Bool(haar <> #Null) & Bool((haar\flags & #CV_MAGIC_MASK) = #CV_HAAR_MAGIC_VAL)
EndMacro

Macro CV_IS_STORAGE(signature)
  Bool(signature <> #Null) & Bool((signature & #CV_MAGIC_MASK) = #CV_STORAGE_MAGIC_VAL)
EndMacro

Macro CV_IS_FILE_STORAGE(fs)
  Bool(fs <> 0) & Bool(fs\flags = #CV_FILE_STORAGE)
EndMacro

Macro CV_IS_SEQ(seq)
  Bool(seq <> #Null) & Bool((seq & #CV_MAGIC_MASK) = #CV_SEQ_MAGIC_VAL)
EndMacro

Macro CV_IS_SET(set)
  Bool(set <> #Null) & Bool((set & #CV_MAGIC_MASK) = #CV_SET_MAGIC_VAL)
EndMacro

Macro CV_IS_SET_ELEM(ptr)
  ptr\flags >= 0
EndMacro

Macro CV_PREV_SEQ_ELEM(elem_size, reader)
  reader\ptr - elem_size

  If reader\ptr < reader\block_max : cvChangeSeqBlock(@reader, -1) : EndIf

EndMacro

Macro CV_NEXT_SEQ_ELEM(elem_size, reader)
  reader\ptr + elem_size

  If reader\ptr >= reader\block_max : cvChangeSeqBlock(@reader, 1) : EndIf

EndMacro

Macro CV_REV_READ_SEQ_ELEM(elem, size, reader)
  reader\seq\elem_size = size
  CopyMemory(reader\ptr, elem, size)
  CV_PREV_SEQ_ELEM(size, reader)
EndMacro

Macro CV_READ_SEQ_ELEM(elem, size, reader)
  reader\seq\elem_size = size
  CopyMemory(reader\ptr, elem, size)
  CV_NEXT_SEQ_ELEM(size, reader)
EndMacro

Macro CV_SEQ_ELEM(seq, elem_type, index, result)  
  If SizeOf(seq\first) = SizeOf(CvSeqBlock\prev) And seq\elem_size = SizeOf(elem_type)
    If seq\first < seq\first\count And seq\first < index
      result = seq\first\data + index * SizeOf(elem_type)
    Else
      result = cvGetSeqElem(seq, index)
    EndIf
  EndIf
EndMacro

Macro CV_GET_SEQ_ELEM(elem_type, seq, index, result)
  CV_SEQ_ELEM(seq, elem_type, index, result)
EndMacro

Macro CV_SUBDIV2D_NEXT_EDGE(edge)
  edge\next[edge & 3]
EndMacro

Macro CV_NODE_TYPE(flags)
  flags & #CV_NODE_TYPE_MASK
EndMacro

Macro CV_NODE_IS_INT(flags)
  Bool(CV_NODE_TYPE(flags) = #CV_NODE_INT)
EndMacro

Macro CV_NODE_IS_REAL(flags)
  Bool(CV_NODE_TYPE(flags) = #CV_NODE_REAL)
EndMacro

Macro CV_NODE_IS_STRING(flags)
  Bool(CV_NODE_TYPE(flags) = #CV_NODE_STRING)
EndMacro

Macro CV_NODE_IS_SEQ(flags)
  Bool(CV_NODE_TYPE(flags) = #CV_NODE_SEQ)
EndMacro

Macro CV_NODE_IS_MAP(flags)
  Bool(CV_NODE_TYPE(flags) = #CV_NODE_MAP)
EndMacro

Macro CV_NODE_IS_COLLECTION(flags)
  Bool(CV_NODE_TYPE(flags) >= #CV_NODE_SEQ)
EndMacro

Macro CV_NODE_IS_FLOW(flags)
  Bool((flags & #CV_NODE_FLOW) <> 0)
EndMacro

Macro CV_NODE_IS_EMPTY(flags)
  Bool((flags & #CV_NODE_EMPTY) <> 0)
EndMacro

Macro CV_NODE_IS_USER(flags)
  Bool((flags & #CV_NODE_USER) <> 0)
EndMacro

Macro CV_NODE_HAS_NAME(flags)
  Bool((flags & #CV_NODE_NAMED) <> 0)
EndMacro

Macro CV_NODE_SEQ_IS_SIMPLE(seq)
  Bool((seq\flags & #CV_NODE_SEQ_SIMPLE) <> 0)
EndMacro

Macro CV_IS_SPARSE_MAT_HDR(mat)
  Bool(mat <> #Null) & Bool((mat\type & #CV_MAGIC_MASK) = #CV_SPARSE_MAT_MAGIC_VAL)
EndMacro

Macro CV_IS_SPARSE_MAT(mat)
  CV_IS_SPARSE_MAT_HDR(mat)
EndMacro

Macro CV_IS_HIST(hist)
  Bool(hist <> #Null) & Bool((hist\type & #CV_MAGIC_MASK) = #CV_HIST_MAGIC_VAL) & Bool(hist\bins <> #Null)
EndMacro

Macro CV_IS_UNIFORM_HIST(hist)
  Bool((hist\type & #CV_HIST_UNIFORM_FLAG) <> 0)
EndMacro

Macro CV_IS_SPARSE_HIST(hist)
  CV_IS_SPARSE_MAT(hist\bins)
EndMacro

Macro CV_HIST_HAS_RANGES(hist)
  Bool((hist\type & #CV_HIST_RANGES_FLAG) <> 0)
EndMacro
; IDE Options = PureBasic 5.31 Beta 1 (Windows - x86)
; CursorPosition = 3
; Folding = --------
; DisableDebugger