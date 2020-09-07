#CV_WINDOW_NORMAL                                     = 0
#CV_WINDOW_AUTOSIZE                                   = 1
#CV_GUI_NORMAL                                        = $10
#CV_WINDOW_FREERATIO                                  = $100

#CV_CAP_ANY                                           = 0
#CV_CAP_MIL                                           = 100
#CV_CAP_VFW                                           = 200
#CV_CAP_V4L                                           = 200
#CV_CAP_V4L2                                          = 200
#CV_CAP_FIREWARE                                      = 300
#CV_CAP_FIREWIRE                                      = 300
#CV_CAP_IEEE1394                                      = 300
#CV_CAP_DC1394                                        = 300
#CV_CAP_CMU1394                                       = 300
#CV_CAP_STEREO                                        = 400
#CV_CAP_TYZX                                          = 400
#CV_TYZX_LEFT                                         = 400
#CV_TYZX_RIGHT                                        = 401
#CV_TYZX_COLOR                                        = 402
#CV_TYZX_Z                                            = 403
#CV_CAP_QT                                            = 500
#CV_CAP_UNICAP                                        = 600
#CV_CAP_DSHOW                                         = 700
#CV_CAP_PVAPI                                         = 800
#CV_CAP_OPENNI                                        = 900
#CV_CAP_OPENNI_ASUS                                   = 910
#CV_CAP_ANDROID                                       = 1000
#CV_CAP_ANDROID_FRONT                                 = #CV_CAP_ANDROID + 98
#CV_CAP_ANDROID_BACK                                  = #CV_CAP_ANDROID + 99
#CV_CAP_XIAPI                                         = 1100
#CV_CAP_AVFOUNDATION                                  = 1200
#CV_CAP_GIGANETIX                                     = 1300
#CV_CAP_MSMF                                          = 1400
#CV_CAP_INTELPERC                                     = 1500
#CV_CAP_OPENNI2                                       = 1600
#CV_CAP_GPHOTO2                                       = 1700

#CV_FILLED                                            = -1
#CV_POLY_APPROX_DP                                    = 0
#CV_CAPTURE_BASE_API_COUNT                            = 6
#CV_AA                                                = 16
#CV_WHOLE_SEQ_END_INDEX                               = $3fffffff
#CV_AUTOSTEP                                          = $7fffffff
#CV_RNG_COEFF                                         = 4164903690

#CV_CLOCKWISE                                         = 1
#CV_COUNTER_CLOCKWISE                                 = 2

#OPTFLOW_USE_INITIAL_FLOW                             = 4
#OPTFLOW_FARNEBACK_GAUSSIAN                           = 256

#CV_PI                                                = 3.1415926535897932384
#CV_LOG2                                              = 0.6931471805599453094

#CV_BACK                                              = 0
#CV_FRONT                                             = 1

#CV_BG_MODEL_FGD                                      = 0
#CV_BG_MODEL_MOG                                      = 1
#CV_BG_MODEL_FGD_SIMPLE                               = 2

#CV_BGFG_FGD_ALPHA_1                                  = 0.1
#CV_BGFG_FGD_ALPHA_2                                  = 0.005
#CV_BGFG_FGD_ALPHA_3                                  = 0.1
#CV_BGFG_FGD_T                                        = 0.9
#CV_BGFG_FGD_BG_UPDATE_TRESH                          = 0.5
#CV_BGFG_FGD_DELTA                                    = 2
#CV_BGFG_FGD_MINAREA                                  = 15

#CV_BGFG_FGD_N1C                                      = 15
#CV_BGFG_FGD_N2C                                      = 25
#CV_BGFG_FGD_LC                                       = 128

#CV_BGFG_FGD_N1CC                                     = 25
#CV_BGFG_FGD_N2CC                                     = 40
#CV_BGFG_FGD_LCC                                      = 64

#CV_BGFG_MOG_WEIGHT_INIT                              = 0.05
#CV_BGFG_MOG_BACKGROUND_THRESHOLD                     = 0.7
#CV_BGFG_MOG_STD_THRESHOLD                            = 2.5
#CV_BGFG_MOG_NCOLORS                                  = 3
#CV_BGFG_MOG_NGAUSSIANS                               = 5
#CV_BGFG_MOG_MINAREA                                  = 15
#CV_BGFG_MOG_SIGMA_INIT                               = 30
#CV_BGFG_MOG_WINDOW_SIZE                              = 200
#CV_BGFG_MOG_MAX_NGAUSSIANS                           = 500

#CV_ErrModeLeaf                                       = 0
#CV_ErrModeParent                                     = 1
#CV_ErrModeSilent                                     = 2

#CV_DXT_FORWARD                                       = 0
#CV_DXT_INVERSE                                       = 1
#CV_DXT_SCALE                                         = 2
#CV_DXT_INV_SCALE                                     = #CV_DXT_INVERSE + #CV_DXT_SCALE
#CV_DXT_INVERSE_SCALE                                 = #CV_DXT_INV_SCALE
#CV_DXT_ROWS                                          = 4
#CV_DXT_MUL_CONJ                                      = 8

#CV_REDUCE_SUM                                        = 0
#CV_REDUCE_AVG                                        = 1
#CV_REDUCE_MAX                                        = 2
#CV_REDUCE_MIN                                        = 3

#CV_NO_DEPTH_CHECK                                    = 1
#CV_NO_CN_CHECK                                       = 2
#CV_NO_SIZE_CHECK                                     = 4

#CV_CPU_NONE                                          = 0
#CV_CPU_MMX                                           = 1
#CV_CPU_SSE                                           = 2
#CV_CPU_SSE2                                          = 3
#CV_CPU_SSE3                                          = 4
#CV_CPU_SSSE3                                         = 5
#CV_CPU_SSE4_1                                        = 6
#CV_CPU_SSE4_2                                        = 7
#CV_CPU_POPCNT                                        = 8
#CV_CPU_AVX                                           = 10
#CV_HARDWARE_MAX_FEATURE                              = 255

#CV_RAND_UNI                                          = 0
#CV_RAND_NORMAL                                       = 1

#CV_CALIB_CB_ADAPTIVE_THRESH                          = 1
#CV_CALIB_CB_NORMALIZE_IMAGE                          = 2
#CV_CALIB_CB_FILTER_QUADS                             = 4
#CV_CALIB_CB_FAST_CHECK                               = 8

#CV_CALIB_FIX_ASPECT_RATIO                            = 2
#CV_CALIB_FIX_PRINCIPAL_POINT                         = 4
#CV_CALIB_FIX_FOCAL_LENGTH                            = 16
#CV_CALIB_FIX_K1                                      = 32
#CV_CALIB_FIX_K2                                      = 64
#CV_CALIB_FIX_K3                                      = 128
#CV_CALIB_FIX_INTRINSIC                               = 256
#CV_CALIB_FIX_K4                                      = 2048
#CV_CALIB_FIX_K5                                      = 4096
#CV_CALIB_FIX_K6                                      = 8192

