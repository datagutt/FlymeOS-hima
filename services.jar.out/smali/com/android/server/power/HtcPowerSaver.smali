.class public Lcom/android/server/power/HtcPowerSaver;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcPowerSaver$HapticFeedback;,
        Lcom/android/server/power/HtcPowerSaver$Brightness;,
        Lcom/android/server/power/HtcPowerSaver$Feature;,
        Lcom/android/server/power/HtcPowerSaver$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

.field public static final KEY_SET_SCHEDULE:Ljava/lang/String; = "powersaver_set_schedule"

.field public static final KEY_STATUS:Ljava/lang/String; = "STATUS_POWER_SAVING_AUTO"

.field public static final KEY_USER_POWERSAVER_ENABLE:Ljava/lang/String; = "user_powersaver_enable"

.field public static final NORMAL_STATUS:I = 0x1f40

.field public static final POWERSAVER_STATUS:I = 0x1f41

.field public static final POWERSAVER_USER_ENABLED:I = 0x1f42

.field public static final STATUS_NORMAL:I = 0x1f40

.field public static final STATUS_NO_CHANGED:I = -0x1

.field public static final STATUS_POWER_SAVING_AUTO:I = 0x1f41

.field public static final STATUS_POWER_SAVING_MANUAL:I = 0x1f42

.field private static final TAG:Ljava/lang/String; = "HtcPowerSaver"

.field protected static final TAG_PREFIX:Ljava/lang/String; = "HtcPowerSaver-"


# instance fields
.field private final ACTION_AUTOMOTIVE_MODE_CHANGE:Ljava/lang/String;

.field private final AUTOMOTIVE_DISABLED:I

.field private final AUTOMOTIVE_ENABLED:I

.field private final AUTOMOTIVE_RECEIVER_PERMISSION:Ljava/lang/String;

.field private final DEFAULT_ENABLE:Z

.field private final DEFAULT_ENABLE_LEVEL:I

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_AUTO:I

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:I

.field private final DEFAULT_HTC_EXTREME_POWER_SAVER_STATE:I

.field private final DEFAULT_HTC_PERFORMANCE_MODE_STATE:I

.field private final DEFAULT_HTC_POWER_SAVER_STATE:I

.field private final DEFAULT_POWER_SAVING_PROFILE_CPU:I

.field private final DEFAULT_POWER_SAVING_PROFILE_HAPTIC:I

.field private final DEFAULT_POWER_SAVING_PROFILE_SCREEN:I

.field private final DEFAULT_USER_ENABLE:Z

.field private final HTC_CPU_EXTREME_POWERSAVER_MODE:I

.field private final HTC_CPU_NORMAL_MODE:I

.field private final HTC_CPU_PERFORMANCE_MODE:I

.field private final HTC_CPU_POWERSAVER_MODE:I

.field private final HTC_EXTREME_POWER_SAVER_AUTO_DISABLE:I

.field private final HTC_EXTREME_POWER_SAVER_AUTO_ENABLE:I

.field private final HTC_EXTREME_POWER_SAVER_STATE_DISABLE:I

.field private final HTC_EXTREME_POWER_SAVER_STATE_ENABLE:I

.field private final HTC_PERFORMANCE_MODE_STATE_DISABLE:I

.field private final HTC_PERFORMANCE_MODE_STATE_ENABLE:I

.field private final HTC_POWER_SAVER_STATE_DISABLE:I

.field private final HTC_POWER_SAVER_STATE_ENABLE:I

.field private final HTC_POWER_SAVING_FEATURE_CPU:I

.field private final HTC_POWER_SAVING_FEATURE_HAPTIC:I

.field private final HTC_POWER_SAVING_FEATURE_SCREEN:I

.field private final HTC_POWER_SAVING_PROFILE_CPU_DISABLE:I

.field private final HTC_POWER_SAVING_PROFILE_CPU_ENABLE:I

.field private final HTC_POWER_SAVING_PROFILE_HAPTIC_DISABLE:I

.field private final HTC_POWER_SAVING_PROFILE_HAPTIC_ENABLE:I

.field private final HTC_POWER_SAVING_PROFILE_SCREEN_DISABLE:I

