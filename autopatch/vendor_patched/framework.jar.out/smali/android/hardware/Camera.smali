.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Coordinate;,
        Landroid/hardware/Camera$CameraMetaDataCallback;,
        Landroid/hardware/Camera$CameraDataCallback;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$Ot;,
        Landroid/hardware/Camera$OtDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$HtcCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_ALL_MSGS:I = 0xffff

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_HTC_CALLBACK:I = 0x8000

.field private static final CAMERA_MSG_META_DATA:I = 0x2000

.field private static final CAMERA_MSG_OT_METADATA:I = 0x4000

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_STATS_DATA:I = 0x1000

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field public static final CAMERA_STEREO_PROHIBIT:I = 0x3d0

.field private static final DEBUG:Z = false

.field private static final DTAG:Ljava/lang/String; = "Camera2Mode"

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static final HTC_CALLBACK_CAPTURE_RESULT:I = 0xd

.field private static final MASK_HTC_CALLBACK:I = 0x7fff

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Camera"

.field private static hasIspFrontCam:Z

.field private static hasSubCam:Z

.field private static sIndexOfFront:I

.field private static sIndexOfIspFront:I

.field private static sIndexOfMain:I

.field private static sIndexOfSub:I

.field private static sIsFront:Z

.field private static sIsMain:Z

.field private static sMainCam:Landroid/hardware/Camera;

.field private static sMainLooper:Landroid/os/Looper;

.field private static sSubCam:Landroid/hardware/Camera;

.field private static sSubCamParam:Landroid/hardware/Camera$Parameters;


# instance fields
.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

.field private mCameraId:I

.field private mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