#CV_CALIB_USE_INTRINSIC_GUESS                         = 1
#CV_CALIB_ZERO_TANGENT_DIST                           = 8
#CV_CALIB_SAME_FOCAL_LENGTH                           = 512
#CV_CALIB_ZERO_DISPARITY                              = 1024
#CV_CALIB_RATIONAL_MODEL                              = 16384

#CV_LMEDS                                             = 4
#CV_RANSAC                                            = 8

#CV_FM_7POINT                                         = 1
#CV_FM_8POINT                                         = 2
#CV_FM_LMEDS                                          = #CV_LMEDS
#CV_FM_LMEDS_ONLY                                     = #CV_LMEDS
#CV_FM_RANSAC                                         = #CV_RANSAC
#CV_FM_RANSAC_ONLY                                    = #CV_RANSAC

#CV_STEREO_BM_BASIC                                   = 0
#CV_STEREO_BM_FISH_EYE                                = 1
#CV_STEREO_BM_NARROW                                  = 2

#CV_STEREO_BM_NORMALIZED_RESPONSE                     = 0
#CV_STEREO_BM_XSOBEL                                  = 1
#CV_STEREO_GC_OCCLUDED                                = 32767

#CV_TM_SQDIFF                                         = 0
#CV_TM_SQDIFF_NORMED                                  = 1
#CV_TM_CCORR                                          = 2
#CV_TM_CCORR_NORMED                                   = 3
#CV_TM_CCOEFF                                         = 4
#CV_TM_CCOEFF_NORMED                                  = 5

#CV_SORT_EVERY_ROW                                    = 0
#CV_SORT_EVERY_COLUMN                                 = 1
#CV_SORT_ASCENDING                                    = 0
#CV_SORT_DESCENDING                                   = 16

#KMEANS_RANDOM_CENTERS                                = 0
#KMEANS_USE_INITIAL_LABELS                            = 1
#KMEANS_PP_CENTERS                                    = 2

#CV_GEMM_A_T                                          = 1
#CV_GEMM_B_T                                          = 2
#CV_GEMM_C_T                                          = 4

#CV_GRAPH_OVER                                        = -1
#CV_GRAPH_ALL_ITEMS                                   = -1
#CV_GRAPH_VERTEX                                      = 1
#CV_GRAPH_TREE_EDGE                                   = 2
#CV_GRAPH_BACK_EDGE                                   = 4
#CV_GRAPH_FORWARD_EDGE                                = 8
#CV_GRAPH_CROSS_EDGE                                  = 16
#CV_GRAPH_ANY_EDGE                                    = 30
#CV_GRAPH_NEW_TREE                                    = 32
#CV_GRAPH_BACKTRACKING                                = 64
#CV_GRAPH_FORWARD_EDGE_FLAG                           = 1 << 28
#CV_GRAPH_SEARCH_TREE_NODE_FLAG                       = 1 << 29
#CV_GRAPH_ITEM_VISITED_FLAG                           = 1 << 30

#CV_LKFLOW_PYR_A_READY                                = 1
#CV_LKFLOW_PYR_B_READY                                = 2
#CV_LKFLOW_INITIAL_GUESSES                            = 4
#CV_LKFLOW_GET_MIN_EIGENVALS                          = 8

#CV_COMP_CORREL                                       = 0
#CV_COMP_CHISQR                                       = 1
#CV_COMP_INTERSECT                                    = 2
#CV_COMP_BHATTACHARYYA                                = 3
#CV_COMP_HELLINGER                                    = #CV_COMP_BHATTACHARYYA

#CV_FILE_STORAGE                                      = 'Y' + ('A' << 8) + ('M' << 16) + ('L' << 24)

#CV_STORAGE_READ                                      = 0
#CV_STORAGE_WRITE                                     = 1
#CV_STORAGE_WRITE_TEXT                                = #CV_STORAGE_WRITE
#CV_STORAGE_WRITE_BINARY                              = #CV_STORAGE_WRITE
#CV_STORAGE_APPEND                                    = 2
#CV_STORAGE_MEMORY                                    = 4
#CV_STORAGE_FORMAT_MASK                               = 7 << 3
#CV_STORAGE_FORMAT_AUTO                               = 0
#CV_STORAGE_FORMAT_XML                                = 8
#CV_STORAGE_FORMAT_YAML                               = 16

#CV_NODE_NONE                                         = 0
#CV_NODE_INT                                          = 1
#CV_NODE_INTEGER                                      = #CV_NODE_INT
#CV_NODE_REAL                                         = 2
#CV_NODE_FLOAT                                        = #CV_NODE_REAL
#CV_NODE_STR                                          = 3
#CV_NODE_STRING                                       = #CV_NODE_STR
#CV_NODE_REF                                          = 4
#CV_NODE_SEQ                                          = 5
#CV_NODE_MAP                                          = 6
#CV_NODE_TYPE_MASK                                    = 7

#CV_NODE_FLOW                                         = 8
#CV_NODE_USER                                         = 16
#CV_NODE_EMPTY                                        = 32
#CV_NODE_NAMED                                        = 64

#CV_NODE_SEQ_SIMPLE                                   = 256

#CV_XML_OPENING_TAG                                   = 1
#CV_XML_CLOSING_TAG                                   = 2
#CV_XML_EMPTY_TAG                                     = 3
#CV_XML_HEADER_TAG                                    = 4
#CV_XML_DIRECTIVE_TAG                                 = 5

#CV_SHAPE_RECT                                        = 0
#CV_SHAPE_CROSS                                       = 1
#CV_SHAPE_ELLIPSE                                     = 2
#CV_SHAPE_CUSTOM                                      = 100

#CV_MOP_ERODE                                         = 0
#CV_MOP_DILATE                                        = 1
#CV_MOP_OPEN                                          = 2
#CV_MOP_CLOSE                                         = 3
#CV_MOP_GRADIENT                                      = 4
#CV_MOP_TOPHAT                                        = 5
#CV_MOP_BLACKHAT                                      = 6

#CV_ADJUST_WEIGHTS                                    = 0
#CV_ADJUST_FEATURES                                   = 1

#CV_TERMCRIT_ITER                                     = 1
#CV_TERMCRIT_NUMBER                                   = #CV_TERMCRIT_ITER
#CV_TERMCRIT_EPS                                      = 2

#CV_HAAR_FEATURE_MAX                                  = 3

#CV_HAAR_DO_CANNY_PRUNING                             = 1
#CV_HAAR_SCALE_IMAGE                                  = 2
#CV_HAAR_FEATURE_MAX                                  = 3
#CV_HAAR_FIND_BIGGEST_OBJECT                          = 4
#CV_HAAR_DO_ROUGH_SEARCH                              = 8
#CV_HAAR_MAGIC_VAL                                    = $42500000
#CV_TYPE_NAME_HAAR                                    = "opencv-haar-classifier"