.field private final HTC_POWER_SAVING_PROFILE_SCREEN_ENABLE:I

.field private final KEY_AUTOMOTIVE_CURRENT_MODE:Ljava/lang/String;

.field private final KEY_AUTO_MODE_ON:Ljava/lang/String;

.field private final KEY_EXTREME_AUTO_MODE_BATTERY_LEVEL:Ljava/lang/String;

.field private final KEY_EXTREME_AUTO_MODE_ON:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_AUTO:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:Ljava/lang/String;

.field private final KEY_HTC_EXTREME_POWER_SAVER_STATE:Ljava/lang/String;

.field private final KEY_HTC_PERFORMANCE_MODE_STATE:Ljava/lang/String;

.field private final KEY_POWERSAVER_SHARED:Ljava/lang/String;

.field private final KEY_POWER_SAVING_PROFILE_CPU:Ljava/lang/String;

.field private final KEY_POWER_SAVING_PROFILE_HAPTIC:Ljava/lang/String;

.field private final KEY_POWER_SAVING_PROFILE_SCREEN:Ljava/lang/String;

.field private final SYSPROP_POWERSAVER_GAP:Ljava/lang/String;

.field private final SYSPROP_POWERSAVER_STATUS:Ljava/lang/String;

.field private mAutoModeOn:Z

.field private mAutoMotiveMode:Z

.field private mBatteryInfoUpdated:Z

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBootCompleted:Z

.field private mBootNotify:Z

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private mCarMode:Z

.field private mContext:Landroid/content/Context;

.field private mExtremeAutoModeOn:Z

.field private mExtremePowerSaverAuto:I

.field private mExtremePowerSaverBatteryLevel:I

.field private mExtremePowerSaverState:I

.field private mFeatureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcPowerSaver$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastBatteryLevel:I

.field private mLastBatteryStatus:I

.field private mLastExtremePowerSaverState:I

.field private mLastOOBEState:I

.field private mLastPerformanceModeState:I

.field private mLastPlugType:I

.field private mLastPlugged:Z

.field private mLastPowerSaverSettingCPU:I

.field private mLastPowerSaverSettingHaptic:I

.field private mLastPowerSaverSettingScreen:I

.field private mLastPowerSaverState:I

