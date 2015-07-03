.class public Lcom/htc/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/htc/fingerprint/IFingerprintAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;,
        Lcom/htc/fingerprint/FingerprintManager$FingerprintEvent;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final FINGERPRINT_DEFAULT_ENROLL_TIMES:I = 0x4

.field public static final FINGERPRINT_DEFAULT_USER:Ljava/lang/String; = "HTC_DEFAULT_USER_0"

.field public static final FINGERPRINT_PERMISSION:Ljava/lang/String; = "com.htc.permission.FINGERPRINT"

.field public static final FP_EVENT_TYPE_LISTENER:I = 0x1

.field public static final FP_EVT_ENROLL_CAPTURE_STATUS:I = 0x65

.field public static final FP_EVT_ENROLL_NEXT_CAPTURE_START:I = 0x64

.field public static final FP_EVT_FINGERPRINT_CAPTURED_BAD:I = 0x12d

.field public static final FP_EVT_IMAGE_QUALITY:I = 0x12c

.field public static final FP_EVT_SENSOR_FINGERPRINT_CAPTURE_START:I = 0xc8

.field public static final FP_EVT_SENSOR_READY_FOR_USE:I = 0x12e

.field public static final FP_EVT_SWIPE_END:I = 0xcb

.field public static final FP_EVT_SWIPE_START:I = 0xca

.field public static final FP_EVT_VERIFY_COMPLETED:I = 0xc9

.field public static final FP_FINGER_INDEX_LEFT_INDEX:I = 0x4

.field public static final FP_FINGER_INDEX_LEFT_LITTLE:I = 0x1

.field public static final FP_FINGER_INDEX_LEFT_MIDDLE:I = 0x3

.field public static final FP_FINGER_INDEX_LEFT_RING:I = 0x2

.field public static final FP_FINGER_INDEX_LEFT_THUMB:I = 0x5

.field public static final FP_FINGER_INDEX_RIGHT_INDEX:I = 0x7

.field public static final FP_FINGER_INDEX_RIGHT_LITTLE:I = 0xa

.field public static final FP_FINGER_INDEX_RIGHT_MIDDLE:I = 0x8

.field public static final FP_FINGER_INDEX_RIGHT_RING:I = 0x9

.field public static final FP_FINGER_INDEX_RIGHT_THUMB:I = 0x6

.field public static final FP_FINGER_LEFT_INDEX:I = 0x10

.field public static final FP_FINGER_LEFT_LITTLE:I = 0x2

.field public static final FP_FINGER_LEFT_MIDDLE:I = 0x8

.field public static final FP_FINGER_LEFT_RING:I = 0x4

.field public static final FP_FINGER_LEFT_THUMB:I = 0x20

.field public static final FP_FINGER_NOT_USED:I = 0x0

.field public static final FP_FINGER_RIGHT_INDEX:I = 0x80

.field public static final FP_FINGER_RIGHT_LITTLE:I = 0x400

.field public static final FP_FINGER_RIGHT_MIDDLE:I = 0x100

.field public static final FP_FINGER_RIGHT_RING:I = 0x200

.field public static final FP_FINGER_RIGHT_THUMB:I = 0x40

.field public static final FP_IMAGE_QUALITY_BASELINE_DATA_INVALID:I = 0x400000

.field public static final FP_IMAGE_QUALITY_FINGER_OFFSET:I = 0x1000

.field public static final FP_IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_LEFT:I = 0x20000

.field public static final FP_IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_RIGHT:I = 0x40000

.field public static final FP_IMAGE_QUALITY_FINGER_TOO_THIN:I = 0x2000000

.field public static final FP_IMAGE_QUALITY_GOOD:I = 0x0

.field public static final FP_IMAGE_QUALITY_NOT_A_FINGER_SWIPE:I = 0x200000

.field public static final FP_IMAGE_QUALITY_PRESSURE_TOO_HARD:I = 0x80000

.field public static final FP_IMAGE_QUALITY_PRESSURE_TOO_LIGHT:I = 0x10000

.field public static final FP_IMAGE_QUALITY_PROCESS_FAILED:I = -0x80000000

.field public static final FP_IMAGE_QUALITY_SKEW_TOO_LARGE:I = 0x8000

.field public static final FP_IMAGE_QUALITY_STICTION:I = 0x1

.field public static final FP_IMAGE_QUALITY_TOO_FAST:I = 0x2

.field public static final FP_IMAGE_QUALITY_TOO_SHORT:I = 0x4

.field public static final FP_IMAGE_QUALITY_TOO_SLOW:I = 0x10

.field public static final FP_IMAGE_QUALITY_WET_FINGER:I = 0x1000000

.field public static final FP_RESULT_FAILED:I = -0x1

.field public static final FP_RESULT_OK:I = 0x0

.field public static final FP_RESULT_OPERATION_CANCELLED:I = 0x1

.field public static final FP_RESULT_SENSOR_BUSY:I = 0x4

.field public static final FP_RESULT_SERVICE_NOT_RUNNING:I = 0x3

.field public static final FP_RESULT_SYSTEM_SECURITY_ALERT:I = 0x5

.field public static final FP_RESULT_UNKNOWN_CODE:I = -0x2

.field public static final FP_RESULT_USER_FINGER_ALREADY_ENROLLED:I = 0x2

.field public static final FP_SENSOR_NONE:I = 0x0

.field public static final FP_SENSOR_NOT_INITIAL:I = -0x1

.field public static final FP_SENSOR_VALIDITY:I = 0x1

.field public static final FP_VERIFY_PRIORITY_HIGH:I = 0x2

.field public static final FP_VERIFY_PRIORITY_LOW:I = 0x1

.field public static final SENSOR_CODE_PATH:Ljava/lang/String; = "/sys/module/vfsSpiDrv/parameters/fp_mount"

.field public static final TAG:Ljava/lang/String; = "FingerprintManager"

.field private static sSensorCode:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

.field private mVendorEventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/htc/fingerprint/FingerprintManager;->sSensorCode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mVendorEventType:I

    iput-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fingerprint/FingerprintManager;->mVendorEventType:I

    iput-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/fingerprint/FingerprintManager;->mFingerprintVendor:Lcom/htc/fingerprint/FingerprintVendor;

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static PrintLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private getFingerprintVendor(Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)Lcom/htc/fingerprint/FingerprintVendor;
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasFingerprint()I
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public cleanUp()V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public convertEnrollCaptureStatus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public convertVerifyResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(I)Z
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public enroll(I)I
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getEnrollTimes()I
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getEnrolledFingerList()I
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getEventType()I
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Lcom/htc/fingerprint/FingerprintManager$IFingerprintListener;)V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNavigationEnable(Z)I
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public verify()I
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public verify(I)I
    .locals 2

    const-string v0, "FingerprintManager"

    const-string v1, "Unsupported Feature!!"

    invoke-static {v0, v1}, Lcom/htc/fingerprint/FingerprintManager;->PrintLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method