#CV_CONTOURS_MATCH_I1                                 = 1
#CV_CONTOURS_MATCH_I2                                 = 2
#CV_CONTOURS_MATCH_I3                                 = 3

#CV_HOUGH_STANDARD                                    = 0
#CV_HOUGH_PROBABILISTIC                               = 1
#CV_HOUGH_MULTI_SCALE                                 = 2
#CV_HOUGH_GRADIENT                                    = 3

#CV_WINDOW_MAGIC_VAL                                  = $00420042
#CV_TRACKBAR_MAGIC_VAL                                = $00420043
#CV_STORAGE_MAGIC_VAL                                 = $42890000
#CV_MAGIC_MASK                                        = $FFFF0000

#CV_MAT_MAGIC_VAL                                     = $42420000
#CV_TYPE_NAME_MAT                                     = "opencv-matrix"

#CV_SPARSE_MAT_MAGIC_VAL                              = $42440000
#CV_TYPE_NAME_SPARSE_MAT                              = "opencv-sparse-matrix"

#CV_MAX_ARR                                           = 10
#CV_MAX_DIM                                           = 32
#CV_MAX_DIM_HEAP                                      = 1024

#CV_MATND_MAGIC_VAL                                   = $42430000
#CV_TYPE_NAME_MATND                                   = "opencv-nd-matrix"

#CV_HIST_ARRAY                                        = 0
#CV_HIST_SPARSE                                       = 1
#CV_HIST_TREE                                         = #CV_HIST_SPARSE
#CV_HIST_UNIFORM                                      = 1
#CV_HIST_UNIFORM_FLAG                                 = 1 << 10
#CV_HIST_RANGES_FLAG                                  = 1 << 11
#CV_HIST_MAGIC_VAL                                    = $42450000

#CV_SET_MAGIC_VAL                                     = $42980000
#CV_SEQ_MAGIC_VAL                                     = $42990000
#CV_SEQ_ELTYPE_BITS                                   = 12
#CV_SEQ_ELTYPE_MASK                                   = (1 << #CV_SEQ_ELTYPE_BITS) - 1
#CV_SEQ_KIND_BITS                                     = 2
#CV_SEQ_KIND_MASK                                     = ((1 << #CV_SEQ_KIND_BITS) - 1) << #CV_SEQ_ELTYPE_BITS
#CV_SEQ_KIND_GENERIC                                  = 0 << #CV_SEQ_ELTYPE_BITS
#CV_SEQ_KIND_CURVE                                    = 1 << #CV_SEQ_ELTYPE_BITS
#CV_SEQ_KIND_BIN_TREE                                 = 2 << #CV_SEQ_ELTYPE_BITS
#CV_SEQ_KIND_GRAPH                                    = 1 << #CV_SEQ_ELTYPE_BITS
#CV_SEQ_KIND_SUBDIV2D                                 = 2 << #CV_SEQ_ELTYPE_BITS
#CV_SEQ_FLAG_SHIFT                                    = #CV_SEQ_KIND_BITS + #CV_SEQ_ELTYPE_BITS
#CV_SEQ_FLAG_CLOSED                                   = 1 << #CV_SEQ_FLAG_SHIFT
#CV_SEQ_FLAG_SIMPLE                                   = 0 << #CV_SEQ_FLAG_SHIFT
#CV_SEQ_FLAG_CONVEX                                   = 0 << #CV_SEQ_FLAG_SHIFT
#CV_SEQ_FLAG_HOLE                                     = 2 << #CV_SEQ_FLAG_SHIFT

#CV_FOURCC_PROMPT                                     = -1
#CV_FOURCC_DEFAULT                                    = 0

#CV_CAP_PROP_DC1394_OFF                               = -4
#CV_CAP_PROP_DC1394_MODE_MANUAL                       = -3
#CV_CAP_PROP_DC1394_MODE_AUTO                         = -2
#CV_CAP_PROP_DC1394_MODE_ONE_PUSH_AUTO                = -1
#CV_CAP_PROP_POS_MSEC                                 = 0 
#CV_CAP_PROP_POS_FRAMES                               = 1 
#CV_CAP_PROP_POS_AVI_RATIO                            = 2 
#CV_CAP_PROP_FRAME_WIDTH                              = 3 
#CV_CAP_PROP_FRAME_HEIGHT                             = 4 
#CV_CAP_PROP_FPS                                      = 5 
#CV_CAP_PROP_FOURCC                                   = 6 
#CV_CAP_PROP_FRAME_COUNT                              = 7 
#CV_CAP_PROP_FORMAT                                   = 8 
#CV_CAP_PROP_MODE                                     = 9 
#CV_CAP_PROP_BRIGHTNESS                               = 10
#CV_CAP_PROP_CONTRAST                                 = 11
#CV_CAP_PROP_SATURATION                               = 12
#CV_CAP_PROP_HUE                                      = 13
#CV_CAP_PROP_GAIN                                     = 14
#CV_CAP_PROP_EXPOSURE                                 = 15
#CV_CAP_PROP_CONVERT_RGB                              = 16
#CV_CAP_PROP_WHITE_BALANCE_BLUE_U                     = 17
#CV_CAP_PROP_RECTIFICATION                            = 18
#CV_CAP_PROP_MONOCROME                                = 19
#CV_CAP_PROP_SHARPNESS                                = 20
#CV_CAP_PROP_AUTO_EXPOSURE                            = 21
#CV_CAP_PROP_GAMMA                                    = 22
#CV_CAP_PROP_TEMPERATURE                              = 23
#CV_CAP_PROP_TRIGGER                                  = 24
#CV_CAP_PROP_TRIGGER_DELAY                            = 25
#CV_CAP_PROP_WHITE_BALANCE_RED_V                      = 26
#CV_CAP_PROP_ZOOM                                     = 27
#CV_CAP_PROP_FOCUS                                    = 28
#CV_CAP_PROP_GUID                                     = 29
#CV_CAP_PROP_ISO_SPEED                                = 30
#CV_CAP_PROP_MAX_DC1394                               = 31
#CV_CAP_PROP_BACKLIGHT                                = 32
#CV_CAP_PROP_PAN                                      = 33
#CV_CAP_PROP_TILT                                     = 34
#CV_CAP_PROP_ROLL                                     = 35
#CV_CAP_PROP_IRIS                                     = 36
#CV_CAP_PROP_SETTINGS                                 = 37
#CV_CAP_PROP_BUFFERSIZE                               = 38
#CV_CAP_PROP_AUTOGRAB                                 = 1024
#CV_CAP_PROP_SUPPORTED_PREVIEW_SIZES_STRING           = 1025
#CV_CAP_PROP_PREVIEW_FORMAT                           = 1026

