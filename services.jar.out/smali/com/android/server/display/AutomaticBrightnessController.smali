.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_ONE_SECOND:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I = 0x0

.field private static BRIGHTENING_LIGHT_DEBOUNCE:J = 0x0L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static DARKENING_BUTTON_LIGHT_DEBOUNCE:J = 0x0L

.field private static DARKENING_LIGHT_DEBOUNCE:J = 0x0L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final MSG_AUTO_BACKLIGHT_AVERAGE_SAMPLE:I = 0xb

.field private static final MSG_BUTTON_LIGHT_DEBOUNCED:I = 0xc

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SYS_PROP_AB_AVG_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.abavg.deb"

.field private static final SYS_PROP_AB_AVG_LOWER_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavg.lth"

.field private static final SYS_PROP_AB_AVG_MIN_THRESHOLD_VALUE:Ljava/lang/String; = "persist.htc.pms.minth"

.field private static final SYS_PROP_AB_AVG_STABLE_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.abavgs.deb"

.field private static final SYS_PROP_AB_AVG_STABLE_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavgs.th"

.field private static final SYS_PROP_AB_AVG_UPPER_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavg.uth"

.field private static final SYS_PROP_BRIGHTEN_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.brighten.ls"

.field private static final SYS_PROP_DARKEN_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.darken.ls"

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static USE_HTC_BACKLIGHT_MECHANISM:Z = false

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z = false

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final WEIGHTING_INTERCEPT:I = 0x2710

.field private static mPrevEBI:F