.field private mConcateJpg:[B

.field private mEnableSubPreview:Z

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mHtcCallback:Landroid/hardware/Camera$HtcCallback;

.field private mHtcHDKCallback:Ljava/lang/Object;

.field private mIsMainCamPreviewing:Z

.field private mIsReleased:Z

.field private mIsSubCamChecked:Z

.field private mIsSubCamPreviewing:Z

.field private mIsSubCamTakePic:Z

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpg:[B

.field private mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private mMetadataPtr:J

.field private mNativeContext:J

.field private mOneShot:Z

.field private mOtListener:Landroid/hardware/Camera$OtDetectionListener;

.field private mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mUsingPreviewAllocation:Z

.field private mVteEnable:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    sput-boolean v0, Landroid/hardware/Camera;->hasIspFrontCam:Z

    sput-boolean v0, Landroid/hardware/Camera;->sIsMain:Z

    sput-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsReleased:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mVteEnable:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsReleased:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mVteEnable:Z

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsReleased:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mVteEnable:Z

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private static native _getNumberOfCameras()I
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _startPreview()V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)I
    .locals 1

    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Landroid/hardware/Camera;->sIndexOfFront:I

    return v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mJpg:[B

    return-object v0
.end method

.method static synthetic access$1002(Landroid/hardware/Camera;[B)[B
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mJpg:[B

    return-object p1
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mConcateJpg:[B

    return-object v0
.end method

.method static synthetic access$1102(Landroid/hardware/Camera;[B)[B
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mConcateJpg:[B

    return-object p1
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/Camera;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/Camera;->mVteEnable:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OtDetectionListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mOtListener:Landroid/hardware/Camera$OtDetectionListener;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$2500([BI)I
    .locals 1

    invoke-static {p0, p1}, Landroid/hardware/Camera;->byteToInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$HtcCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    return v0
.end method

.method static synthetic access$600()Landroid/hardware/Camera;
    .locals 1

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$700()Landroid/hardware/Camera;
    .locals 1

    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    return v0
.end method

.method static synthetic access$802(Landroid/hardware/Camera;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    return p1
.end method

.method static synthetic access$900(Landroid/hardware/Camera;[BLandroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->sendJpgCallback([BLandroid/hardware/Camera;)V

    return-void
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    return-void
.end method

.method private static byteToInt([BI)I
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private cameraInitNormal(I)I
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object v2, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    iput p1, p0, Landroid/hardware/Camera;->mCameraId:I

    iput-boolean v4, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    iput-object v2, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    iput-object v2, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setEventHandler(ILandroid/os/Looper;)V

    :goto_0
    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v3, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v2, v3, :cond_0

    sget-boolean v2, Landroid/hardware/Camera;->sIsFront:Z

    invoke-direct {p0, v5, v2}, Landroid/hardware/Camera;->setState(ZZ)V

    sput-object p0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    :cond_0
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v3, Landroid/hardware/Camera;->sIndexOfFront:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v3, Landroid/hardware/Camera;->sIndexOfIspFront:I

    if-ne v2, v3, :cond_2

    :cond_1
    sget-boolean v2, Landroid/hardware/Camera;->sIsMain:Z

    invoke-direct {p0, v2, v5}, Landroid/hardware/Camera;->setState(ZZ)V

    invoke-direct {p0, v4}, Landroid/hardware/Camera;->processSubCam(Z)V

    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, p2, v1}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v2

    return v2

    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setEventHandler(ILandroid/os/Looper;)V

    goto :goto_0

    :cond_4
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method public static checkInitErrors(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkIspCamera(I)I
    .locals 2

    const/4 v0, 0x0

    sget v1, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne p0, v1, :cond_0

    sget-boolean v1, Landroid/hardware/Camera;->sIsMain:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/hardware/Camera;->hasIspFrontCam:Z

    if-eqz v1, :cond_0

    sget p0, Landroid/hardware/Camera;->sIndexOfIspFront:I

    sget v1, Landroid/hardware/Camera;->sIndexOfIspFront:I

    sput v1, Landroid/hardware/Camera;->sIndexOfFront:I

    :cond_0
    sget v1, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne p0, v1, :cond_1

    sget-boolean v1, Landroid/hardware/Camera;->hasIspFrontCam:Z

    if-eqz v1, :cond_1

    :cond_1
    return p0
.end method

.method private enableDepthMode()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    sget-boolean v4, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iget-boolean v4, v4, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "enable_depth"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-ne v0, v2, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method private enableSubCam()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-lt p0, v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "wrong cameraId"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static getNumberOfCameras()I
    .locals 2

    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    :cond_1
    return v0
.end method

.method public static getNumberOfCameras_ssdTool(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v2, "com.htc.android.ssdtest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    # invokes: Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$3200(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    return-object v1
.end method

.method private getSubCamParameter()Landroid/hardware/Camera$Parameters;
    .locals 1

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    sput-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method private static isDisableSubCamByTest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isRecordingMode(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZoeMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 4

    const-string v3, "capture-mode"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "scene-mode"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "zoe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "zoe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_sendHistogramData()V
.end method

.method private final native native_sendMetaData()V
.end method

.method private final native native_setHistogramMode(Z)V
.end method

.method private final native native_setLongshot(Z)V
.end method

.method private final native native_setMetadataCb(Z)V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 8

    invoke-static {}, Landroid/hardware/Camera;->setCameraIndex()V

    sget v5, Landroid/hardware/Camera;->sIndexOfSub:I

    if-eq p0, v5, :cond_0

    sget v5, Landroid/hardware/Camera;->sIndexOfIspFront:I

    if-ne p0, v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "open wrong cameraId"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Landroid/hardware/Camera;->checkIspCamera(I)I

    move-result p0

    const/4 v4, 0x5

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v4, :cond_2

    :try_start_0
    new-instance v1, Landroid/hardware/Camera;

    invoke-direct {v1, p0}, Landroid/hardware/Camera;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_2
    return-object v0

    :catch_0
    move-exception v2

    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    if-ne v3, v4, :cond_3

    const-string v5, "Camera2Mode"

    const-string v6, "fail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Fail to connect to camera service"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method public static open_subCame_ssdTool(Landroid/content/Context;)Landroid/hardware/Camera;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/Camera;->setCameraIndex()V

    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.htc.android.ssdtest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/hardware/Camera;

    sget v2, Landroid/hardware/Camera;->sIndexOfSub:I

    invoke-direct {v1, v2}, Landroid/hardware/Camera;-><init>(I)V

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private processSubCam(Z)V
    .locals 2

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/hardware/Camera;->enableSubCam()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/Camera;

    sget v1, Landroid/hardware/Camera;->sIndexOfSub:I

    invoke-direct {v0, v1}, Landroid/hardware/Camera;-><init>(I)V

    sput-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/hardware/Camera;->releaseStaticSubCam()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    :cond_2
    return-void
.end method

.method private static releaseStaticSubCam()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->native_release()V

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/Camera;->mIsReleased:Z

    sput-object v2, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    sput-object v2, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    :cond_0
    return-void
.end method

.method private sendJpgCallback([BLandroid/hardware/Camera;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mJpg:[B

    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mConcateJpg:[B

    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mJpg:[B

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mConcateJpg:[B

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_2
    return-void
.end method

.method private static setCameraIndex()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->isDisableSubCamByTest()Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v3, Landroid/hardware/Camera;->hasSubCam:Z

    sput-boolean v2, Landroid/hardware/Camera;->hasIspFrontCam:Z

    :goto_0
    sput v2, Landroid/hardware/Camera;->sIndexOfMain:I

    sput v3, Landroid/hardware/Camera;->sIndexOfFront:I

    const/4 v0, 0x2

    sput v0, Landroid/hardware/Camera;->sIndexOfSub:I

    sput v4, Landroid/hardware/Camera;->sIndexOfIspFront:I

    return-void

    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/hardware/Camera;->isDisableSubCamByTest()Z

    move-result v0

    if-nez v0, :cond_1

    sput-boolean v3, Landroid/hardware/Camera;->hasSubCam:Z

    sput-boolean v3, Landroid/hardware/Camera;->hasIspFrontCam:Z

    goto :goto_0

    :cond_1
    sput-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    sput-boolean v2, Landroid/hardware/Camera;->hasIspFrontCam:Z

    goto :goto_0
.end method

.method private setEnableSubPreview(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfFront:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "recording-hint"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->isRecordingMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->isZoeMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    goto :goto_0
.end method

.method private setEventHandler(ILandroid/os/Looper;)V
    .locals 2

    sget v0, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne p1, v0, :cond_0

    sput-object p2, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    :cond_0
    sget v0, Landroid/hardware/Camera;->sIndexOfSub:I

    if-ne p1, v0, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/hardware/Camera$EventHandler;

    sget-object v1, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v1}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/hardware/Camera;->sIndexOfMain:I

    if-eq p1, v0, :cond_2

    sget v0, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne p1, v0, :cond_3

    :cond_2
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setParametersSubCam(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x280

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "no-display-mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "capture-mode"

    const-string v1, "capture-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video-size"

    const-string/jumbo v1, "video-size"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "front-camera-mode"

    const-string v1, "front-camera-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "force-use-audio-enabled"

    const-string v1, "force-use-audio-enabled"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cam-mode"

    const-string v1, "cam-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hdr-supported"

    const-string v1, "hdr-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video-720p60fps-supported"

    const-string/jumbo v1, "video-720p60fps-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video-slow-motion-supported"

    const-string/jumbo v1, "video-slow-motion-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video-hdr"

    const-string/jumbo v1, "video-hdr"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ois_support"

    const-string/jumbo v1, "ois_support"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video-slow-motion-supported"

    const-string/jumbo v1, "video-slow-motion-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video-stabilization-supported"

    const-string/jumbo v1, "video-stabilization-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "video-stabilization"

    const-string/jumbo v1, "video-stabilization"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sound-off"

    const-string/jumbo v1, "sound-off"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "antibanding"

    const-string v1, "antibanding"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "front-camera-mode"

    const-string v1, "front-camera-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "recording-hint"

    const-string/jumbo v1, "recording-hint"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cache-first-frame"

    const-string v1, "cache-first-frame"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "time-cons-post-processing"

    const-string/jumbo v1, "time-cons-post-processing"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method private setState(ZZ)V
    .locals 1

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean p1, Landroid/hardware/Camera;->sIsMain:Z

    sput-boolean p2, Landroid/hardware/Camera;->sIsFront:Z

    goto :goto_0
.end method

.method private startPreviewSubCam()V
    .locals 1

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->_startPreview()V

    :cond_0
    return-void
.end method

.method private stopPreviewSubCam()V
    .locals 1

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->_stopPreview()V

    :cond_0
    return-void
.end method

.method private takePictureSubCam()V
    .locals 2

    sget-boolean v1, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/hardware/Camera;->enableDepthMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x100

    :cond_2
    sget-object v1, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v1, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    goto :goto_0
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2

    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cameraInitUnspecified(I)I
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    new-instance v3, Landroid/renderscript/Type$Builder;

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    or-int/lit8 v5, p2, 0x20

    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 5

    if-nez p1, :cond_0

    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :catch_0
    move-exception v2

    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    return-void
.end method

.method public getCurrentFocusPosition()I
    .locals 4

    new-instance v1, Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    return-object v0
.end method

.method public getWBCurrentCCT()I
    .locals 4

    new-instance v1, Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final native lock()V
.end method

.method public final notifyVTE(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/hardware/Camera$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/Camera$1;-><init>(Landroid/hardware/Camera;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsReleased:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-ne v0, p0, :cond_3

    sget-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setState(ZZ)V

    invoke-static {}, Landroid/hardware/Camera;->releaseStaticSubCam()V

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    sput-object v3, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    sput-object v3, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsReleased:Z

    :cond_1
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    iget-boolean v0, p0, Landroid/hardware/Camera;->mVteEnable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->notifyVTE(Z)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne v0, v1, :cond_0

    sget-boolean v0, Landroid/hardware/Camera;->sIsMain:Z

    invoke-direct {p0, v0, v2}, Landroid/hardware/Camera;->setState(ZZ)V

    goto :goto_0
.end method

.method public final sendHistogramData()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendHistogramData()V

    return-void
.end method

.method public final sendMetaData()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendMetaData()V

    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-void
.end method

.method public final setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setHistogramMode(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setHtcCallback(Landroid/hardware/Camera$HtcCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    return-void
.end method

.method public final setHtcHDKCallback(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;

    return-void
.end method

.method public final setLongshot(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_setLongshot(Z)V

    return-void
.end method

.method public final setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setMetadataCb(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final setOtDetectionListener(Landroid/hardware/Camera$OtDetectionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mOtListener:Landroid/hardware/Camera$OtDetectionListener;

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    iget-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->setEnableSubPreview(Landroid/hardware/Camera$Parameters;)V

    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v2, :cond_2

    iput-object p1, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->setParametersSubCam(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public final native setPinchZoom(I)V
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Preview is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq v3, v4, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    return-void

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return-void
.end method

.method public final startPreview()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    invoke-direct {p0}, Landroid/hardware/Camera;->_startPreview()V

    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Landroid/hardware/Camera;->processSubCam(Z)V

    iget-object v0, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setParametersSubCam(Landroid/hardware/Camera$Parameters;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    :cond_0
    invoke-direct {p0}, Landroid/hardware/Camera;->startPreviewSubCam()V

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->notifyVTE(Z)V

    return-void
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return-void
.end method

.method public final stopPreview()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    invoke-direct {p0}, Landroid/hardware/Camera;->stopPreviewSubCam()V

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->notifyVTE(Z)V

    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 4

    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v1, p0, Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getNativeCameraMetadata()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/Camera;->mMetadataPtr:J

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x100

    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    invoke-direct {p0}, Landroid/hardware/Camera;->takePictureSubCam()V

    return-void

    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/Camera;->mMetadataPtr:J

    goto :goto_0
.end method

.method public final native unlock()V
.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
#    .locals 0
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .param p1, "x1"    # Landroid/hardware/Camera$PreviewCallback;
#    .prologue
#    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
#    return-object p1
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$400(Landroid/hardware/Camera;)Z
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z
#    return v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$500(Landroid/hardware/Camera;)Z
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z
#    return v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
#    .locals 0
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .param p1, "x1"    # Z
#    .param p2, "x2"    # Z
#    .prologue
#    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
#    return-void
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$800(Landroid/hardware/Camera;)Ljava/lang/Object;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
#    .locals 1
#    .param p0, "x0"    # Landroid/hardware/Camera;
#    .prologue
#    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
#    return-object v0
#.end method

.method private hook_cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    const/16 v0, 0x4c

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