#CV_CAP_OPENNI_DEPTH_GENERATOR                        = 1 << 31
#CV_CAP_OPENNI_IMAGE_GENERATOR                        = 1 << 30
#CV_CAP_OPENNI_GENERATORS_MASK                        = #CV_CAP_OPENNI_DEPTH_GENERATOR + #CV_CAP_OPENNI_IMAGE_GENERATOR

#CV_CAP_PROP_OPENNI_OUTPUT_MODE                       = 100
#CV_CAP_PROP_OPENNI_FRAME_MAX_DEPTH                   = 101
#CV_CAP_PROP_OPENNI_BASELINE                          = 102
#CV_CAP_PROP_OPENNI_FOCAL_LENGTH                      = 103
#CV_CAP_PROP_OPENNI_REGISTRATION                      = 104
#CV_CAP_PROP_OPENNI_REGISTRATION_ON                   = #CV_CAP_PROP_OPENNI_REGISTRATION
#CV_CAP_PROP_OPENNI_APPROX_FRAME_SYNC                 = 105
#CV_CAP_PROP_OPENNI_MAX_BUFFER_SIZE                   = 106
#CV_CAP_PROP_OPENNI_CIRCLE_BUFFER                     = 107
#CV_CAP_PROP_OPENNI_MAX_TIME_DURATION                 = 108
#CV_CAP_PROP_OPENNI_GENERATOR_PRESENT                 = 109
#CV_CAP_PROP_OPENNI2_SYNC                             = 110
#CV_CAP_PROP_OPENNI2_MIRROR                           = 111

#CV_CAP_OPENNI_IMAGE_GENERATOR_PRESENT                = #CV_CAP_OPENNI_IMAGE_GENERATOR + #CV_CAP_PROP_OPENNI_GENERATOR_PRESENT
#CV_CAP_OPENNI_IMAGE_GENERATOR_OUTPUT_MODE            = #CV_CAP_OPENNI_IMAGE_GENERATOR + #CV_CAP_PROP_OPENNI_OUTPUT_MODE
#CV_CAP_OPENNI_DEPTH_GENERATOR_BASELINE               = #CV_CAP_OPENNI_DEPTH_GENERATOR + #CV_CAP_PROP_OPENNI_BASELINE
#CV_CAP_OPENNI_DEPTH_GENERATOR_FOCAL_LENGTH           = #CV_CAP_OPENNI_DEPTH_GENERATOR + #CV_CAP_PROP_OPENNI_FOCAL_LENGTH
#CV_CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION           = #CV_CAP_OPENNI_DEPTH_GENERATOR + #CV_CAP_PROP_OPENNI_REGISTRATION
#CV_CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION_ON        = #CV_CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION

#CV_CAP_GSTREAMER_QUEUE_LENGTH                        = 200

#CV_CAP_PROP_PVAPI_MULTICASTIP                        = 300
#CV_CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE              = 301
#CV_CAP_PROP_PVAPI_DECIMATIONHORIZONTAL               = 302
#CV_CAP_PROP_PVAPI_DECIMATIONVERTICAL                 = 303
#CV_CAP_PROP_PVAPI_BINNINGX                           = 304
#CV_CAP_PROP_PVAPI_BINNINGY                           = 305
#CV_CAP_PROP_PVAPI_PIXELFORMAT                        = 306

#CV_CAP_PROP_XI_DOWNSAMPLING                          = 400
#CV_CAP_PROP_XI_DATA_FORMAT                           = 401
#CV_CAP_PROP_XI_OFFSET_X                              = 402
#CV_CAP_PROP_XI_OFFSET_Y                              = 403
#CV_CAP_PROP_XI_TRG_SOURCE                            = 404
#CV_CAP_PROP_XI_TRG_SOFTWARE                          = 405
#CV_CAP_PROP_XI_GPI_SELECTOR                          = 406
#CV_CAP_PROP_XI_GPI_MODE                              = 407
#CV_CAP_PROP_XI_GPI_LEVEL                             = 408
#CV_CAP_PROP_XI_GPO_SELECTOR                          = 409
#CV_CAP_PROP_XI_GPO_MODE                              = 410
#CV_CAP_PROP_XI_LED_SELECTOR                          = 411
#CV_CAP_PROP_XI_LED_MODE                              = 412
#CV_CAP_PROP_XI_MANUAL_WB                             = 413
#CV_CAP_PROP_XI_AUTO_WB                               = 414
#CV_CAP_PROP_XI_AEAG                                  = 415
#CV_CAP_PROP_XI_EXP_PRIORITY                          = 416
#CV_CAP_PROP_XI_AE_MAX_LIMIT                          = 417
#CV_CAP_PROP_XI_AG_MAX_LIMIT                          = 418
#CV_CAP_PROP_XI_AEAG_LEVEL                            = 419
#CV_CAP_PROP_XI_TIMEOUT                               = 420

#CV_CAP_PROP_ANDROID_FLASH_MODE                       = 8001
#CV_CAP_PROP_ANDROID_FOCUS_MODE                       = 8002
#CV_CAP_PROP_ANDROID_WHITE_BALANCE                    = 8003
#CV_CAP_PROP_ANDROID_ANTIBANDING                      = 8004
#CV_CAP_PROP_ANDROID_FOCAL_LENGTH                     = 8005
#CV_CAP_PROP_ANDROID_FOCUS_DISTANCE_NEAR              = 8006
#CV_CAP_PROP_ANDROID_FOCUS_DISTANCE_OPTIMAL           = 8007
#CV_CAP_PROP_ANDROID_FOCUS_DISTANCE_FAR               = 8008
#CV_CAP_PROP_ANDROID_EXPOSE_LOCK                      = 8009
#CV_CAP_PROP_ANDROID_WHITEBALANCE_LOCK                = 8010

#CV_CAP_PROP_IOS_DEVICE_FOCUS                         = 9001
#CV_CAP_PROP_IOS_DEVICE_EXPOSURE                      = 9002
#CV_CAP_PROP_IOS_DEVICE_FLASH                         = 9003
#CV_CAP_PROP_IOS_DEVICE_WHITEBALANCE                  = 9004
#CV_CAP_PROP_IOS_DEVICE_TORCH                         = 9005

#CV_CAP_PROP_GIGA_FRAME_OFFSET_X                      = 10001
#CV_CAP_PROP_GIGA_FRAME_OFFSET_Y                      = 10002
#CV_CAP_PROP_GIGA_FRAME_WIDTH_MAX                     = 10003
#CV_CAP_PROP_GIGA_FRAME_HEIGH_MAX                     = 10004
#CV_CAP_PROP_GIGA_FRAME_SENS_WIDTH                    = 10005
#CV_CAP_PROP_GIGA_FRAME_SENS_HEIGH                    = 10006

