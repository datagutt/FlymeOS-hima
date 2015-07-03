.class final Lcom/android/server/display/HtcAngleDetector;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/HtcAngleDetector$Callbacks;,
        Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;,
        Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;,
        Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;,
        Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;,
        Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;,
        Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;,
        Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
    }
.end annotation


# static fields
.field private static IS_ANGLE_DETECTOR_ENABLE:Z = false

.field private static IS_DETECTOR_ALWAYS_ENABLE:Z = false

.field private static IS_ENABLE_DETECTOR_GYRO:Z = false

.field private static gravityBuffer:[F = null

.field private static gyroXBuffer:[F = null

.field private static gyroYBuffer:[F = null

.field private static gyroZBuffer:[F = null

.field private static mAcceSensorBufferPointer:I = 0x0

.field private static final mAcceSensorBufferSize:I = 0xa

.field private static mGyroSensorBufferPointer:I = 0x0

.field private static final mGyroSensorBufferSize:I = 0xa

.field private static omegaMagnitudeBuffer:[F

.field private static projXZBuffer:[F

.field private static xAngleBuffer:[I

.field private static yAngleBuffer:[I

.field private static zAngleBuffer:[I


# instance fields
.field private ANGLE_TOLERANCE:I

.field private BUFFER_DEBUG_SWITCH:Z

.field private DEBUG_ON:Z

.field private FLAT_X_ANGLE_FROM:I

.field private FLAT_X_ANGLE_TO:I

.field private FLAT_Y_ANGLE_FROM:I

.field private FLAT_Y_ANGLE_TO:I

.field private FLAT_Z_ANGLE_FROM:I

.field private FLAT_Z_ANGLE_TO:I

.field private GRAVITY_TOLERANCE:I

.field private GYRO_AWAKE_OMEGA:F

.field private GYRO_AWAKE_X:F

.field private GYRO_AWAKE_Y:F

.field private GYRO_AWAKE_Z:F

.field private GYRO_TALKING_OMEGA:F

.field private GYRO_TALKING_X:F

.field private GYRO_TALKING_Y:F

.field private GYRO_TALKING_Z:F

.field private final INIT_ANGLE:I

.field private LAST_ANGLE_TOLERANCE:I

.field private final MASTER_ENABLE:Z

.field private final ONE_EIGHTY_OVER_PI:F

.field private final PROXIMITY_NEGATIVE:I

.field private final PROXIMITY_POSITIVE:I

.field private final PROXIMITY_UNKNOWN:I

.field private READING_DEBOUNCE_COUNTER:I

.field private READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

.field private READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

.field private READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

.field private READING_PORTRAIT_X_ANGLE_FROM:I

.field private READING_PORTRAIT_X_ANGLE_TO:I

.field private READING_PORTRAIT_Y_ANGLE_FROM:I

.field private READING_PORTRAIT_Y_ANGLE_TO:I

.field private READING_PORTRAIT_Z_ANGLE_FROM:I

.field private READING_PORTRAIT_Z_ANGLE_TO:I

.field private SCREEN_TIMEOUT_DEFAULT:I

.field private SCREEN_TIMEOUT_READING:I

.field private SHAKING_GRAVITY:I

.field private final SP_ANGLE_TOLERANCE:Ljava/lang/String;

.field private final SP_BUFFER_DEBUG_SWITCH:Ljava/lang/String;

.field private final SP_FLAT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_FLAT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_FLAT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_GRAVITY_TOLERANCE:Ljava/lang/String;

.field private final SP_GYRO_AWAKE_OMEGA:Ljava/lang/String;

.field private final SP_GYRO_AWAKE_X:Ljava/lang/String;

.field private final SP_GYRO_AWAKE_Z:Ljava/lang/String;

.field private final SP_GYRO_TALKING_OMEGA:Ljava/lang/String;

.field private final SP_GYRO_TALKING_X:Ljava/lang/String;

.field private final SP_GYRO_TALKING_Z:Ljava/lang/String;

.field private final SP_READING_DEBOUNCE:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_SCREEN_TIMEOUT_DEFAULT:Ljava/lang/String;

.field private final SP_SCREEN_TIMEOUT_READING:Ljava/lang/String;

.field private final SP_SHAKING_GRAVITY:Ljava/lang/String;

.field private final SP_TALKING_DEBOUNCE:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_MOVEMENT_XZ:Ljava/lang/String;

.field private final SP_TALKING_PETER_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_PETER_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Z_ANGLE_TO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private TALKING_DEBOUNCE_COUNTER:I

.field private TALKING_LEFT_HAND_X_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_X_ANGLE_TO:I

.field private TALKING_LEFT_HAND_Y_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_Y_ANGLE_TO:I

.field private TALKING_LEFT_HAND_Z_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_Z_ANGLE_TO:I

.field private TALKING_MOVEMENT_XZ:F

.field private TALKING_PETER_Z_ANGLE_FROM:I

.field private TALKING_PETER_Z_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_X_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_X_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_Y_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_Z_ANGLE_TO:I

.field private final mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;

.field private final mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

.field private final mContext:Landroid/content/Context;

.field private final mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

.field private final mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

.field private final mGSensor:Landroid/hardware/Sensor;

.field private mGSensorEnabled:Z

.field private final mGSensorListener:Landroid/hardware/SensorEventListener;

.field private final mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

.field private final mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

.field private final mGyroSensor:Landroid/hardware/Sensor;

.field private mGyroSensorEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mInitCompleted:Z

.field private mIsCmpLastAngleTimeout:Z

.field private mIsGSensorTimeout:Z

.field private mIsGyroAwake:Z

.field private mIsGyroMoveTimeout:Z

.field private mIsPickupInTalking:Z

.field private final mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

.field private mIsPsensorNear:Z

.field private mIsReadingDetected:Z

.field private mIsScreenTimeout:Z

.field private mIsShakeAwake:Z

.field private mIsTalkingDetected:Z

.field private mIsTimeoutInReading:Z

.field private mLastXAngle:I

.field private mLastYAngle:I

.field private mLastZAngle:I

.field private mNear_xAngle:I

.field private mNear_yAngle:I

.field private mNear_zAngle:I

.field private mOld_xAngle:I

.field private mOld_yAngle:I

.field private mOld_zAngle:I

.field private mPSensorOn:Z

.field private mPSensorStatus:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReadingCounter:I

.field private mReleaseProximityWakeLockOn:Z

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

.field private mTalkingCounter:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0xa

    sput-boolean v2, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    sput-boolean v2, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    sput-boolean v2, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    new-array v0, v1, [I

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    sput v2, Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I

    sput v2, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/display/HtcAngleDetector$Callbacks;Landroid/hardware/SensorManager;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, -0xa

    const/16 v4, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "HtcAngleDetector"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    iput-boolean v6, p0, Lcom/android/server/display/HtcAngleDetector;->MASTER_ENABLE:Z

    const-string v1, "persist.htc.had.scr.default"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_SCREEN_TIMEOUT_DEFAULT:Ljava/lang/String;

    const-string v1, "persist.htc.had.scr.read"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_SCREEN_TIMEOUT_READING:Ljava/lang/String;

    const-string v1, "persist.htc.had.at"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_ANGLE_TOLERANCE:Ljava/lang/String;

    const-string v1, "persist.htc.had.gt"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GRAVITY_TOLERANCE:Ljava/lang/String;

    const-string v1, "persist.htc.had.sg"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_SHAKING_GRAVITY:Ljava/lang/String;

    const-string v1, "persist.htc.had.f.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_X_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.f.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_X_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.f.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.f.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_Y_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.f.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.f.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_Z_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.tr.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_X_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.tr.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_X_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.tr.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.tr.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Y_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.tr.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.tr.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Z_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.tl.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_X_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.tl.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_X_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.tl.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.tl.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Y_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.tl.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.tl.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Z_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.tp.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_PETER_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.tp.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_PETER_Z_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rp.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_X_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rp.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_X_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rp.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rp.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_Y_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rp.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rp.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_Z_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rlr.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rlr.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_X_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rlr.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rlr.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rlr.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rlr.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rll.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_X_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rll.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_X_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rll.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rll.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Y_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.rll.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:Ljava/lang/String;

    const-string v1, "persist.htc.had.rll.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Z_ANGLE_TO:Ljava/lang/String;

    const-string v1, "persist.htc.had.ga.omega"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_AWAKE_OMEGA:Ljava/lang/String;

    const-string v1, "persist.htc.had.ga.x"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_AWAKE_X:Ljava/lang/String;

    const-string v1, "persist.htc.had.ga.z"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_AWAKE_Z:Ljava/lang/String;

    const-string v1, "persist.htc.had.gt.omega"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_TALKING_OMEGA:Ljava/lang/String;

    const-string v1, "persist.htc.had.gt.x"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_TALKING_X:Ljava/lang/String;

    const-string v1, "persist.htc.had.gt.z"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_TALKING_Z:Ljava/lang/String;

    const-string v1, "persist.htc.had.tm.xz"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_MOVEMENT_XZ:Ljava/lang/String;

    const-string v1, "persist.htc.had.bds"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_BUFFER_DEBUG_SWITCH:Ljava/lang/String;

    const-string v1, "persist.htc.had.talk.debounce"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_DEBOUNCE:Ljava/lang/String;

    const-string v1, "persist.htc.had.read.debounce"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_DEBOUNCE:Ljava/lang/String;

    const v1, 0x42652ee1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->ONE_EIGHTY_OVER_PI:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->PROXIMITY_UNKNOWN:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->PROXIMITY_NEGATIVE:I

    iput v6, p0, Lcom/android/server/display/HtcAngleDetector;->PROXIMITY_POSITIVE:I

    const/16 v1, 0x7530

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    const v1, 0xea60

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->LAST_ANGLE_TOLERANCE:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    const/16 v1, -0xf

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    const/16 v1, -0xf

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    const/16 v1, 0x4b

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    const/16 v1, -0x5a

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    iput v5, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    const/16 v1, -0x2d

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    const/16 v1, 0x2d

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    const/16 v1, -0x2d

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    const/16 v1, 0x2d

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    const/16 v1, -0x5a

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    const/16 v1, -0x19

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    const/16 v1, -0x14

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    iput v5, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    iput v5, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    const/16 v1, -0x50

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    iput v5, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Y:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    const v1, 0x3fcccccd    # 1.6f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Y:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    new-instance v1, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    new-instance v1, Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    new-instance v1, Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    new-instance v1, Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    new-instance v1, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    new-instance v1, Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    new-instance v1, Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mScreenOn:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->INIT_ANGLE:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_xAngle:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_yAngle:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_zAngle:I

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z

    iput-object v2, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    new-instance v1, Lcom/android/server/display/HtcAngleDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/HtcAngleDetector$1;-><init>(Lcom/android/server/display/HtcAngleDetector;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAngleDetector"

    const-string v2, "Contructor: MASTER_ENABLE=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/display/HtcAngleDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HAD"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "HtcAngleDetector"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->readSysProp()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->checkHtcCustomizationReader()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "htcangledetector_is_angle_detector_enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "htcangledetector_is_enable_detector_gyro"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "htcangledetector_is_detector_always_enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_ANGLE_DETECTOR_ENABLE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS_ENABLE_DETECTOR_GYRO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS_DETECTOR_ALWAYS_ENABLE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize: Unable to get value from CustomizationReader. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acceleroMeterToString(F)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    :try_start_0
    const-string v2, "% 2.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceleroMeterToString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    return p1
.end method

.method static synthetic access$1400()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    sget v0, Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0

    sput p0, Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I

    return p0
.end method

.method static synthetic access$1600()[I
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I

    return-object v0
.end method

.method static synthetic access$1800()[I
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    return-object v0
.end method

.method static synthetic access$1900()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/HtcAngleDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isSamePose(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/display/HtcAngleDetector;F)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->isShaking(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/HtcAngleDetector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    return p1
.end method

.method static synthetic access$4508(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 2

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    return p1
.end method

.method static synthetic access$4608(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 2

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/HtcAngleDetector;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->isSameZAngle(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    return-object v0
.end method

.method static synthetic access$5300()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    return-object v0
.end method

.method static synthetic access$5400()I
    .locals 1

    sget v0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    return v0
.end method

.method static synthetic access$5402(I)I
    .locals 0

    sput p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    return p0
.end method

.method static synthetic access$5500()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    return-object v0
.end method

.method static synthetic access$5600()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    return-object v0
.end method

.method static synthetic access$5700()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isGyroShakeAwake()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isGyroAwakeMove()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isSameAngle(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isGyroTalkingMove()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/display/HtcAngleDetector;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->enableDetector(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_xAngle:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->LAST_ANGLE_TOLERANCE:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_yAngle:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_zAngle:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isReadingCmpLastAngle(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    return v0
.end method

.method static synthetic access$7000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/display/HtcAngleDetector;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    return-object v0
.end method

.method private angleToString(I)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    :try_start_0
    const-string v2, "% 2d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angleToString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCondition()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCondition: mInitCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPSensorOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPSensorStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsScreenTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v4}, Lcom/android/server/display/HtcAngleDetector;->enableDetector(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v3}, Lcom/android/server/display/HtcAngleDetector;->enableDetector(Z)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    if-ne v0, v4, :cond_1

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    iput-boolean v4, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "HtcAngleDetector"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    const-string v3, "HtcAngleDetector"

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "HtcAngleDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get HtcCustomization, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private enableDetector(Z)V
    .locals 7

    const/16 v6, 0xa

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget v3, p0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    invoke-direct {p0, v3}, Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V

    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    if-eq v3, v2, :cond_1

    iget-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcAngleDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDetector: mGSensorEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z

    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z

    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_5

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    sput v3, Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I

    const/4 v3, 0x0

    sput v3, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V

    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "HtcAngleDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDetector: Exception caught. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isActualScreenOn()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isActualScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActualScreenOn: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFlat(III)Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGravityBurst(F)Z
    .locals 4

    const v3, 0x411ce80a

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gravity burst detected. gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tolerance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGyroAwakeMove()Z
    .locals 10

    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x9

    rem-int/lit8 v1, v7, 0xa

    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x8

    rem-int/lit8 v2, v7, 0xa

    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x7

    rem-int/lit8 v3, v7, 0xa

    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v8, v8, v3

    add-float v0, v7, v8

    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v8, v8, v3

    add-float v4, v7, v8

    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v8, v8, v3

    add-float v5, v7, v8

    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v8, v8, v3

    add-float v6, v7, v8

    iget v7, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Y:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    neg-float v7, v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcAngleDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GyroAwake detected. Omega="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", xMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", yMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", zMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isGyroShakeAwake()Z
    .locals 7

    sget v4, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit8 v1, v4, 0xa

    sget v4, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v4, v4, 0x8

    rem-int/lit8 v2, v4, 0xa

    sget v4, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v4, v4, 0x7

    rem-int/lit8 v3, v4, 0xa

    sget-object v4, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v4, v4, v1

    sget-object v5, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v5, v5, v2

    add-float/2addr v4, v5

    sget-object v5, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v5, v5, v3

    add-float v0, v4, v5

    iget v4, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcAngleDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GyroShake detected. Omega="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isGyroTalkingMove()Z
    .locals 10

    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x9

    rem-int/lit8 v1, v7, 0xa

    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x8

    rem-int/lit8 v2, v7, 0xa

    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x7

    rem-int/lit8 v3, v7, 0xa

    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v8, v8, v3

    add-float v0, v7, v8

    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v8, v8, v3

    add-float v4, v7, v8

    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v8, v8, v3

    add-float v5, v7, v8

    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v8, v8, v3

    add-float v6, v7, v8

    iget v7, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Y:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcAngleDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GyroTalking detected. Omega="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", xMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", yMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", zMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isReading(III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isReadingViaPortrait(III)Z

    move-result v0

    return v0
.end method

.method private isReadingCmpLastAngle(III)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReading for CmpLastAngle detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaLandscapeLeft(III)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via landscape (key at left side) detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaLandscapeRight(III)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via landscape (key at right side) detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaPortrait(III)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via portrait detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameAngle(III)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I

    aget v4, v4, v3

    add-int/2addr v0, v4

    sget-object v4, Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I

    aget v4, v4, v3

    add-int/2addr v1, v4

    sget-object v4, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0xa

    div-int/lit8 v1, v1, 0xa

    div-int/lit8 v2, v2, 0xa

    sub-int v4, p1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v4, v5, :cond_2

    sub-int v4, p2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v4, v5, :cond_2

    sub-int v4, p3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v4, v5, :cond_2

    iget-boolean v4, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    const-string v4, "HtcAngleDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SameAngle: Skip. x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", z="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isSamePose(III)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0x3e8

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    iput p2, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    iput p3, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamePose: Skip. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSameZAngle(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0xa

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    if-ge p1, v2, :cond_2

    sub-int v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SameZAngle: z="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isShaking(F)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shaking detected. gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalking(III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isTalkingViaRightHand(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isTalkingViaLeftHand(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isTalkingViaPeterPose(III)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaLeftHand(III)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via left hand detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaPeterPose(III)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via peter pose detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaRightHand(III)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via right hand detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readSysProp()V
    .locals 57

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v17, v0

    :try_start_0
    const-string v54, "persist.htc.had.scr.default"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    const-string v54, "persist.htc.had.scr.read"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    const-string v54, "persist.htc.had.at"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    const-string v54, "persist.htc.had.gt"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    const-string v54, "persist.htc.had.sg"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    const-string v54, "persist.htc.had.f.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    const-string v54, "persist.htc.had.f.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    const-string v54, "persist.htc.had.f.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    const-string v54, "persist.htc.had.f.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    const-string v54, "persist.htc.had.f.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    const-string v54, "persist.htc.had.f.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    const-string v54, "persist.htc.had.tr.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    const-string v54, "persist.htc.had.tr.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    const-string v54, "persist.htc.had.tr.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    const-string v54, "persist.htc.had.tr.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    const-string v54, "persist.htc.had.tr.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    const-string v54, "persist.htc.had.tr.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    const-string v54, "persist.htc.had.tl.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    const-string v54, "persist.htc.had.tl.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    const-string v54, "persist.htc.had.tl.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    const-string v54, "persist.htc.had.tl.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    const-string v54, "persist.htc.had.tl.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    const-string v54, "persist.htc.had.tl.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    const-string v54, "persist.htc.had.tp.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    const-string v54, "persist.htc.had.tp.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    const-string v54, "persist.htc.had.rp.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rp.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    const-string v54, "persist.htc.had.rp.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rp.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    const-string v54, "persist.htc.had.rp.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rp.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    const-string v54, "persist.htc.had.rlr.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rlr.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    const-string v54, "persist.htc.had.rlr.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rlr.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    const-string v54, "persist.htc.had.rlr.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rlr.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    const-string v54, "persist.htc.had.rll.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rll.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    const-string v54, "persist.htc.had.rll.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rll.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    const-string v54, "persist.htc.had.rll.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    const-string v54, "persist.htc.had.rll.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    const-string v54, "persist.htc.had.ga.omega"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    const-string v54, "persist.htc.had.ga.x"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    const-string v54, "persist.htc.had.ga.z"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    const-string v54, "persist.htc.had.gt.omega"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    const-string v54, "persist.htc.had.gt.x"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    const-string v54, "persist.htc.had.gt.z"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    const-string v54, "persist.htc.had.tm.xz"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F

    const-string v54, "persist.htc.had.bds"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z

    const-string v54, "persist.htc.had.talk.debounce"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    const-string v54, "persist.htc.had.read.debounce"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    move/from16 v54, v0

    if-eqz v54, :cond_1

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: SCREEN_TIMEOUT_DEFAULT="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", SCREEN_TIMEOUT_READING="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", ANGLE_TOLERANCE="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", GRAVITY_TOLERANCE="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", SHAKING_GRAVITY="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: flat. X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: talking right hand. X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: talking left hand. X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: talking peter pose. Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: reading via portrait. X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: reading via landscape (key at right side). X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: reading via landscape (key at left side). X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: gyro awake threshold. OMEGA="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: gyro talking threshold. OMEGA="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: debounce. TALKING="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", READING="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    move/from16 v54, v0

    if-eqz v54, :cond_0

    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSysProp: Unable to get SystemProperties. "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private resetLastAngles()V
    .locals 1

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    return-void
.end method

.method private setScreenTimeout(I)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/PowerManager;->customizeScreenDelay_Always(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenTimeout: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected disableDetector_Ext()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAngleDetector;->enableDetector(Z)V

    return-void
.end method

.method protected isPsensorNear()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    return v0
.end method

.method protected isScreenTimeout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    return v0
.end method

.method protected isTalkingDetected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    return v0
.end method

.method protected isTurnOnScreenOnce()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    iput-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    iput-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected notifyReleaseProximityWakeLock(ZI)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nPWL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected notifyScreenTimeout(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    const-string v1, "notifyScreenTimeout: angle detector is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->checkCondition()V

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    goto :goto_1
.end method

.method protected proximitySensorOn(Z)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    const-string v1, "PSensorOn: angle detector is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSensorOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->checkCondition()V

    goto :goto_0
.end method

.method protected proximitySensorStatus(I)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    const-string v1, "PSensorStatus: angle detector is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSensorStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    if-ne v0, v3, :cond_4

    if-nez p1, :cond_4

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_xAngle:I

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_yAngle:I

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_zAngle:I

    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->checkCondition()V

    goto :goto_0
.end method