# instance fields
.field private mAmbientEBI:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mBrighteningLuxThreshold:F

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private mEBIToDisplayBrightnessTable:[I

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mLastAmbientEBI:F

.field private mLastAmbientEBITime:J

.field private mLastObservedEBI:F

.field private mLastObservedEBITime:J

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastSampleTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mRecentLightSamples:I

.field private mSampleFull:Z

.field private mSampleFullFirst:Z

.field private mSampleIndex:I

.field private mSampleLevel:[F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/16 v3, 0x3e8

    const/16 v2, 0x1f4

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    sput-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    const-wide/16 v0, 0x1f40

    sput-wide v0, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    sput-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_BUTTON_LIGHT_DEBOUNCE:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_HTC_BACKLIGHT_MECHANISM:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    sput v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SECOND:I

    sput v2, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    sput v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    const/16 v0, 0x1388

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I

    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    const/16 v0, 0xf

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I

    const v0, 0x3ee66666    # 0.45f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    const/16 v0, 0x2d

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    sput v2, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    const v0, 0x3e6b851f    # 0.23f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    const/16 v0, 0x17

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;III[I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->isUsingNewBacklightAlgorithm()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-direct {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v0, v1, v2}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->autoEBIAverageRuleInit()V

    iput-object p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->debounceButtonLight()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->handleEBIAverageSampleTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method private applyEBIAverageData()Z
    .locals 5

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "AutomaticBrightnessController"

    const-string v3, "aEBIAD start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    aput v4, v2, v3

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    aput v4, v2, v3

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyEBIAverageData exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    :cond_0
    return-void
.end method

.method private autoEBIAverageRuleInit()V
    .locals 12

    const/high16 v10, 0x42c80000    # 100.0f

    sget v1, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    sget v4, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    sget v7, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    sget v2, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    sget v6, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    :try_start_0
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    const-string v8, "persist.htc.pms.abavg.deb"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    div-int/2addr v8, v9

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    const-string v8, "persist.htc.pms.abavg.uth"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    const-string v8, "persist.htc.pms.abavg.lth"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    const-string v8, "persist.htc.pms.abavgs.deb"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    const-string v8, "persist.htc.pms.abavgs.th"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    const-string v8, "persist.htc.pms.minth"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    :cond_0
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    const/high16 v8, -0x40800000    # -1.0f

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aEBIARInit: sample=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_deb="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_sample_num="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_up_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_low_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_min_thvalue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_stb_deb="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_stb_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_1

    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoEBIAverageRuleInit exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private autoEBIAverageRuleReset()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aEBIARReset: sample=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoEBIAverageRuleReset exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private autoEBIAverageRuleStart(J)V
    .locals 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v2, 0xb

    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aEBIARStart: sample=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoEBIAverageRuleStart exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateAmbientLux(J)F
    .locals 13

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v10, "AutomaticBrightnessController"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v10, -0x40800000    # -1.0f

    :goto_0
    return v10

    :cond_0
    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v2, 0x64

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    add-float/2addr v8, v9

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    move-wide v2, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    div-float v10, v5, v8

    goto :goto_0
.end method

.method private static calculateWeight(JJ)F
    .locals 2

    invoke-static {p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenEBI(F)F
    .locals 3

    const v1, 0x477fff00    # 65535.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method private convertEBIToDisplayBrightnessAlgorithm(F)I
    .locals 7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v3, p1

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    const/4 v3, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    if-lez v4, :cond_6

    float-to-int v1, v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    if-lt v1, v4, :cond_1

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EBI index more than table = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    aget v2, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4, v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->clampScreenDisplayBrightness(I)I

    move-result v2

    :goto_2
    if-gez v2, :cond_3

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    const-string v4, "AutomaticBrightnessController"

    const-string v5, "screenDisplayBrightnessValue is -1"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EBIToDisBL=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    const v4, 0x477fff00    # 65535.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    const v3, 0x477fff00    # 65535.0f

    goto :goto_0

    :cond_6
    :try_start_1
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "mEBIToDisplayBrightnessTable is invalid"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v3, v5}, Landroid/util/FloatMath;->pow(FF)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertEBIToDisplayBrightnessAlgorithm exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "mCallbacks is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private debounceButtonLight()V
    .locals 3

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d-B-L="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-interface {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->debounceButtonLight(F)V

    :cond_1
    return-void
.end method

.method private getEBIAverageAlgorithm(F)F
    .locals 11

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    const-string v8, "AutomaticBrightnessController"

    const-string v9, "getEBIAverageAlgorithm start"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v2, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    mul-float v4, v2, v8

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    mul-float v7, v5, v8

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v4, v8

    :cond_1
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v7, v8

    :cond_2
    sub-float v3, v2, v4

    add-float v6, v5, v7

    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_3

    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBI 11 = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBIThreshold = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenEBI(F)F

    move-result v1

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_4

    const-string v8, "AutomaticBrightnessController"

    const-string v9, "EBI first update"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    :goto_0
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBIValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    return v0

    :cond_6
    cmpg-float v8, v6, v1

    if-lez v8, :cond_7

    cmpl-float v8, v3, v1

    if-ltz v8, :cond_8

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    sget v0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    goto :goto_0
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 10

    const-wide/32 v8, 0x6ddd00

    const-wide/16 v6, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    cmp-long v2, p2, v6

    if-ltz v2, :cond_0

    cmp-long v2, p4, v6

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0

    :cond_3
    sub-long v2, p4, v8

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleEBIAverageRuleUpdate()V
    .locals 10

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    const-string v6, "AutomaticBrightnessController"

    const-string v7, "hEBIARU start"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget v6, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    aget v6, v6, v2

    add-float/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget v6, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    int-to-float v6, v6

    div-float v0, v3, v6

    iget-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU first full pre=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    iput-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU first full aft=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_5

    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU prechk=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    sub-long v6, v4, v6

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientEBIAverageStable(F)Z

    move-result v6

    if-eqz v6, :cond_6

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    :cond_6
    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    iput-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    :cond_7
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU aftchk=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEBIAverageRuleUpdate exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleEBIAverageSampleTimeout()V
    .locals 14

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_0

    const-string v10, "AutomaticBrightnessController"

    const-string v11, "hEBIAST start"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    sub-long v2, v8, v10

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v10, v10

    cmp-long v10, v2, v10

    if-ltz v10, :cond_3

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v10, v10

    div-long v10, v2, v10

    long-to-int v7, v10

    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    sget v12, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    add-int/lit8 v13, v7, 0x1

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v10, v12

    sub-long v0, v10, v8

    :goto_0
    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-le v7, v10, :cond_2

    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_1

    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hEBIAST oC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v7, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->applyEBIAverageData()Z

    move-result v10

    or-int/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    sget v12, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    sub-long v0, v10, v8

    goto :goto_0

    :cond_4
    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    sub-long v10, v8, v10

    sget v12, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v11, 0xb

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_2
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_6

    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Time=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sample=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-long v10, v8, v0

    sget v12, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v12, v12

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->handleEBIAverageRuleUpdate()V

    :cond_7
    :goto_3
    return-void

    :cond_8
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_5

    const-string v10, "AutomaticBrightnessController"

    const-string v11, "hEBIAST no L c"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_7

    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleEBIAverageSampleTimeout exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientEBI(J)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    return-void
.end method

.method private isAmbientEBIAverageStable(F)Z
    .locals 7

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    const-string v4, "AutomaticBrightnessController"

    const-string v5, "iAEBIAS start"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    sget v4, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    mul-float/2addr v4, v0

    sub-float v1, v0, v4

    sget v4, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    mul-float/2addr v4, v2

    add-float v3, v2, v4

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iAEBIAS 11 = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    cmpg-float v4, v3, p1

    if-ltz v4, :cond_2

    cmpl-float v4, v1, p1

    if-lez v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    move-wide v2, p1

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    :cond_0
    sget-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    add-long/2addr v4, v2

    return-wide v4

    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    move-wide v2, p1

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    :cond_0
    sget-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    add-long/2addr v4, v2

    return-wide v4

    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setAmbientLux(F)V
    .locals 2

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "AutomaticBrightnessController"

    const-string v2, "Reg L Sensor"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    const v4, 0xf4240

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->autoEBIAverageRuleReset()V

    :cond_2
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    const-string v0, "AutomaticBrightnessController"

    const-string v2, "Unreg L Sensor"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAmbientEBI(J)V
    .locals 3

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "AutomaticBrightnessController"

    const-string v1, "uAEBI start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "AutomaticBrightnessController"

    const-string v1, "uAEBI 11"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->handleEBIAverageSampleTimeout()V

    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v14, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    cmp-long v5, p1, v12

    if-gez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->autoEBIAverageRuleStart(J)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    :cond_1
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    :cond_2
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->USE_HTC_BACKLIGHT_MECHANISM:Z

    if-nez v5, :cond_8

    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v6

    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v8

    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    cmp-long v5, v6, p1

    if-lez v5, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_6

    cmp-long v5, v8, p1

    if-gtz v5, :cond_6

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v5, :cond_5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v6

    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v8

    :cond_6
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    cmp-long v5, v10, p1

    if-lez v5, :cond_7

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_7
    const-wide/16 v14, 0x3e8

    add-long v10, p1, v14

    goto :goto_1

    :cond_8
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxForHtc(J)V

    goto/16 :goto_0
.end method

.method private updateAmbientLuxForHtc(J)V
    .locals 11

    const/16 v9, 0xc

    const/4 v8, 0x1

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_0

    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    add-long v2, v4, v6

    cmp-long v4, p1, v2

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v8, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAmbientLux to brighter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-direct {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v4, :cond_1

    invoke-direct {p0, v8}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_4

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    :cond_4
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    add-long v2, v4, v6

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_BUTTON_LIGHT_DEBOUNCE:J

    add-long v0, v4, v6

    cmp-long v4, p1, v2

    if-gez v4, :cond_6

    cmp-long v4, p1, v0

    if-gtz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v9, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_5
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v8, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_6
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAmbientLux to darker = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-direct {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v4, :cond_1

    invoke-direct {p0, v8}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    goto :goto_0

    :cond_7
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZI)V

    return-void
.end method

.method private static weightIntegral(J)F
    .locals 4

    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return v0
.end method

.method public initalizeDebounceTime()V
    .locals 10

    sget-wide v2, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    sget-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "persist.htc.pms.brighten.ls"

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    invoke-static {v1, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    const-string v1, "persist.htc.pms.darken.ls"

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-static {v1, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v1, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialize:, brighten_ls_debounce="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", darken_ls_debounce="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initalizeDebounceTime fail, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateAutoBrightness(ZI)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v17

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    neg-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v9

    mul-float/2addr v12, v9

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness1: adjGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v4}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v14

    mul-float v4, v11, v14

    mul-float/2addr v12, v4

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness2: earlyGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lateGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->getEBIAverageAlgorithm(F)F

    move-result v18

    :cond_4
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v12, v4

    if-eqz v4, :cond_5

    move/from16 v13, v17

    move/from16 v0, v17

    invoke-static {v0, v12}, Landroid/util/MathUtils;->pow(FF)F

    move-result v17

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_5

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness3: gamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", in="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", out="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v17

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v15

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->convertEBIToDisplayBrightnessAlgorithm(F)I

    move-result v15

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getButtonValue(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4, v10}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->setButtonValue(I)V

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ne v4, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getCurrentBrightness()I

    move-result v4

    if-eq v4, v15, :cond_0

    :cond_8
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_9

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness4: mScreenAutoBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newScreenAutoBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    move/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness(I)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-interface {v4, v8, v5}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getBrightnessBaseOnAlgorithm(ILandroid/util/Spline;)F

    move-result v17

    goto/16 :goto_1
.end method