#CV_CAP_PROP_INTELPERC_PROFILE_COUNT                  = 11001
#CV_CAP_PROP_INTELPERC_PROFILE_IDX                    = 11002
#CV_CAP_PROP_INTELPERC_DEPTH_LOW_CONFIDENCE_VALUE     = 11003
#CV_CAP_PROP_INTELPERC_DEPTH_SATURATION_VALUE         = 11004
#CV_CAP_PROP_INTELPERC_DEPTH_CONFIDENCE_THRESHOLD     = 11005
#CV_CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_HORZ        = 11006
#CV_CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_VERT        = 11007

#CV_CAP_INTELPERC_DEPTH_GENERATOR                     = 1 << 29
#CV_CAP_INTELPERC_IMAGE_GENERATOR                     = 1 << 28
#CV_CAP_INTELPERC_GENERATORS_MASK                     = #CV_CAP_INTELPERC_DEPTH_GENERATOR + #CV_CAP_INTELPERC_IMAGE_GENERATOR

#CV_CAP_MODE_BGR                                      = 0
#CV_CAP_MODE_RGB                                      = 1
#CV_CAP_MODE_GRAY                                     = 2
#CV_CAP_MODE_YUYV                                     = 3

#CV_CAP_OPENNI_DEPTH_MAP                              = 0
#CV_CAP_OPENNI_POINT_CLOUD_MAP                        = 1
#CV_CAP_OPENNI_DISPARITY_MAP                          = 2
#CV_CAP_OPENNI_DISPARITY_MAP_32F                      = 3
#CV_CAP_OPENNI_VALID_DEPTH_MASK                       = 4
#CV_CAP_OPENNI_BGR_IMAGE                              = 5
#CV_CAP_OPENNI_GRAY_IMAGE                             = 6

#CV_CAP_OPENNI_VGA_30HZ                               = 0
#CV_CAP_OPENNI_SXGA_15HZ                              = 1
#CV_CAP_OPENNI_SXGA_30HZ                              = 2
#CV_CAP_OPENNI_QVGA_30HZ                              = 3
#CV_CAP_OPENNI_QVGA_60HZ                              = 4

#CV_CAP_INTELPERC_DEPTH_MAP                           = 0
#CV_CAP_INTELPERC_UVDEPTH_MAP                         = 1
#CV_CAP_INTELPERC_IR_MAP                              = 2
#CV_CAP_INTELPERC_IMAGE                               = 3

#CV_CAP_PROP_GPHOTO2_PREVIEW                          = 17001
#CV_CAP_PROP_GPHOTO2_WIDGET_ENUMERATE                 = 17002
#CV_CAP_PROP_GPHOTO2_RELOAD_CONFIG                    = 17003
#CV_CAP_PROP_GPHOTO2_RELOAD_ON_CHANGE                 = 17004
#CV_CAP_PROP_GPHOTO2_COLLECT_MSGS                     = 17005
#CV_CAP_PROP_GPHOTO2_FLUSH_MSGS                       = 17006
#CV_CAP_PROP_SPEED                                    = 17007
#CV_CAP_PROP_APERTURE                                 = 17008
#CV_CAP_PROP_EXPOSUREPROGRAM                          = 17009
#CV_CAP_PROP_VIEWFINDER                               = 17010

#CV_LOAD_IMAGE_UNCHANGED                              = -1
#CV_LOAD_IMAGE_GRAYSCALE                              = 0
#CV_LOAD_IMAGE_COLOR                                  = 1
#CV_LOAD_IMAGE_ANYDEPTH                               = 2
#CV_LOAD_IMAGE_ANYCOLOR                               = 4

#CV_IMWRITE_JPEG_QUALITY                              = 1
#CV_IMWRITE_PNG_COMPRESSION                           = 16
#CV_IMWRITE_PXM_BINARY                                = 32

#CV_EVENT_MOUSEMOVE                                   = 0
#CV_EVENT_LBUTTONDOWN                                 = 1
#CV_EVENT_RBUTTONDOWN                                 = 2
#CV_EVENT_MBUTTONDOWN                                 = 3
#CV_EVENT_LBUTTONUP                                   = 4
#CV_EVENT_RBUTTONUP                                   = 5
#CV_EVENT_MBUTTONUP                                   = 6
#CV_EVENT_LBUTTONDBLCLK                               = 7
#CV_EVENT_RBUTTONDBLCLK                               = 8
#CV_EVENT_MBUTTONDBLCLK                               = 9

#CV_EVENT_FLAG_LBUTTON                                = 1
#CV_EVENT_FLAG_RBUTTON                                = 2
#CV_EVENT_FLAG_MBUTTON                                = 4
#CV_EVENT_FLAG_CTRLKEY                                = 8
#CV_EVENT_FLAG_SHIFTKEY                               = 16
#CV_EVENT_FLAG_ALTKEY                                 = 32

#CV_INTER_NEAREST                                     = 0
#CV_INTER_LINEAR                                      = 1
#CV_INTER_CUBIC                                       = 2
#CV_INTER_AREA                                        = 3
#CV_INTER_LANCZOS4                                    = 4
#CV_INTER_MAX                                         = 7

#CV_WARP_FILL_OUTLIERS                                = 8
#CV_WARP_INVERSE_MAP                                  = 16

#CV_CVTIMG_DEFAULT                                    = 0
#CV_CVTIMG_FLIP                                       = 1
#CV_CVTIMG_SWAP_RB                                    = 2

#CV_LU                                                = 0
#CV_SVD                                               = 1
#CV_SVD_SYM                                           = 2

#DECOMP_LU                                            = 0
#DECOMP_SVD                                           = 1
#DECOMP_EIG                                           = 2
#DECOMP_CHOLESKY                                      = 3
#DECOMP_QR                                            = 4
#DECOMP_NORMAL                                        = 16

#NORM_INF                                             = 1
#NORM_L1                                              = 2
#NORM_L2                                              = 4
#NORM_TYPE_MASK                                       = 7
#NORM_RELATIVE                                        = 8
#NORM_MINMAX                                          = 32

#CMP_EQ                                               = 0
#CMP_GT                                               = 1
#CMP_GE                                               = 2
#CMP_LT                                               = 3
#CMP_LE                                               = 4
#CMP_NE                                               = 5

#GEMM_1_T                                             = 1
#GEMM_2_T                                             = 2
#GEMM_3_T                                             = 4

#DFT_FORWARD                                          = 0
#DFT_INVERSE                                          = 1
#DFT_SCALE                                            = 2
#DFT_ROWS                                             = 4
#DFT_COMPLEX_OUTPUT                                   = 16
#DFT_REAL_OUTPUT                                      = 32
#DCT_FORWARD                                          = #DFT_FORWARD
#DCT_INVERSE                                          = #DFT_INVERSE
#DCT_ROWS                                             = #DFT_ROWS

#IPL_DEPTH_SIGN                                       = $80000000
#IPL_DEPTH_1U                                         = 1
#IPL_DEPTH_8U                                         = 8
#IPL_DEPTH_16U                                        = 16
#IPL_DEPTH_32F                                        = 32
#IPL_DEPTH_8S                                         = #IPL_DEPTH_SIGN | 8
#IPL_DEPTH_16S                                        = #IPL_DEPTH_SIGN | 16
#IPL_DEPTH_32S                                        = #IPL_DEPTH_SIGN | 32
#IPL_DEPTH_64F                                        = 64

