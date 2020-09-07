Structure CvCapture Align #PB_Structure_AlignC : EndStructure
Structure CvCapture_FFMPEG Align #PB_Structure_AlignC : EndStructure
Structure CvVideoWriter Align #PB_Structure_AlignC : EndStructure
Structure CvVideoWriter_FFMPEG Align #PB_Structure_AlignC : EndStructure

Structure CvPoint Align #PB_Structure_AlignC
  x.l
  y.l
EndStructure

Structure CvPoint4D Align #PB_Structure_AlignC
  x1.l
  y1.l
  x2.l
  y2.l
EndStructure

Structure CvPoint2D32f Align #PB_Structure_AlignC
  x.f
  y.f
EndStructure

Structure CvPoint3D32f Align #PB_Structure_AlignC
  x.f
  y.f
  z.f
EndStructure

Structure CvPoint2D64f Align #PB_Structure_AlignC
  x.d
  y.d
EndStructure

Structure CvPoint3D64f Align #PB_Structure_AlignC
  x.d
  y.d
  z.d
EndStructure

Structure CvSize Align #PB_Structure_AlignC
  width.l
  height.l
EndStructure

Structure CvSize2D32f Align #PB_Structure_AlignC
  width.f
  height.f
EndStructure

Structure CvRect Align #PB_Structure_AlignC
  x.l
  y.l
  width.l
  height.l
EndStructure

Structure CvBox2D Align #PB_Structure_AlignC
  center.CvPoint2D32f
  size.CvSize2D32f
  angle.f
EndStructure

Structure CvScalar Align #PB_Structure_AlignC
  val.d[4]
EndStructure

Structure IplROI Align #PB_Structure_AlignC
  coi.l
  xOffset.l
  yOffset.l
  width.l
  height.l
EndStructure

Structure IplTileInfo Align #PB_Structure_AlignC
  *callback
  *id
  *tileData.BYTE
  width.l
  height.l
EndStructure

Structure IplImage Align #PB_Structure_AlignC
  nSize.l
  ID.l
  nChannels.l
  alphaChannel.l
  depth.l
  colorModel.a[4]
  channelSeq.a[4]
  dataOrder.l
  origin.l
  align.l
  width.l
  height.l
  *roi.IplROI
  *maskROI.IplImage
  *imageId
  *tileInfo.IplTileInfo
  imageSize.l
  *imageData.BYTE
  widthStep.l
  BorderMode.l[4]
  BorderConst.l[4]
  *imageDataOrigin.BYTE
EndStructure

Structure CvMat Align #PB_Structure_AlignC
  type.l
  Step.l
  *refcount.LONG
  hdr_refcount.l
  StructureUnion
    *ptr.BYTE
    *s.WORD
    *i.LONG
    *fl.FLOAT
    *db.DOUBLE
  EndStructureUnion
  rows.l
  cols.l
EndStructure

Structure CvArrMatND Align #PB_Structure_AlignC
  size.l
  Step.l
EndStructure