.field private mLowBatteryWarningLevels:[I

.field private mOOBEState:I

.field private mPerformanceModeState:I

.field private mPlugType:I

.field private mPlugged:Z

.field private mPowerSaverSettingCPU:I

.field private mPowerSaverSettingHaptic:I

.field private mPowerSaverSettingScreen:I

.field private mPowerSaverState:I

.field private mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "powersaver.automode"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_AUTO_MODE_ON:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_ENABLE:Z

    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_USER_ENABLE:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_ENABLE_LEVEL:I

    const-string v0, "powersaver_shared"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_POWERSAVER_SHARED:Ljava/lang/String;

    const-string v0, "sys.psaver.stat"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->SYSPROP_POWERSAVER_STATUS:Ljava/lang/String;

    const-string v0, "sys.psaver.gap"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->SYSPROP_POWERSAVER_GAP:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    const-string v0, "htc_extreme_power_saver_state"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_STATE:Ljava/lang/String;

    const-string v0, "htc_extreme_power_saver_auto"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_AUTO:Ljava/lang/String;

    const-string v0, "htc_extreme_power_saver_battery_level"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:Ljava/lang/String;

    const-string v0, "htc_performance_mode_state"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_HTC_PERFORMANCE_MODE_STATE:Ljava/lang/String;

    const-string v0, "powersaver_reduce_CPU"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_POWER_SAVING_PROFILE_CPU:Ljava/lang/String;

    const-string v0, "powersaver_screen_brightness"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_POWER_SAVING_PROFILE_SCREEN:Ljava/lang/String;

    const-string v0, "powersaver_haptic_feedback"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_POWER_SAVING_PROFILE_HAPTIC:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_NORMAL_MODE:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_POWERSAVER_MODE:I

    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_EXTREME_POWERSAVER_MODE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_CPU_PERFORMANCE_MODE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_STATE_DISABLE:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_STATE_ENABLE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_STATE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVER_STATE_DISABLE:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVER_STATE_ENABLE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_POWER_SAVER_STATE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_AUTO_DISABLE:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_EXTREME_POWER_SAVER_AUTO_ENABLE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_AUTO:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_EXTREME_POWER_SAVER_BATTERY_LEVEL:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_CPU_DISABLE:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_CPU_ENABLE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_POWER_SAVING_PROFILE_CPU:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_SCREEN_DISABLE:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_SCREEN_ENABLE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_POWER_SAVING_PROFILE_SCREEN:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_HAPTIC_DISABLE:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_PROFILE_HAPTIC_ENABLE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_POWER_SAVING_PROFILE_HAPTIC:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_FEATURE_CPU:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_FEATURE_SCREEN:I

    iput v5, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_POWER_SAVING_FEATURE_HAPTIC:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_PERFORMANCE_MODE_STATE_DISABLE:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->HTC_PERFORMANCE_MODE_STATE_ENABLE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->DEFAULT_HTC_PERFORMANCE_MODE_STATE:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverState:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingCPU:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingScreen:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingHaptic:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    const-string v0, "powersaver.exautomode"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_EXTREME_AUTO_MODE_ON:Ljava/lang/String;

    const-string v0, "eps_battery_level"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_EXTREME_AUTO_MODE_BATTERY_LEVEL:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBootCompleted:Z

    const-string v0, "com.htc.permission.APP_DEFAULT"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_RECEIVER_PERMISSION:Ljava/lang/String;

    const-string v0, "com.htc.AutoMotive.Service.ModeChange"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->ACTION_AUTOMOTIVE_MODE_CHANGE:Ljava/lang/String;

    const-string v0, "AutoMotive_Current_Mode"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->KEY_AUTOMOTIVE_CURRENT_MODE:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_ENABLED:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->AUTOMOTIVE_DISABLED:I

    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoMotiveMode:Z

    iput-boolean v1, p0, Lcom/android/server/power/HtcPowerSaver;->mCarMode:Z

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/HtcPowerSaver;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/HtcPowerSaver$Brightness;

    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/HtcPowerSaver$Brightness;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->registerFeature(Lcom/android/server/power/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;

    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->registerFeature(Lcom/android/server/power/HtcPowerSaver$Feature;)V

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->initObserver()V

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->updateSettingsValue()V

    return-void

    :array_0
    .array-data 4
        0xe
        0x9
        0x4
        0x1
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcPowerSaver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->updateSettingsValue()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcPowerSaver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcPowerSaver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    return v0
.end method

.method private acquireCpuMode(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->nativeAcquireCpuMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcPowerSaver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private broadcastIntent(I)V
    .locals 5

    const-string v1, "com.htc.server.htcpowersaver.action.OFF"

    const/16 v2, 0x1f41

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1f42

    if-ne p1, v2, :cond_1

    :cond_0
    const-string v1, "com.htc.server.htcpowersaver.action.ON"

    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/HtcPowerSaver$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/HtcPowerSaver$2;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntent:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private buildHomeIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private changePowerSaverBehavior(IZ)V
    .locals 7

    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcPowerSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changePowerSaverBehavior ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    const-string v4, "HtcPowerSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcPowerSaver$Feature;

    if-eqz v1, :cond_3

    iget v4, v1, Lcom/android/server/power/HtcPowerSaver$Feature;->mFeatureId:I

    if-ne v4, p1, :cond_3

    if-eqz p2, :cond_4

    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    const-string v4, "HtcPowerSaver"

    const-string v5, "apply"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    # invokes: Lcom/android/server/power/HtcPowerSaver$Feature;->apply()Z
    invoke-static {v1}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$200(Lcom/android/server/power/HtcPowerSaver$Feature;)Z

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcPowerSaver;->sendIntentByFeature(IZ)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v4, :cond_5

    const-string v4, "HtcPowerSaver"

    const-string v5, "restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    # invokes: Lcom/android/server/power/HtcPowerSaver$Feature;->restore()V
    invoke-static {v1}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$300(Lcom/android/server/power/HtcPowerSaver$Feature;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "HtcPowerSaver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private entering()V
    .locals 4

    const-string v2, "HtcPowerSaver"

    const-string v3, "Entering..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcPowerSaver$Feature;

    # invokes: Lcom/android/server/power/HtcPowerSaver$Feature;->apply()Z
    invoke-static {v0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$200(Lcom/android/server/power/HtcPowerSaver$Feature;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCurrentStatus()I
    .locals 5

    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "STATUS_POWER_SAVING_AUTO"

    const/16 v4, 0x1f40

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :try_start_0
    const-string v3, "sys.psaver.stat"

    invoke-direct {p0, v2}, Lcom/android/server/power/HtcPowerSaver;->statusToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "HtcPowerSaver"

    const-string v4, "getCurrentStatus: Unable to set SystemProperties: sys.psaver.stat"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDialogId(IIZ)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p2, p1, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    :cond_1
    move v1, v2

    :goto_0
    const/16 v4, 0x10

    if-ge p2, v4, :cond_4

    :goto_1
    const/4 v0, -0x1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const/4 v0, 0x2

    :cond_2
    :goto_2
    return v0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_2
.end method

.method private getEnable()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaver_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSchedule()I
    .locals 5

    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "powersaver_set_schedule"

    const/16 v4, 0x10

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :try_start_0
    const-string v3, "sys.psaver.gap"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "HtcPowerSaver"

    const-string v4, "getSchedule: Unable to set SystemProperties: sys.psaver.gap"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSettingsValue()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcPowerSaver"

    const-string v1, "handleSettingsValue()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    :goto_0
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingCPU:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    if-ne v0, v2, :cond_7

    invoke-direct {p0, v2, v2}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingScreen:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    if-ne v0, v2, :cond_8

    invoke-direct {p0, v4, v2}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    :cond_2
    :goto_2
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingHaptic:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    if-ne v0, v2, :cond_9

    invoke-direct {p0, v5, v2}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    if-ne v0, v2, :cond_5

    invoke-direct {p0, v5}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    if-ne v0, v2, :cond_6

    invoke-direct {p0, v4}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/server/power/HtcPowerSaver;->acquireCpuMode(I)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v4, v3}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, v5, v3}, Lcom/android/server/power/HtcPowerSaver;->changePowerSaverBehavior(IZ)V

    goto :goto_3
.end method

.method private handleStatus(IZZ)I
    .locals 3

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    const/16 v0, 0x1f42

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->switchStatus(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x1f41

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1f42

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->entering()V

    :cond_1
    move v1, v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcPowerSaver;->broadcastIntent(I)V

    return v1

    :cond_3
    const/16 v0, 0x1f41

    goto :goto_0

    :cond_4
    const/16 v0, 0x1f40

    goto :goto_0
.end method

.method private initObserver()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcPowerSaver"

    const-string v2, "initObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "HtcPowerSaver"

    const-string v2, "init resolver = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "user_powersaver_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "powersaver_reduce_CPU"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "powersaver_screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "powersaver_haptic_feedback"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "htc_extreme_power_saver_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "htc_extreme_power_saver_auto"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "htc_extreme_power_saver_battery_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "htc_performance_mode_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "setup_wizard_has_run"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mSettingsObserver:Lcom/android/server/power/HtcPowerSaver$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private isForbidEnterAutoEPSMode()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isKidModeChildLockActive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcPowerSaver"

    const-string v2, "in Kid mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->isOOBEDone()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcPowerSaver"

    const-string v2, "in OOBE mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKidModeChildLockActive()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->buildHomeIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.zoodles.kidmode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isManunalEnable()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_powersaver_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isOOBEDone()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->isOOBEDone()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private leaving()V
    .locals 4

    const-string v2, "HtcPowerSaver"

    const-string v3, "Leaving..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcPowerSaver$Feature;

    # invokes: Lcom/android/server/power/HtcPowerSaver$Feature;->restore()V
    invoke-static {v0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$300(Lcom/android/server/power/HtcPowerSaver$Feature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private popDialog(I)V
    .locals 4

    if-lez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.powersaversetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "case"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelper(Landroid/content/Intent;)V

    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popDialog: Send intent : dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private popLowBatteryDialog(IIIZZ)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    array-length v1, v5

    if-nez p4, :cond_0

    if-ne p3, v4, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    aget v5, v5, v0

    if-gt p1, v5, :cond_3

    if-nez p5, :cond_2

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryLevel:I

    iget-object v6, p0, Lcom/android/server/power/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    aget v6, v6, v0

    if-le v5, v6, :cond_3

    :cond_2
    move v2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method private registerFeature(Lcom/android/server/power/HtcPowerSaver$Feature;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private restoreAutoModeOn()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    :try_start_0
    const-string v3, "powersaver.automode"

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-static {v0, v3, v4}, Landroid/provider/HtcISettingsSecure$Agent;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAutoModeOn: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAutoModeOn: Unable to get Settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreExtremeAutoModeOn()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    :try_start_0
    const-string v3, "powersaver.exautomode"

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-static {v0, v3, v4}, Landroid/provider/HtcISettingsSecure$Agent;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreExtremeAutoModeOn: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreExtremeAutoModeOn: Unable to get Settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveAutoModeOn()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v2, "powersaver.automode"

    iget-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-static {v0, v2, v3}, Landroid/provider/HtcISettingsSecure$Agent;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAutoModeOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAutoModeOn: Unable to set Settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveExtremeAutoModeOn()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v2, "powersaver.exautomode"

    iget-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-static {v0, v2, v3}, Landroid/provider/HtcISettingsSecure$Agent;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v2, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveExtremeAutoModeOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveExtremeAutoModeOn: Unable to set Settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastHelper(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/HtcPowerSaver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/HtcPowerSaver$1;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/HtcPowerSaver$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/HtcPowerSaver$3;-><init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendIntentByFeature(IZ)V
    .locals 5

    const-string v1, ""

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    if-eqz p2, :cond_1

    const-string v1, "com.htc.server.htcpowersaver.action.screenon"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendIntentByFeature:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v1, "com.htc.server.htcpowersaver.action.screenoff"

    goto :goto_0
.end method

.method private setEnable(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaver_enable"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v2, "sys.psaver.stat"

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPowerSaver;->statusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :catch_0
    move-exception v1

    const-string v2, "HtcPowerSaver"

    const-string v3, "setStatus: Unable to set SystemProperties: sys.psaver.stat"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private statusToString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    :pswitch_2
    const-string v0, "manual"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private switchStatus(I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->getCurrentStatus()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :goto_0
    return p1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPowerSaver;->setStatus(I)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->leaving()V

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->entering()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateSettingsValue()V
    .locals 7

    const/4 v6, -0x2

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcPowerSaver"

    const-string v4, "updateSettingsValue()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "HtcPowerSaver"

    const-string v4, "update resolver = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingCPU:I

    const-string v3, "powersaver_reduce_CPU"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingScreen:I

    const-string v3, "powersaver_screen_brightness"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingHaptic:I

    const-string v3, "powersaver_haptic_feedback"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverState:I

    const-string v3, "user_powersaver_enable"

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    const-string v3, "htc_extreme_power_saver_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    const-string v3, "htc_extreme_power_saver_auto"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    const-string v3, "htc_extreme_power_saver_battery_level"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    const-string v3, "htc_performance_mode_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    iget v3, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    const-string v3, "setup_wizard_has_run"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver:, mPerformanceModeState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPerformanceModeState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerSaverState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerSaverSettingCPU="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingCPU:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingCPU:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerSaverSettingScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerSaverSettingHaptic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPowerSaverSettingHaptic:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mPowerSaverSettingHaptic:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mExtremePowerSaverState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mExtremePowerSaverAuto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mExtremePowerSaverBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOOBEState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mLastOOBEState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcPowerSaver;->mOOBEState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->handleSettingsValue()V

    goto/16 :goto_0
.end method

.method private updateStatusLocked(IIZ)V
    .locals 20

    const-string v3, "HtcPowerSaver"

    const-string v4, ">> updateStatus"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->isForbidEnterAutoEPSMode()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverAuto:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    move/from16 v0, p1

    if-ge v0, v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcPowerSaver"

    const-string v4, "send EPS Auto on"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOn"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    move/from16 v0, v17

    if-eq v0, v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->saveExtremeAutoModeOn()V

    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->getCurrentStatus()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->getSchedule()I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPerformanceModeState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    move/from16 v16, v0

    move/from16 v0, p1

    if-ge v0, v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    if-nez v3, :cond_e

    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.AutoModeOn"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelper(Landroid/content/Intent;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    move/from16 v0, v16

    if-eq v0, v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->saveAutoModeOn()V

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_5

    const-string v3, "HtcPowerSaver"

    const-string v4, "entering from Extreme Power Saver Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->entering()V

    :cond_6
    :goto_3
    const/4 v12, -0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/HtcPowerSaver;->setEnable(Z)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->getEnable()Z

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->isManunalEnable()Z

    move-result v19

    move v11, v13

    if-eqz v19, :cond_11

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v9, v11, v1}, Lcom/android/server/power/HtcPowerSaver;->handleStatus(IZZ)I

    move-result v18

    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_8

    const-string v4, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PowerSaver ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v19, :cond_12

    const-string v3, "manual"

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " plugged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", enabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/power/HtcPowerSaver;->getDialogId(IIZ)I

    move-result v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryLevel:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugged:Z

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/HtcPowerSaver;->popLowBatteryDialog(IIIZZ)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/power/HtcPowerSaver;->popDialog(I)V

    :cond_9
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStatus ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverState:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastExtremePowerSaverState:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mBatteryStatus:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryStatus:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPlugType:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugType:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mPlugged:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugged:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    const-string v3, "HtcPowerSaver"

    const-string v4, "<< updateStatus"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremePowerSaverBatteryLevel:I

    move/from16 v0, p1

    if-lt v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_b

    const-string v3, "HtcPowerSaver"

    const-string v4, "send EPS Auto off"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOff"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mExtremeAutoModeOn:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->saveExtremeAutoModeOn()V

    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_d

    const-string v3, "HtcPowerSaver"

    const-string v4, "else send EPS Auto off"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOff"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_e
    move/from16 v0, p1

    if-lt v0, v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    if-eqz v3, :cond_3

    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HtcPowerSaver.AutoModeOff"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelper(Landroid/content/Intent;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/HtcPowerSaver;->mAutoModeOn:Z

    goto/16 :goto_2

    :cond_f
    sget-boolean v3, Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z

    if-eqz v3, :cond_10

    const-string v3, "HtcPowerSaver"

    const-string v4, "leaving from Extreme Power Saver Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcPowerSaver;->leaving()V

    goto/16 :goto_3

    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_12
    const-string v3, "auto"

    goto/16 :goto_5
.end method


# virtual methods
.method public bootCompletedNotify()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "HtcPowerSaver"

    const-string v1, "bootCompletedNotify"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mBootCompleted:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mBootNotify:Z

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->restoreAutoModeOn()V

    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver;->restoreExtremeAutoModeOn()V

    iget-boolean v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/HtcPowerSaver;->check()V

    :cond_0
    return-void
.end method

.method public check()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPowerSaver"

    const-string v1, "System is not ready. Skipping PowerSaver update."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "HtcPowerSaver"

    const-string v1, "Checking..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryStatus:I

    iget-boolean v2, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugged:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/HtcPowerSaver;->updateStatusLocked(IIZ)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBatteryInfo(Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, -0x1

    const-string v4, "HtcPowerSaver"

    const-string v5, "updateBatteryInfo"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "level"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "status"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "plugged"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    if-ne v0, v6, :cond_1

    const-string v4, "HtcPowerSaver"

    const-string v5, "Not found BatteryManager.EXTRA_LEVEL. Call with wrong Intent?"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryStatus:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryStatus:I

    iget v4, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastBatteryLevel:I

    iget v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugType:I

    iput v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugType:I

    iget-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugged:Z

    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mLastPlugged:Z

    iput v1, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryStatus:I

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryLevel:I

    iput v2, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugType:I

    iput-boolean v3, p0, Lcom/android/server/power/HtcPowerSaver;->mPlugged:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/HtcPowerSaver;->mBatteryInfoUpdated:Z

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