#IPL_DATA_ORDER_PIXEL                                 = 0
#IPL_DATA_ORDER_PLANE                                 = 1

#IPL_ORIGIN_TL                                        = 0
#IPL_ORIGIN_BL                                        = 1

#IPL_ALIGN_4BYTES                                     = 4
#IPL_ALIGN_8BYTES                                     = 8
#IPL_ALIGN_16BYTES                                    = 16
#IPL_ALIGN_32BYTES                                    = 32

#IPL_ALIGN_DWORD                                      = #IPL_ALIGN_4BYTES
#IPL_ALIGN_QWORD                                      = #IPL_ALIGN_8BYTES

#IPL_BORDER_CONSTANT                                  = 0
#IPL_BORDER_REPLICATE                                 = 1
#IPL_BORDER_REFLECT                                   = 2
#IPL_BORDER_WRAP                                      = 3
#IPL_BORDER_REFLECT_101                               = 4
#IPL_BORDER_TRANSPARENT                               = 5

#CV_DIST_MASK_PRECISE                                 = 0
#CV_DIST_MASK_3                                       = 3
#CV_DIST_MASK_5                                       = 5

#CV_DIST_LABEL_CCOMP                                  = 0
#CV_DIST_LABEL_PIXEL                                  = 1

#CV_DIST_USER                                         = -1
#CV_DIST_L1                                           = 1
#CV_DIST_L2                                           = 2
#CV_DIST_C                                            = 3
#CV_DIST_L12                                          = 4
#CV_DIST_FAIR                                         = 5
#CV_DIST_WELSCH                                       = 6
#CV_DIST_HUBER                                        = 7

#CV_THRESH_BINARY                                     = 0
#CV_THRESH_BINARY_INV                                 = 1
#CV_THRESH_TRUNC                                      = 2
#CV_THRESH_TOZERO                                     = 3
#CV_THRESH_TOZERO_INV                                 = 4
#CV_THRESH_MASK                                       = 7
#CV_THRESH_OTSU                                       = 8

#CV_ADAPTIVE_THRESH_MEAN_C                            = 0 
#CV_ADAPTIVE_THRESH_GAUSSIAN_C                        = 1

#CV_FLOODFILL_FIXED_RANGE                             = 1 << 16
#CV_FLOODFILL_MASK_ONLY                               = 1 << 17

#CV_CANNY_L2_GRADIENT                                 = 1 << 31