Structure CvMatND Align #PB_Structure_AlignC
  type.l
  dims.l
  *refcount.LONG
  hdr_refcount.l
  StructureUnion
    *ptr.BYTE
    *fl.FLOAT
    *db.DOUBLE
    *i.LONG
    *s.WORD
  EndStructureUnion
  Dim.CvArrMatND[#CV_MAX_DIM]
EndStructure

Structure CvArrHistogram Align #PB_Structure_AlignC
  thresh_lower.f
  thresh_upper.f
EndStructure

Structure CvHistogram Align #PB_Structure_AlignC
  type.l
  *bins.CvMat
  thresh.CvArrHistogram[#CV_MAX_DIM]
  *thresh2.FLOAT
  mat.CvMatND
EndStructure

Structure CvMemBlock Align #PB_Structure_AlignC
  *prev.CvMemBlock
  *next.CvMemBlock
EndStructure

Structure CvMemStoragePos Align #PB_Structure_AlignC
  *top.CvMemBlock
  free_space.l
EndStructure

Structure CvMemStorage Align #PB_Structure_AlignC
  signature.l
  *bottom.CvMemBlock
  *top.CvMemBlock
  *parent.CvMemStorage
  block_size.l
  free_space.l
EndStructure

Structure CvSeqBlock Align #PB_Structure_AlignC
  *prev.CvSeqBlock
  *next.CvSeqBlock
  start_index.l
  count.l
  *data.BYTE
EndStructure

Structure CvSeq Align #PB_Structure_AlignC
  flags.l
  header_size.l
  *h_prev.CvSeq
  *h_next.CvSeq
  *v_prev.CvSeq
  *v_next.CvSeq
  total.l
  elem_size.l
  *block_max.BYTE
  *ptr.BYTE
  delta_elems.l
  *storage.CvMemStorage
  *free_blocks.CvSeqBlock
  *first.CvSeqBlock
EndStructure

Structure CvGenericHash Align #PB_Structure_AlignC
  total.l
  elem_size.l
  *block_max.BYTE
  *ptr.BYTE
  delta_elems.l
  *storage.CvMemStorage
  *free_blocks.CvSeqBlock
  *first.CvSeqBlock
  tab_size.l
  *table
EndStructure

Structure CvString Align #PB_Structure_AlignC
  len.l
  *ptr.BYTE
EndStructure

Structure CvFileStorage Align #PB_Structure_AlignC
  flags.l
  is_xml.l
  write_mode.l
  is_first.l
  *memstorage.CvMemStorage
  *dststorage.CvMemStorage
  *strstorage.CvMemStorage
  *str_hash.CvGenericHash
  *roots.CvSeq
  *write_stack.CvSeq
  struct_indent.l
  struct_flags.l
  struct_tag.CvString
  space.l
  *filename.BYTE
  *file
  *gzfile
  *buffer.BYTE
  *buffer_start.BYTE
  *buffer_end.BYTE
  wrap_margin.l
  lineno.l
  dummy_eof.l
  *errmsg.BYTE
  errmsgbuf.a[128]
  *start_write_struct.CvStartWriteStruct
  *end_write_struct.CvEndWriteStruct
  *write_int.CvWriteInt
  *write_real.CvWriteReal
  *write_string.CvWriteString
  *write_comment.CvWriteComment
  *start_next_stream.CvStartNextStream
EndStructure

Structure CvDataNode Align #PB_Structure_AlignC
  f.d
  i.l
  str.CvString
  *seq.CvSeq
  *map.CvGenericHash
EndStructure

Structure CvFileNode Align #PB_Structure_AlignC
  tag.l
  *info.CvTypeInfo
  StructureUnion
    Data.CvDataNode
  EndStructureUnion
EndStructure

Structure CvSeqReader Align #PB_Structure_AlignC
  header_size.l
  *seq.CvSeq
  *block.CvSeqBlock
  *ptr.BYTE
  *block_min.BYTE
  *block_max.BYTE
  delta_index.l
  *prev_elem.BYTE
EndStructure

Structure CvSeqWriter Align #PB_Structure_AlignC
  header_size.l
  *seq.CvSeq
  *block.CvSeqBlock
  *ptr.BYTE
  *block_min.BYTE
  *block_max.BYTE
EndStructure

Structure CvSetElem Align #PB_Structure_AlignC
  flags.l
  *next_free.CvSeq
EndStructure

Structure CvSet Align #PB_Structure_AlignC
  flags.l
  header_size.l
  *h_prev.CvSeq
  *h_next.CvSeq
  *v_prev.CvSeq
  *v_next.CvSeq
  total.l
  elem_size.l
  *block_max.BYTE
  *ptr.BYTE
  delta_elems.l
  *storage.CvMemStorage
  *free_blocks.CvSeqBlock
  *first.CvSeqBlock
  *free_elems.CvSetElem
  active_count.l
EndStructure

Structure CvSparseMat Align #PB_Structure_AlignC
  type.l
  dims.l
  *refcount.LONG
  hdr_refcount.l
  *heap.CvSet
  *hashtable
  hashsize.l
  valoffset.l
  idxoffset.l
  size.l[#CV_MAX_DIM]
EndStructure

Structure CvSparseNode Align #PB_Structure_AlignC
  hashval.l
  *next.CvSparseNode
EndStructure

Structure CvSparseMatIterator Align #PB_Structure_AlignC
  *mat.CvSparseMat
  *node.CvSparseNode
  curidx.l
EndStructure

Structure CvTreeNodeIterator Align #PB_Structure_AlignC
  *node
  level.l
  max_level.l
EndStructure

Structure CvSubdiv2D Align #PB_Structure_AlignC
  flags.l
  header_size.l
  *h_prev.CvSeq
  *h_next.CvSeq
  *v_prev.CvSeq
  *v_next.CvSeq
  total.l
  elem_size.l
  *block_max.BYTE
  *ptr.BYTE
  delta_elems.l
  *storage.CvMemStorage
  *free_blocks.CvSeqBlock
  *first.CvSeqBlock
  *free_elems.CvSetElem
  active_count.l
  *edges.CvSet
  quad_edges.l
  is_geometry_valid.l
  recent_edge.i
  topleft.CvPoint2D32f
  bottomright.CvPoint2D32f
EndStructure

Structure CvSubdiv2DPoint Align #PB_Structure_AlignC
  flags.l
  first.i
  pt.CvPoint2D32f
  id.l
EndStructure

Structure CvQuadEdge2D Align #PB_Structure_AlignC
  flags.l
  *pt.CvSubdiv2DPoint[4]
  Next.i[4]
EndStructure

Structure CvSlice Align #PB_Structure_AlignC
  start_index.l
  end_index.l
EndStructure

Structure CvConvexityDefect Align #PB_Structure_AlignC
  *start.CvPoint
  *end.CvPoint
  *depth_point.CvPoint
  depth.f
EndStructure

Structure CvContour Align #PB_Structure_AlignC
  flags.l
  header_size.l
  *h_prev.CvSeq
  *h_next.CvSeq
  *v_prev.CvSeq
  *v_next.CvSeq
  total.l
  elem_size.l
  *block_max.BYTE
  *ptr.BYTE
  delta_elems.l
  *storage.CvMemStorage
  *free_blocks.CvSeqBlock
  *first.CvSeqBlock
  rect.CvRect
  color.l
  reserved.l[3]
EndStructure

Structure CvContourInfo Align #PB_Structure_AlignC
  flags.l
  *next.CvContourInfo
  *parent.CvContourInfo
  *contour.CvSeq
  rect.CvRect
  origin.CvPoint
  is_hole.l
EndStructure

Structure CvContourScanner Align #PB_Structure_AlignC
  *storage1.CvMemStorage
  *storage2.CvMemStorage
  *cinfo_storage.CvMemStorage
  *cinfo_set.CvSet
  initial_pos.CvMemStoragePos
  backup_pos.CvMemStoragePos
  backup_pos2.CvMemStoragePos
  *img0.BYTE
  *img.BYTE
  img_step.l
  img_size.CvSize
  offset.CvPoint
  pt.CvPoint
  lnbd.CvPoint
  nbd.l
  *l_cinfo.CvContourInfo
  cinfo_temp.CvContourInfo
  frame_info.CvContourInfo
  frame.CvSeq
  approx_method1.l
  approx_method2.l
  mode.l
  subst_flag.l
  seq_type1.l
  header_size1.l
  elem_size1.l
  seq_type2.l
  header_size2.l
  elem_size2.l
  *cinfo_table.CvContourInfo[128]
EndStructure

Structure CvChain Align #PB_Structure_AlignC
  flags.l
  header_size.l
  *h_prev.CvSeq
  *h_next.CvSeq
  *v_prev.CvSeq
  *v_next.CvSeq
  total.l
  elem_size.l
  *block_max.BYTE
  *ptr.BYTE
  delta_elems.l
  *storage.CvMemStorage
  *free_blocks.CvSeqBlock
  *first.CvSeqBlock
  origin.CvPoint
EndStructure

Structure CvChainPtReader Align #PB_Structure_AlignC
  header_size.l
  *seq.CvSeq
  *block.CvSeqBlock
  *ptr.BYTE
  *block_min.BYTE
  *block_max.BYTE
  delta_index.l
  *prev_elem.BYTE
  code.c
  pt.CvPoint
  deltas.a[8]
EndStructure

Structure CvLineIterator Align #PB_Structure_AlignC
  *ptr.BYTE
  err.l
  plus_delta.l
  minus_delta.l
  plus_step.l
  minus_step.l
EndStructure

Structure CvNArrayIterator Align #PB_Structure_AlignC
  count.l
  dims.l
  size.CvSize
  *ptr.BYTE[#CV_MAX_ARR]
  stack.l[#CV_MAX_DIM]
  *hdr.CvMatND[#CV_MAX_ARR]
EndStructure

Structure CvPluginFuncInfo Align #PB_Structure_AlignC
  *func_addr
  *default_func_addr
  *func_names.BYTE
  search_modules.l
  loaded_from.l
EndStructure

Structure CvModuleInfo Align #PB_Structure_AlignC
  *next.CvModuleInfo
  *name.BYTE
  *version.BYTE
  *func_tab.CvPluginFuncInfo
EndStructure

Structure CvFont Align #PB_Structure_AlignC
  *nameFont
  color.CvScalar
  font_face.l
  *ascii
  *greek
  *cyrillic
  hscale.f
  vscale.f
  shear.f
  thickness.l
  dx.f
  line_type.l
EndStructure

Structure CvSURFPoint Align #PB_Structure_AlignC
  pt.CvPoint2D32f
  laplacian.l
  size.l
  dir.f
  hessian.f
EndStructure

Structure CvSURFParams Align #PB_Structure_AlignC
  extended.l
  upright.l
  hessianThreshold.d
  nOctaves.l
  nOctaveLayers.l
EndStructure

Structure CvSpillTreeNode Align #PB_Structure_AlignC
  leaf.a
  spill.a
  *lc.CvSpillTreeNode
  *rc.CvSpillTreeNode
  cc.l
  *u.CvMat
  *center.CvMat
  i.l
  r.d
  ub.d
  lb.d
  mp.d
  p.d
EndStructure

Structure CvSpillTree Align #PB_Structure_AlignC
  *root.CvSpillTreeNode
  *refmat.CvMat
  cache.a
  total.l
  naive.l
  type.l
  rho.d
  tau.d
EndStructure

Structure CvFeatureTree Align #PB_Structure_AlignC
  *tr.CvSpillTree
EndStructure

Structure CvResult Align #PB_Structure_AlignC
  index.l
  distance.d
EndStructure

Structure CvMoments Align #PB_Structure_AlignC
  m00.d
  m10.d
  m01.d
  m20.d
  m11.d
  m02.d
  m30.d
  m21.d
  m12.d
  m03.d
  mu20.d
  mu11.d
  mu02.d
  mu30.d
  mu21.d
  mu12.d
  mu03.d
  inv_sqrt_m00.d
EndStructure

Structure CvHuMoments Align #PB_Structure_AlignC
  hu1.d
  hu2.d
  hu3.d
  hu4.d
  hu5.d
  hu6.d
  hu7.d
EndStructure

Structure CvTermCriteria Align #PB_Structure_AlignC
  type.l
  max_iter.l
  epsilon.d
EndStructure

Structure CvConnectedComp Align #PB_Structure_AlignC
  area.d
  value.CvScalar
  rect.CvRect
  *contour.CvSeq
EndStructure

Structure CvKalman Align #PB_Structure_AlignC
  MP.l
  DP.l
  CP.l
  *PosterState.FLOAT
  *PriorState.FLOAT
  *DynamMatr.FLOAT
  *MeasurementMatr.FLOAT
  *MNCovariance.FLOAT
  *PNCovariance.FLOAT
  *KalmGainMatr.FLOAT
  *PriorErrorCovariance.FLOAT
  *PosterErrorCovariance.FLOAT
  *TempOld1.FLOAT
  *TempOld2.FLOAT
  *state_pre.CvMat
  *state_post.CvMat
  *transition_matrix.CvMat
  *control_matrix.CvMat
  *measurement_matrix.CvMat
  *process_noise_cov.CvMat
  *measurement_noise_cov.CvMat
  *error_cov_pre.CvMat
  *gain.CvMat
  *error_cov_post.CvMat
  *temp1.CvMat
  *temp2.CvMat
  *temp3.CvMat
  *temp4.CvMat
  *temp5.CvMat
EndStructure

Structure CvLSVMFilterPosition Align #PB_Structure_AlignC
  x.l
  y.l
  l.l
EndStructure

Structure CvLSVMFilterObject Align #PB_Structure_AlignC
  *V.CvLSVMFilterPosition
  fineFunction.f[4]
  sizeX.l
  sizeY.l
  numFeatures.l
  *H.FLOAT
EndStructure

Structure CvLatentSvmDetector Align #PB_Structure_AlignC
  num_filters.l
  num_components.l
  *num_part_filters.LONG
  *filters.CvLSVMFilterObject
  *b.FLOAT
  score_threshold.f
EndStructure

Structure CvObjectDetection Align #PB_Structure_AlignC
  rect.CvRect
  score.f
EndStructure

Structure CvHidHaarFeature Align #PB_Structure_AlignC
  StructureUnion
    *p0.LONG
    *p1.LONG
    *p2.LONG
    *p3.LONG
    weight.f
  EndStructureUnion
EndStructure

Structure CvHidHaarTreeNode Align #PB_Structure_AlignC
  *feature.CvHidHaarFeature
  threshold.f
  left.l
  right.l
EndStructure

Structure CvHidHaarClassifier Align #PB_Structure_AlignC
  count.l
  *node.CvHidHaarTreeNode
  alpha.f
EndStructure

Structure CvHidHaarStageClassifier Align #PB_Structure_AlignC
  count.l
  threshold.f
  *classifier.CvHidHaarClassifier
  two_rects.l
  *next.CvHidHaarStageClassifier
  *child.CvHidHaarStageClassifier
  *parent.CvHidHaarStageClassifier
EndStructure

Structure CvHidHaarClassifierCascade Align #PB_Structure_AlignC
  count.l
  isStumpBased.l
  has_tilted_features.l
  is_tree.l
  inv_window_area.d
  *sum.CvMat
  *sqsum.CvMat
  *tilted.CvMat
  *stage_classifier.CvHidHaarStageClassifier
  *pq0.DOUBLE
  *pq1.DOUBLE
  *pq2.DOUBLE
  *pq3.DOUBLE
  *p0.LONG
  *p1.LONG
  *p2.LONG
  *p3.LONG
  *ipp_stages
EndStructure

Structure CvGraphVtx Align #PB_Structure_AlignC
  flags.l
  *first.CvGraphEdge
EndStructure

Structure CvGraphVtx2D Align #PB_Structure_AlignC
  flags.l
  *first.CvGraphEdge
  *ptr.CvPoint2D32f
EndStructure

Structure CvGraphEdge Align #PB_Structure_AlignC
  flags.l
  weight.f
  *next.CvGraphEdge[2]
  *vtx.CvGraphVtx[2]
EndStructure

Structure CvGraph Align #PB_Structure_AlignC
  flags.l
  header_size.l
  *h_prev.CvSeq
  *h_next.CvSeq
  *v_prev.CvSeq
  *v_next.CvSeq
  total.l
  elem_size.l
  *block_max.BYTE
  *ptr.BYTE
  delta_elems.l
  *storage.CvMemStorage
  *free_blocks.CvSeqBlock
  *first.CvSeqBlock
  *free_elems.CvSetElem
  active_count.l
  *edges.CvSet
EndStructure

Structure CvGraphScanner Align #PB_Structure_AlignC
  *vtx.CvGraphVtx
  *dst.CvGraphVtx
  *edge.CvGraphEdge
  *graph.CvGraph
  *stack.CvSeq
  index.l
  mask.l
EndStructure

Structure IplConvKernel Align #PB_Structure_AlignC
  nCols.l
  nRows.l
  anchorX.l
  anchorY.l
  *values
  nShiftR.l              
EndStructure

Structure CvPOSITObject Align #PB_Structure_AlignC
  N.l
  *inv_matr.FLOAT
  *obj_vecs.FLOAT
  *img_vecs.FLOAT
EndStructure

Structure CvStereoBMState Align #PB_Structure_AlignC
  preFilterType.l
  preFilterSize.l
  preFilterCap.l
  SADWindowSize.l
  minDisparity.l
  numberOfDisparities.l
  textureThreshold.l
  uniquenessRatio.l
  speckleWindowSize.l
  speckleRange.l
  trySmallerWindows.l
  roi1.CvRect
  roi2.CvRect
  disp12MaxDiff.l
  *preFilteredImg0.CvMat
  *preFilteredImg1.CvMat
  *slidingSumBuf.CvMat
  *cost.CvMat
  *disp.CvMat
EndStructure

Structure CvReleaseBGStatModel Align #PB_Structure_AlignC
  *bg_model.CvBGStatModel
EndStructure

Structure CvUpdateBGStatModel Align #PB_Structure_AlignC
  *curr_frame.IplImage
  StructureUnion
    *bg_model.CvBGStatModel
    learningRate.d
  EndStructureUnion
EndStructure

Structure CvBGStatModel Align #PB_Structure_AlignC
  type.l
  *release.CvReleaseBGStatModel
  *update.CvUpdateBGStatModel
  *background.IplImage
  *foreground.IplImage
  *layers.IplImage
  layer_count.l
  *storage.CvMemStorage
  *foreground_regions.CvSeq
EndStructure

Structure CvFGDStatModelParams Align #PB_Structure_AlignC
  Lc.l
  N1c.l
  N2c.l
  Lcc.l
  N1cc.l
  N2cc.l
  is_obj_without_holes.l
  perform_morphing.l
  alpha1.f
  alpha2.f
  alpha3.f
  delta.f
  T.f
  minArea.f
EndStructure

Structure CvBGPixelCStatTable Align #PB_Structure_AlignC
  Pv.f
  Pvb.f
  v.a[3]
EndStructure

Structure CvBGPixelCCStatTable Align #PB_Structure_AlignC
  Pv.f
  Pvb.f
  v.a[6]
EndStructure

Structure CvBGPixelStat Align #PB_Structure_AlignC
  Pbc.f
  Pbcc.f
  *ctable.CvBGPixelCStatTable
  *cctable.CvBGPixelCCStatTable
  is_trained_st_model.a
  is_trained_dyn_model.a
EndStructure

Structure CvFGDStatModel Align #PB_Structure_AlignC
  type.l
  *release.CvReleaseBGStatModel
  *update.CvUpdateBGStatModel
  *background.IplImage
  *foreground.IplImage
  *layers.IplImage
  layer_count.l
  *storage.CvMemStorage
  *foreground_regions.CvSeq
  *pixel_stat.CvBGPixelStat
  *Ftd.IplImage
  *Fbd.IplImage
  *prev_frame.IplImage
  params.CvFGDStatModelParams
EndStructure

Structure CvGaussBGStatModelParams Align #PB_Structure_AlignC
  win_size.l
  n_gauss.l
  bg_threshold.d
  std_threshold.d
  minArea.d
  weight_init.d
  variance_init.d
EndStructure

Structure CvGaussBGValues Align #PB_Structure_AlignC
  match_sum.l
  weight.d
  variance.d[#CV_BGFG_MOG_NCOLORS]
  mean.d[#CV_BGFG_MOG_NCOLORS]
EndStructure

Structure CvGaussBGPoint Align #PB_Structure_AlignC
  *g_values.CvGaussBGValues
EndStructure

Structure CvGaussBGModel Align #PB_Structure_AlignC
  type.l
  *release.CvReleaseBGStatModel
  *update.CvUpdateBGStatModel
  *background.IplImage
  *foreground.IplImage
  *layers.IplImage
  layer_count.l
  *storage.CvMemStorage
  *foreground_regions.CvSeq
  params.CvGaussBGStatModelParams
  *g_point.CvGaussBGPoint
  countFrames.l
  *mog
EndStructure

Structure CvBGCodeBookElem Align #PB_Structure_AlignC
  *next.CvBGCodeBookElem
  tLastUpdate.l
  stale.l
  boxMin.a[3]
  boxMax.a[3]
  learnMin.a[3]
  learnMax.a[3]
EndStructure

Structure CvBGCodeBookModel Align #PB_Structure_AlignC
  size.CvSize
  t.l
  cbBounds.a[3]
  modMin.a[3]
  modMax.a[3]
  *cbmap.CvBGCodeBookElem
  *storage.CvMemStorage
  *freeList.CvBGCodeBookElem
EndStructure

Structure CvHaarFeature Align #PB_Structure_AlignC
  tilted.l
  StructureUnion
    r.CvRect
    weight.f
  EndStructureUnion
  rect.CvRect[#CV_HAAR_FEATURE_MAX]
EndStructure

Structure CvHaarClassifier Align #PB_Structure_AlignC
  count.l
  *haar_feature.CvHaarFeature
  *threshold.FLOAT
  *left.LONG
  *right.LONG
  *alpha.FLOAT
EndStructure

Structure CvHaarStageClassifier Align #PB_Structure_AlignC
  count.l
  threshold.f
  *classifier.CvHaarClassifier
  Next.l
  child.l
  parent.l
EndStructure

Structure CvHaarClassifierCascade Align #PB_Structure_AlignC
  flags.l
  count.l
  orig_window_size.CvSize
  real_window_size.CvSize
  scale.d
  *stage_classifier.CvHaarStageClassifier
  *hid_cascade.CvHidHaarClassifierCascade
EndStructure

Structure CvAttrList Align #PB_Structure_AlignC
  *attr.BYTE
  *next.CvAttrList
EndStructure

Structure ATTR_LIST
  attribute_name.s
  attribute_value.s
  terminated.a
EndStructure

Structure SAVE_INFO
  paramId.l
  paramValue.l
EndStructure

Structure USER_INFO
  *uPointer1.IplImage
  *uPointer2.IplImage
  uMsg.s
  uValue.l
EndStructure
; IDE Options = PureBasic 5.31 (Windows - x86)
; CursorPosition = 4
; DisableDebugger