#CV_BGR2BGRA                                          = 0
#CV_RGB2RGBA                                          = #CV_BGR2BGRA
#CV_BGRA2BGR                                          = 1
#CV_RGBA2RGB                                          = #CV_BGRA2BGR
#CV_BGR2RGBA                                          = 2
#CV_RGB2BGRA                                          = #CV_BGR2RGBA
#CV_RGBA2BGR                                          = 3
#CV_BGRA2RGB                                          = #CV_RGBA2BGR
#CV_BGR2RGB                                           = 4
#CV_RGB2BGR                                           = #CV_BGR2RGB
#CV_BGRA2RGBA                                         = 5
#CV_RGBA2BGRA                                         = #CV_BGRA2RGBA
#CV_BGR2GRAY                                          = 6
#CV_RGB2GRAY                                          = 7
#CV_GRAY2BGR                                          = 8
#CV_GRAY2RGB                                          = #CV_GRAY2BGR
#CV_GRAY2BGRA                                         = 9
#CV_GRAY2RGBA                                         = #CV_GRAY2BGRA
#CV_BGRA2GRAY                                         = 10
#CV_RGBA2GRAY                                         = 11
#CV_BGR2BGR565                                        = 12
#CV_RGB2BGR565                                        = 13
#CV_BGR5652BGR                                        = 14
#CV_BGR5652RGB                                        = 15
#CV_BGRA2BGR565                                       = 16
#CV_RGBA2BGR565                                       = 17
#CV_BGR5652BGRA                                       = 18
#CV_BGR5652RGBA                                       = 19
#CV_GRAY2BGR565                                       = 20
#CV_BGR5652GRAY                                       = 21
#CV_BGR2BGR555                                        = 22
#CV_RGB2BGR555                                        = 23
#CV_BGR5552BGR                                        = 24
#CV_BGR5552RGB                                        = 25
#CV_BGRA2BGR555                                       = 26
#CV_RGBA2BGR555                                       = 27
#CV_BGR5552BGRA                                       = 28
#CV_BGR5552RGBA                                       = 29
#CV_GRAY2BGR555                                       = 30
#CV_BGR5552GRAY                                       = 31
#CV_BGR2XYZ                                           = 32
#CV_RGB2XYZ                                           = 33
#CV_XYZ2BGR                                           = 34
#CV_XYZ2RGB                                           = 35
#CV_BGR2YCrCb                                         = 36
#CV_RGB2YCrCb                                         = 37
#CV_YCrCb2BGR                                         = 38
#CV_YCrCb2RGB                                         = 39
#CV_BGR2HSV                                           = 40
#CV_RGB2HSV                                           = 41
#CV_BGR2Lab                                           = 44
#CV_RGB2Lab                                           = 45
#CV_BayerBG2BGR                                       = 46
#CV_BayerGB2BGR                                       = 47
#CV_BayerRG2BGR                                       = 48
#CV_BayerGR2BGR                                       = 49
#CV_BayerBG2RGB                                       = #CV_BayerRG2BGR
#CV_BayerGB2RGB                                       = #CV_BayerGR2BGR
#CV_BayerRG2RGB                                       = #CV_BayerBG2BGR
#CV_BayerGR2RGB                                       = #CV_BayerGB2BGR
#CV_BGR2Luv                                           = 50
#CV_RGB2Luv                                           = 51
#CV_BGR2HLS                                           = 52
#CV_RGB2HLS                                           = 53
#CV_HSV2BGR                                           = 54
#CV_HSV2RGB                                           = 55
#CV_Lab2BGR                                           = 56
#CV_Lab2RGB                                           = 57
#CV_Luv2BGR                                           = 58
#CV_Luv2RGB                                           = 59
#CV_HLS2BGR                                           = 60
#CV_HLS2RGB                                           = 61
#CV_BayerBG2BGR_VNG                                   = 62
#CV_BayerGB2BGR_VNG                                   = 63
#CV_BayerRG2BGR_VNG                                   = 64
#CV_BayerGR2BGR_VNG                                   = 65
#CV_BayerBG2RGB_VNG                                   = #CV_BayerRG2BGR_VNG
#CV_BayerGB2RGB_VNG                                   = #CV_BayerGR2BGR_VNG
#CV_BayerRG2RGB_VNG                                   = #CV_BayerBG2BGR_VNG
#CV_BayerGR2RGB_VNG                                   = #CV_BayerGB2BGR_VNG
#CV_BGR2HSV_FULL                                      = 66
#CV_RGB2HSV_FULL                                      = 67
#CV_BGR2HLS_FULL                                      = 68
#CV_RGB2HLS_FULL                                      = 69
#CV_HSV2BGR_FULL                                      = 70
#CV_HSV2RGB_FULL                                      = 71
#CV_HLS2BGR_FULL                                      = 72
#CV_HLS2RGB_FULL                                      = 73
#CV_LBGR2Lab                                          = 74
#CV_LRGB2Lab                                          = 75
#CV_LBGR2Luv                                          = 76
#CV_LRGB2Luv                                          = 77
#CV_Lab2LBGR                                          = 78
#CV_Lab2LRGB                                          = 79
#CV_Luv2LBGR                                          = 80
#CV_Luv2LRGB                                          = 81
#CV_BGR2YUV                                           = 82
#CV_RGB2YUV                                           = 83
#CV_YUV2BGR                                           = 84
#CV_YUV2RGB                                           = 85
#CV_BayerBG2GRAY                                      = 86
#CV_BayerGB2GRAY                                      = 87
#CV_BayerRG2GRAY                                      = 88
#CV_BayerGR2GRAY                                      = 89
#CV_YUV2RGB_NV12                                      = 90
#CV_YUV2BGR_NV12                                      = 91
#CV_YUV2RGB_NV21                                      = 92
#CV_YUV2BGR_NV21                                      = 93
#CV_YUV420sp2RGB                                      = #CV_YUV2RGB_NV21
#CV_YUV420sp2BGR                                      = #CV_YUV2BGR_NV21
#CV_YUV2RGBA_NV12                                     = 94
#CV_YUV2BGRA_NV12                                     = 95
#CV_YUV2RGBA_NV21                                     = 96
#CV_YUV2BGRA_NV21                                     = 97
#CV_YUV420sp2RGBA                                     = #CV_YUV2RGBA_NV21
#CV_YUV420sp2BGRA                                     = #CV_YUV2BGRA_NV21
#CV_YUV2RGB_YV12                                      = 98
#CV_YUV2BGR_YV12                                      = 99
#CV_YUV2RGB_IYUV                                      = 100
#CV_YUV2BGR_IYUV                                      = 101
#CV_YUV2RGB_I420                                      = #CV_YUV2RGB_IYUV
#CV_YUV2BGR_I420                                      = #CV_YUV2BGR_IYUV
#CV_YUV420p2RGB                                       = #CV_YUV2RGB_YV12
#CV_YUV420p2BGR                                       = #CV_YUV2BGR_YV12
#CV_YUV2RGBA_YV12                                     = 102
#CV_YUV2BGRA_YV12                                     = 103
#CV_YUV2RGBA_IYUV                                     = 104
#CV_YUV2BGRA_IYUV                                     = 105
#CV_YUV2RGBA_I420                                     = #CV_YUV2RGBA_IYUV
#CV_YUV2BGRA_I420                                     = #CV_YUV2BGRA_IYUV
#CV_YUV420p2RGBA                                      = #CV_YUV2RGBA_YV12
#CV_YUV420p2BGRA                                      = #CV_YUV2BGRA_YV12
#CV_YUV2GRAY_420                                      = 106
#CV_YUV2GRAY_NV21                                     = #CV_YUV2GRAY_420
#CV_YUV2GRAY_NV12                                     = #CV_YUV2GRAY_420
#CV_YUV2GRAY_YV12                                     = #CV_YUV2GRAY_420
#CV_YUV2GRAY_IYUV                                     = #CV_YUV2GRAY_420
#CV_YUV2GRAY_I420                                     = #CV_YUV2GRAY_420
#CV_YUV420sp2GRAY                                     = #CV_YUV2GRAY_420
#CV_YUV420p2GRAY                                      = #CV_YUV2GRAY_420
#CV_YUV2RGB_UYVY                                      = 107
#CV_YUV2BGR_UYVY                                      = 108
#CV_YUV2RGB_VYUY                                      = 109
#CV_YUV2BGR_VYUY                                      = 110
#CV_YUV2RGB_Y422                                      = #CV_YUV2RGB_UYVY
#CV_YUV2BGR_Y422                                      = #CV_YUV2BGR_UYVY
#CV_YUV2RGB_UYNV                                      = #CV_YUV2RGB_UYVY
#CV_YUV2BGR_UYNV                                      = #CV_YUV2BGR_UYVY
#CV_YUV2RGBA_UYVY                                     = 111
#CV_YUV2BGRA_UYVY                                     = 112
#CV_YUV2RGBA_VYUY                                     = 113
#CV_YUV2BGRA_VYUY                                     = 114
#CV_YUV2RGBA_Y422                                     = #CV_YUV2RGBA_UYVY
#CV_YUV2BGRA_Y422                                     = #CV_YUV2BGRA_UYVY
#CV_YUV2RGBA_UYNV                                     = #CV_YUV2RGBA_UYVY
#CV_YUV2BGRA_UYNV                                     = #CV_YUV2BGRA_UYVY
#CV_YUV2RGB_YUY2                                      = 115
#CV_YUV2BGR_YUY2                                      = 116
#CV_YUV2RGB_YVYU                                      = 117
#CV_YUV2BGR_YVYU                                      = 118
#CV_YUV2RGB_YUYV                                      = #CV_YUV2RGB_YUY2
#CV_YUV2BGR_YUYV                                      = #CV_YUV2BGR_YUY2
#CV_YUV2RGB_YUNV                                      = #CV_YUV2RGB_YUY2
#CV_YUV2BGR_YUNV                                      = #CV_YUV2BGR_YUY2
#CV_YUV2RGBA_YUY2                                     = 119
#CV_YUV2BGRA_YUY2                                     = 120
#CV_YUV2RGBA_YVYU                                     = 121
#CV_YUV2BGRA_YVYU                                     = 122
#CV_YUV2RGBA_YUYV                                     = #CV_YUV2RGBA_YUY2
#CV_YUV2BGRA_YUYV                                     = #CV_YUV2BGRA_YUY2
#CV_YUV2RGBA_YUNV                                     = #CV_YUV2RGBA_YUY2
#CV_YUV2BGRA_YUNV                                     = #CV_YUV2BGRA_YUY2
#CV_YUV2GRAY_UYVY                                     = 123
#CV_YUV2GRAY_YUY2                                     = 124
#CV_YUV2GRAY_VYUY                                     = #CV_YUV2GRAY_UYVY
#CV_YUV2GRAY_Y422                                     = #CV_YUV2GRAY_UYVY
#CV_YUV2GRAY_UYNV                                     = #CV_YUV2GRAY_UYVY
#CV_YUV2GRAY_YVYU                                     = #CV_YUV2GRAY_YUY2
#CV_YUV2GRAY_YUYV                                     = #CV_YUV2GRAY_YUY2
#CV_YUV2GRAY_YUNV                                     = #CV_YUV2GRAY_YUY2
#CV_RGBA2mRGBA                                        = 125
#CV_mRGBA2RGBA                                        = 126
#CV_RGB2YUV_I420                                      = 127
#CV_BGR2YUV_I420                                      = 128
#CV_RGB2YUV_IYUV                                      = #CV_RGB2YUV_I420
#CV_BGR2YUV_IYUV                                      = #CV_BGR2YUV_I420
#CV_RGBA2YUV_I420                                     = 129
#CV_BGRA2YUV_I420                                     = 130
#CV_RGBA2YUV_IYUV                                     = #CV_RGBA2YUV_I420
#CV_BGRA2YUV_IYUV                                     = #CV_BGRA2YUV_I420
#CV_RGB2YUV_YV12                                      = 131
#CV_BGR2YUV_YV12                                      = 132
#CV_RGBA2YUV_YV12                                     = 133
#CV_BGRA2YUV_YV12                                     = 134
#CV_COLORCVT_MAX                                      = 135

#CV_INPAINT_NS                                        = 0 
#CV_INPAINT_TELEA                                     = 1 

#CV_BLUR_NO_SCALE                                     = 0
#CV_BLUR                                              = 1
#CV_GAUSSIAN                                          = 2
#CV_MEDIAN                                            = 3
#CV_BILATERAL                                         = 4

#CV_GAUSSIAN_5x5                                      = 7

#CV_SCHARR                                            = -1
#CV_MAX_SOBEL_KSIZE                                   = 7

#CV_SHAPE_RECT                                        = 0
#CV_SHAPE_CROSS                                       = 1
#CV_SHAPE_ELLIPSE                                     = 2
#CV_SHAPE_CUSTOM                                      = 100

#CV_MORPH_OPEN                                        = 2
#CV_MORPH_CLOSE                                       = 3
#CV_MORPH_GRADIENT                                    = 4
#CV_MORPH_TOPHAT                                      = 5
#CV_MORPH_BLACKHAT                                    = 6

#CV_RETR_EXTERNAL                                     = 0
#CV_RETR_LIST                                         = 1
#CV_RETR_CCOMP                                        = 2
#CV_RETR_TREE                                         = 3

#CV_CHAIN_CODE                                        = 0
#CV_CHAIN_APPROX_NONE                                 = 1
#CV_CHAIN_APPROX_SIMPLE                               = 2
#CV_CHAIN_APPROX_TC89_L1                              = 3
#CV_CHAIN_APPROX_TC89_KCOS                            = 4
#CV_LINK_RUNS                                         = 5

#CV_FONT_HERSHEY_SIMPLEX                              = 0
#CV_FONT_HERSHEY_PLAIN                                = 1
#CV_FONT_HERSHEY_DUPLEX                               = 2
#CV_FONT_HERSHEY_COMPLEX                              = 3
#CV_FONT_HERSHEY_TRIPLEX                              = 4
#CV_FONT_HERSHEY_COMPLEX_SMALL                        = 5
#CV_FONT_HERSHEY_SCRIPT_SIMPLEX                       = 6
#CV_FONT_HERSHEY_SCRIPT_COMPLEX                       = 7
#CV_FONT_ITALIC                                       = 16

#CV_C                                                 = 1
#CV_L1                                                = 2
#CV_L2                                                = 4
#CV_NORM_MASK                                         = 7
#CV_RELATIVE                                          = 8
#CV_DIFF                                              = 16
#CV_MINMAX                                            = 32

#CV_DIFF_C                                            = #CV_DIFF | #CV_C
#CV_DIFF_L1                                           = #CV_DIFF | #CV_L1
#CV_DIFF_L2                                           = #CV_DIFF | #CV_L2
#CV_RELATIVE_C                                        = #CV_RELATIVE | #CV_C
#CV_RELATIVE_L1                                       = #CV_RELATIVE | #CV_L1
#CV_RELATIVE_L2                                       = #CV_RELATIVE | #CV_L2

#CV_8U                                                = 0
#CV_8S                                                = 1
#CV_16U                                               = 2
#CV_16S                                               = 3
#CV_32S                                               = 4
#CV_32F                                               = 5
#CV_64F                                               = 6
#CV_USRTYPE1                                          = 7

#CV_CN_SHIFT                                          = 3
#CV_CN_MAX                                            = 512
#CV_DEPTH_MAX                                         = 1 << #CV_CN_SHIFT
#CV_MAT_CN_MASK                                       = (#CV_CN_MAX - 1) << #CV_CN_SHIFT
#CV_MAT_DEPTH_MASK                                    = #CV_DEPTH_MAX - 1
#CV_MAT_TYPE_MASK                                     = #CV_DEPTH_MAX * #CV_CN_MAX - 1

#CV_MAT_CONT_FLAG_SHIFT                               = 14
#CV_MAT_CONT_FLAG                                     = 1 << #CV_MAT_CONT_FLAG_SHIFT

#CV_SUBDIV2D_VIRTUAL_POINT_FLAG                       = 1 << 30

Enumeration CvSubdiv2DPointLocation
  #CV_PTLOC_ERROR                                     = -2
  #CV_PTLOC_OUTSIDE_RECT                              = -1
  #CV_PTLOC_INSIDE                                    = 0
  #CV_PTLOC_VERTEX                                    = 1
  #CV_PTLOC_ON_EDGE                                   = 2
EndEnumeration

Enumeration CvNextEdgeType
  #CV_NEXT_AROUND_ORG                                 = $00
  #CV_NEXT_AROUND_DST                                 = $22
  #CV_PREV_AROUND_ORG                                 = $11
  #CV_PREV_AROUND_DST                                 = $33
  #CV_NEXT_AROUND_LEFT                                = $13
  #CV_NEXT_AROUND_RIGHT                               = $31
  #CV_PREV_AROUND_LEFT                                = $20
  #CV_PREV_AROUND_RIGHT                               = $02
EndEnumeration

#CV_FFMPEG_CAP_PROP_POS_MSEC                          = 0
#CV_FFMPEG_CAP_PROP_POS_FRAMES                        = 1
#CV_FFMPEG_CAP_PROP_POS_AVI_RATIO                     = 2
#CV_FFMPEG_CAP_PROP_FRAME_WIDTH                       = 3
#CV_FFMPEG_CAP_PROP_FRAME_HEIGHT                      = 4
#CV_FFMPEG_CAP_PROP_FPS                               = 5
#CV_FFMPEG_CAP_PROP_FOURCC                            = 6
#CV_FFMPEG_CAP_PROP_FRAME_COUNT                       = 7
; IDE Options = PureBasic 5.31 (Windows - x64)
; CursorPosition = 4
; DisableDebugger