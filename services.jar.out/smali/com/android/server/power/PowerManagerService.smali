.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$PMS2Handler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_OOBE_TIMEOUT:Ljava/lang/String; = "com.htc.oobe.OOBE_TIMEOUT"

.field private static final ATT_OOBE_R2G_HOME_ACTIVITY:Ljava/lang/String; = "com.synchronoss.dcs.att.r2g.DCSMainActivity"

.field private static final ATT_OOBE_R2G_PACKAGE_NAME:Ljava/lang/String; = "com.synchronoss.dcs.att.r2g"

.field private static final CPU_LOCK_MASK:I = 0xf000

.field private static final DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final DEBUG_SECURITY_ON:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final DESKDOCK_MILLISECOND_PER_UNIT:I = 0xea60

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static DISABLE_LOW_POWER_MODE:Z = false

.field private static final HTC_OOBE_HOME_ACTIVITY:Ljava/lang/String; = "com.htc.android.htcsetupwizard.MainActivity"

.field private static final HTC_OOBE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.android.htcsetupwizard"

.field private static final HTC_OOBE_USER_OPERATED:Ljava/lang/String; = "OOBE_USER_OPERATED"

.field private static final MSG_CHECK_IF_OOBE_STATUS_FINISHED:I = 0xa

.field private static final MSG_CHECK_IF_OOBE_STATUS_FINISHED_TIMEOUT:I = 0xb

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_OFF:I = 0x1

.field private static final MSG_SEND_CLEAR_SCREEN_TIMEOUT_TASK:I = 0x8

.field private static final MSG_SEND_PSENSOR_NEAR_MONITOR_TIMEOUT_TASK:I = 0xc

.field private static final MSG_USER_ACTIVITY_EVENT_TIMEOUT:I = 0x9

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final OOBE_DEFAULT:I = -0x1

.field private static final OOBE_FINISH:I = 0x1

.field private static final OOBE_PROP_FINISH:I = 0x1

.field private static final OOBE_PROP_UNFINISH:I = 0x0

.field private static final OOBE_UNFINISH:I = 0x0

.field private static final POWER_HINT_INTERACTION:I = 0x2

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field private static final SCREEN_AUTO_BRIGHTNESS_MAX:Ljava/lang/String; = "screen_auto_brightness_max"

.field private static final SCREEN_ENTER_DIM_IN_DONGLE_MODE:I = 0x32c8

.field private static final SCREEN_ENTER_DIM_IN_MIRROR_OR_MIRACAST_MODE:I = 0x493e0

.field private static final SEND_CLEAR_SCREEN_TIMEOUT_DELAY_VALUE:I = 0x0

.field private static final SYS_PROP_OOBE_DONE:Ljava/lang/String; = "persist.sys.pms.oobe.done"

.field private static final SYS_PROP_OOBE_OPERATED:Ljava/lang/String; = "persist.sys.pms.oobe.operated"

.field private static final TAG:Ljava/lang/String; = "PMS"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z = false

.field private static final WAKEFULNESS_ASLEEP:I = 0x0

.field private static final WAKEFULNESS_AWAKE:I = 0x1

.field private static final WAKEFULNESS_DOZING:I = 0x3

.field private static final WAKEFULNESS_DREAMING:I = 0x2

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static forceScreenDim:Z

.field private static mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;


# instance fields
.field private final DEFAULT_OOBE_MONITOR_TIMEOUT:I

.field private final DEFAULT_PSENSOR_NEAR_MONITOR_MAX_TIMEOUT:I

.field private final DEFAULT_SYSTEM_TIMEOUT:I

.field private mADTalkingDetected:Z

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootAnimationCount:I

.field private mBootCompleted:Z

.field private mClearScreenTimeoutTask:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCpuFreqMaxCount:I

.field private mCpuFreqMinCount:I

.field private mCpuNumMaxCount:I

.field private mCpuNumMinCount:I

.field private mCpuPerfCount:I

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeskModeEnabled:Z

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHasSetTimeout:Z

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingOOBESuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private final mHtcCpuCtrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

.field private mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

.field private mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

.field private mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

.field private mInteractive:Z

.field private mInteractiveChanging:Z

.field private mIsActualScreenOn:Z

.field private mIsPowered:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastSleepTime:J

.field private mLastUserActivityEvent:I

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mOOBEInstalled:Z

.field private final mOOBESuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mPMS2Handler:Landroid/os/Handler;

.field private mPMS2HandlerThread:Landroid/os/HandlerThread;

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerSaverHandler:Landroid/os/Handler;

.field private mPreScreenDimDuration:I

.field private mPreScreenOffTimeout:I

.field private mPreUserActivitySummary:I

.field private mPreWakefulness:I

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenAutoBrightnessPercentageSetting:I

.field private mScreenAutoBrightnessPercentageSettingDefault:I

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenOffDelayForDeskDock:I

.field private mScreenOffTimeoutSetting:I

.field private mScreenTimeout_Always:I

.field private mScreenTimeout_Once:I

.field private mScreenTimeout_System:I

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSleepTimeoutSetting:I

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mSystemReadyDone:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mWakeLockSummary:I

.field private mWakeLockSummaryLog:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakefulness:I

.field private mWakefulnessLog:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

.field private runHtcPowerSaverCheck:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const v5, 0xea60

    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReadyDone:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mBootAnimationCount:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->DEFAULT_SYSTEM_TIMEOUT:I

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityEvent:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    const v0, 0x36ee80

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->DEFAULT_OOBE_MONITOR_TIMEOUT:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    const v0, 0x6ddd00

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->DEFAULT_PSENSOR_NEAR_MONITOR_MAX_TIMEOUT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    new-instance v0, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PMS"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    const-string v0, "PowerManagerService.OOBE"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mOOBESuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    const-string v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcPowerSaver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/power/PowerManagerService;[B[B)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wipeSystemInternal([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10200(Lcom/android/server/power/PowerManagerService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->customizeScreenOffDelayLocked(IIZ)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->informEndCallInternal()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10500(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->informOOBEStatusChangeInternal(Z)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessPercentageSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/power/PowerManagerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->fetchCurrentBrightnessValueInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$10800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getProximitySensorActiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->watchdogInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/power/PowerManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    return-wide v0
.end method

.method static synthetic access$11100(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireHtcCpuCtrlInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$1376(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->cancelPsensorNearMonitorMsg()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;JI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setForceScreenOnWhenNear(Z)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->screenStateNotifier(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->checkIfOOBEStatusFinished(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startMonitorOOBEStatus()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearMonitorOOBEStatus()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearTurnOnScreenOnceFlag()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mADTalkingDetected:Z

    return p1
.end method

.method static synthetic access$3500()Lcom/android/server/power/HtcPMSExtension;
    .locals 1

    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    return-object v0
.end method

.method static synthetic access$3600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    return p1
.end method

.method static synthetic access$3800(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetProximityStateWithScreenOff(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearForceScreenOnFlag()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateUserActivityEventLocked()V

    return-void
.end method

.method static synthetic access$4102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcDongleMode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$4800(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuMode(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isActualScreenOnInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isOOBEDoneInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$5302(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mOOBESuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenShot()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleNotifyScreenOffForWifi()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->sendClearScreenTimeoutTask(II)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityEventTimeout()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startShutdownDevice()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handlePsensorNearMonitorTimeout()V

    return-void
.end method

.method static synthetic access$7100(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseHtcCpuCtrlInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$7400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/power/PowerManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$8202(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$8300(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JI)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isForceScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needTurnOnScreenByPowerKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method private acquireHtcCpuCtrlInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I

    move-result v13

    if-ltz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    :cond_0
    :goto_0
    const v2, 0xffff

    and-int v2, v2, p2

    const/16 v3, 0x800

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    const/16 v2, 0x800

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget v3, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerPid:I

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/HtcWakeLockMonitor;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V

    :cond_2
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v2, :cond_3

    :cond_3
    move-object/from16 v14, p3

    const-string v2, "@"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v14, "encrypted_tag"

    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v12, Ljava/util/Formatter;

    invoke-direct {v12}, Ljava/util/Formatter;-><init>()V

    const-string v2, "releaseHCC(%x): %s %s 0x%x %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v14, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    invoke-virtual {v12, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v2, "PMS"

    invoke-virtual {v12}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v12, Ljava/util/Formatter;

    invoke-direct {v12}, Ljava/util/Formatter;-><init>()V

    const-string v2, "acquireHCC(%x): %s %s 0x%x %d %d %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v14, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p4, v3, v4

    invoke-virtual {v12, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v2, "PMS"

    invoke-virtual {v12}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v16

    return-void

    :cond_6
    new-instance v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v11

    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HtcCpuCtrl is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    const/16 v2, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    :cond_8
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    const/16 v2, 0x2000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    :cond_9
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    const/16 v2, 0x4000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    :cond_a
    const v2, 0xf000

    and-int v2, v2, p2

    const v3, 0x8000

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    const v2, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v16

    if-ltz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    move-object v4, v2

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    :cond_0
    const/16 v18, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateUserActivityEventLocked()V

    :cond_2
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    const-string v3, "PMS"

    const-string v4, "acquireWL:p wl"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->notifyReleaseProximityWakeLock(ZI)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->delayScreenOn:Z

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->cancelPsensorNearMonitorMsg()V

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    const v3, 0xffff

    and-int v3, v3, p2

    const/16 v4, 0x800

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    const/16 v3, 0x800

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/HtcWakeLockMonitor;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V

    :cond_8
    invoke-static/range {p2 .. p3}, Lcom/android/server/power/HtcPMSExtension;->canPrintWakeLockLog(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v17, p3

    const-string v3, "@"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v17, "encrypted_tag"

    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1200(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v15

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v14, Ljava/util/Formatter;

    invoke-direct {v14}, Ljava/util/Formatter;-><init>()V

    const-string v3, "releaseWL(%x): %s %s %s 0x%x %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    const/4 v5, 0x3

    aput-object v17, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    invoke-virtual {v14, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v3, "PMS"

    invoke-virtual {v14}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v14, Ljava/util/Formatter;

    invoke-direct {v14}, Ljava/util/Formatter;-><init>()V

    const-string v3, "acquireWL(%x): %s %s %s 0x%x %d %d %s"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    const/4 v5, 0x3

    aput-object v17, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p5, v4, v5

    invoke-virtual {v14, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v3, "PMS"

    invoke-virtual {v14}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_c
    monitor-exit v20

    return-void

    :cond_d
    new-instance v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v6, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v10, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/HtcWakeLockDetector;->addWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    :try_start_4
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    const-string v3, "PMS"

    const-string v4, "addWakeLock Exception : "

    invoke-static {v3, v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_1
    move-exception v13

    :try_start_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock is already dead."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private adjustHtcScreenDimDuration(I)I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    invoke-virtual {v1}, Lcom/android/server/power/HtcPMSExtension;->isAMOLED()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v1, v2, :cond_0

    const v1, 0x1b7740

    sub-int v0, p1, v1

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDim[AMOLED]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isDongleModeTurnedOn()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit16 v0, p1, -0x32c8

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDim[DongleMode]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private adjustHtcScreenOffDelay(I)I
    .locals 6

    const/4 v5, -0x1

    move v0, p1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v5, v2, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[NTF]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v2, :cond_5

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[O]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    :try_start_0
    const-string v2, "Android_Core_Framework"

    invoke-static {v2}, Lcom/android/server/power/HtcPMSExtension;->getHtcCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "support_3lm"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v5, v2, :cond_2

    const v0, 0x7fffffff

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[3LM]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    add-int v0, v2, v3

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[DeskDock]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isDongleModeTurnedOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_4

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[DongleMode]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :cond_5
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    if-lez v2, :cond_6

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[A]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v2, -0x2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    if-lez v2, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[S]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustHtcScreenOffDelay[3LM]: Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 2

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    :cond_0
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_0
    return-void
.end method

.method private canDozeLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canDreamLocked()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-eqz v1, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-lt v1, v2, :cond_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-lt v1, v2, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelPsensorNearMonitorMsg()V
    .locals 4

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    const-string v2, "cancelPSNMMsg S"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "PMS"

    const-string v2, "cancelPSNMMsg E"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception for cancelPSNMMsg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "PMS"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    const-string v3, "PMS"

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "PMS"

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

.method private checkIfOOBEStatusFinished(Z)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    const-string v6, "PMS"

    const-string v7, "OOBE check"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v6, :cond_2

    const-string v5, "PMS"

    const-string v6, "OOBE check 11"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v6, "persist.sys.pms.oobe.done"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "persist.sys.pms.oobe.operated"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v5, :cond_3

    if-eq v3, v5, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    if-nez v6, :cond_5

    :cond_3
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    const-string v4, "PMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OOBE c done1 , oobeDone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , oobeOperated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mOOBEInstalled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "OOBE_USER_OPERATED"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7

    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_6

    const-string v4, "PMS"

    const-string v6, "OOBE c done2"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v4, "persist.sys.pms.oobe.operated"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_9

    if-ne v2, v8, :cond_9

    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_8

    const-string v4, "PMS"

    const-string v6, "OOBE c done2-1"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v4, "persist.sys.pms.oobe.operated"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isOOBEDoneInternal()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    goto/16 :goto_0
.end method

.method private checkIfPackageInstalled(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfPackageInstalled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfPackageInstalled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => Not found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfPackageInstalled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    const-string v5, "PMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIfPackageInstalled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_2
    throw v4
.end method

.method private checkUseNewBacklightMechanism(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "config_convertBacklightToDisplayBrightnessValues"

    const-string v7, "array"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :cond_0
    const-string v6, "config_convertEBIToDisplayBrightnessValues"

    const-string v7, "array"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_2

    array-length v6, v0

    if-lez v6, :cond_2

    if-eqz v1, :cond_2

    array-length v6, v1

    if-lez v6, :cond_2

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Use new BL="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkUseNewBacklightMechanism exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearForceScreenOnFlag()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    :cond_0
    return-void
.end method

.method private clearMonitorOOBEStatus()V
    .locals 7

    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    const-string v4, "PMS"

    const-string v5, "OOBE c monitor"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    if-nez v4, :cond_3

    :cond_1
    const-string v4, "PMS"

    const-string v5, "OOBE c monitor 11"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    if-eqz v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.oobe.OOBE_TIMEOUT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    const-string v4, "PMS"

    const-string v5, "OOBE c monitor 22"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OOBE c monitor e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearTurnOnScreenOnceFlag()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->turnOnScreenOnce:Z

    :cond_0
    return-void
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Lcom/android/server/power/PowerManagerService$5;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PMS"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2

    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private customizeScreenOffDelayLocked(IIZ)V
    .locals 15

    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_0

    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "customizeScreenOffDelayLocked: Unknown flag found. Skip. flag=0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", screenOffDelay="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", calcRemaining="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    if-gez p2, :cond_2

    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_1

    :goto_1
    :pswitch_2
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_1

    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ScreenOffDelay: reset(0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    goto :goto_0

    :pswitch_3
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    goto :goto_1

    :pswitch_4
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto :goto_1

    :pswitch_5
    const v12, 0xea60

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_4

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v12, :cond_7

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    :goto_2
    move/from16 v0, p2

    if-eq v2, v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    sub-long v6, v4, v12

    int-to-long v12, v2

    sub-long v10, v12, v6

    move/from16 v0, p2

    if-ge v2, v0, :cond_9

    move/from16 v0, p2

    int-to-long v12, v0

    sub-long/2addr v12, v6

    long-to-int v12, v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    :cond_3
    :goto_3
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v12

    if-eqz v12, :cond_4

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v12, :cond_4

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v12, v12, 0x4

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/16 v12, 0x20

    invoke-direct {p0, v4, v5, v12}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    :cond_4
    :goto_4
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_2

    :cond_5
    :goto_5
    :pswitch_6
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_6

    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ScreenOffDelay:(0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v12, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v12, v12, 0x4

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/16 v12, 0x20

    invoke-direct {p0, v4, v5, v12}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    goto/16 :goto_0

    :cond_7
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    if-lez v12, :cond_8

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto/16 :goto_2

    :cond_9
    move/from16 v0, p2

    if-le v2, v0, :cond_3

    move/from16 v0, p2

    int-to-long v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    goto/16 :goto_3

    :cond_a
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_4

    const-string v12, "PMS"

    const-string v13, "ScreenOffDelay: Same. Skip"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_7
    if-nez p3, :cond_5

    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    goto/16 :goto_5

    :pswitch_8
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto/16 :goto_5

    :pswitch_9
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12

    const-string v8, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    const-string v8, "Power Manager State:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDirty=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakefulness="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mInteractive="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsPowered="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPlugType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevel="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDockState="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mProximityPositive="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBootCompleted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSystemReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalInteractiveModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeLockSummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivitySummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanScheduled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanSummoned="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelLow="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastWakeTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastSleepTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastInteractivePowerHintTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDisplayReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingOOBESuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "Settings and Configuration:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsSupportedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeAfterScreenOffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeConfigured="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeSnoozing="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenOffTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSleepTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (enforced="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenTimeout_Once="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " mScreenTimeout_Always="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " mScreenTimeout_System="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessPercentageSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessPercentageSettingDefault="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenAutoBrightnessPercentageSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  DISABLE_LOW_POWER_MODE="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Use new backlight mechanism="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sleep timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen off timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dim duration: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wake Locks: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcCpuCtrls: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCpuFreqMinCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCpuFreqMaxCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCpuNumMinCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCpuNumMaxCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspend Blockers: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Power: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-virtual {v6, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    :cond_3
    return-void
.end method

.method private fetchCurrentBrightnessValueInternal()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->fetchCurrentBrightnessValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I
    .locals 3

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private finishInteractiveStateChangeLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractiveChanging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeFinished(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractiveChanging:Z

    :cond_0
    return-void
.end method

.method private getDesiredScreenPolicyLocked()I
    .locals 5

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v4, :cond_1

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v3, :cond_3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    if-nez v4, :cond_0

    :cond_3
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v4, :cond_7

    :cond_4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMirrorModeTurnedOn()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMiracastModeTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    if-ne v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    move v0, v2

    goto :goto_0
.end method

.method private getProximitySensorActiveInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getProximitySensorActive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->adjustHtcScreenDimDuration(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getScreenOffTimeoutLocked(I)I
    .locals 6

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->adjustHtcScreenOffDelay(I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    :cond_1
    if-ltz p1, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getSettingsScreenOffTimeoutValue()I
    .locals 4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust timeout[NTF]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const v1, 0x6ddd00

    if-le v0, v1, :cond_1

    const v0, 0x6ddd00

    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_2
    const/4 v1, -0x2

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    if-lez v1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust timeout[AUTO]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSleepTimeoutLocked()I
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    if-gtz v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private goToSleepInternal(JIII)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .locals 9

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_2

    :cond_0
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return goToSleepNoUpdateLocked , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_2
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPMS2Handler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/32 v4, 0x20000

    const-string v6, "goToSleep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    packed-switch p3, :pswitch_data_0

    :try_start_0
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by application request (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearForceScreenOnFlag()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearTurnOnScreenOnceFlag()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setForceScreenOnWhenNear(Z)V

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    const/4 v4, 0x0

    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setInteractiveStateLocked(ZI)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    :pswitch_1
    :try_start_1
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->notifyScreenTimeout(Z)V

    goto/16 :goto_1

    :pswitch_2
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_3
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to power button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_4
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_4
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v4, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private handleClearScreenTimeoutTask(II)V
    .locals 5

    const/16 v4, 0x8

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClearTask("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v4, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private handleNotifyScreenOffForWifi()V
    .locals 2

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "handleNotifyScreenOffForWifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->notifyScreenOff()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "PMS"

    const-string v1, "mWirelessDisplayManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "wireless_display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->notifyScreenOff()V

    goto :goto_0

    :cond_2
    const-string v0, "PMS"

    const-string v1, "mWirelessDisplayManager is still null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePsensorNearMonitorTimeout()V
    .locals 3

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePSNMT S = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->resetPsensorNearStatus()V

    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    const-string v0, "PMS"

    const-string v1, "handlePSNMT E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleSandman()V
    .locals 11

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    move v7, v1

    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v2, :cond_8

    if-eqz v7, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2, v9}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v8, v4, :cond_7

    :goto_2
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    :goto_3
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    :try_start_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    if-ne v8, v4, :cond_9

    const-string v1, "PMS"

    const-string v2, "Dozing..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v1, v8, :cond_a

    :cond_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_5
    return-void

    :cond_5
    move v7, v9

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_7
    move v1, v9

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    :try_start_3
    const-string v1, "PMS"

    const-string v2, "Dreaming..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_a
    if-ne v8, v5, :cond_f

    if-eqz v0, :cond_b

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_c
    :goto_6
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v9}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    goto/16 :goto_5

    :cond_d
    :try_start_5
    monitor-exit v10

    goto/16 :goto_5

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_6

    :cond_f
    if-ne v8, v4, :cond_c

    if-eqz v0, :cond_10

    monitor-exit v10

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6
.end method

.method private handleScreenShot()V
    .locals 5

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    const-string v3, "PMS"

    const-string v4, "getTaskTopThumbnail begin"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    const-string v3, "PMS"

    const-string v4, "getTaskTopThumbnail done"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v3, "PMS"

    const-string v4, "error getTaskTopThumbnail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "PMS"

    const-string v4, "Unable to screenshot top activity"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v3, "PMS"

    const-string v4, "am is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private handleUserActivityEventTimeout()V
    .locals 2

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "handleUAET"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 12

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9}, Lcom/android/server/power/HtcWakeLockMonitor;->stopDeadRecord(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v8

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_0

    const-string v7, "PMS"

    const-string v9, "stopDeadRecord Exception : "

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_1
    :try_start_3
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v7, :cond_2

    :cond_2
    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "encrypted_tag"

    :cond_3
    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v7}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1200(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    const-string v7, "handleWLDeath(%x): %s %s %s 0x%x"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    const/4 v10, 0x4

    iget v11, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v7, "PMS"

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_4

    :try_start_4
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9}, Lcom/android/server/power/HtcWakeLockDetector;->removeWakeLock(Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_2
    :try_start_5
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_5

    :try_start_6
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9, v10}, Lcom/android/server/power/HtcWakeLockMonitor;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :goto_3
    :try_start_7
    invoke-direct {p0, p1, v4}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    monitor-exit v8

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_4

    const-string v7, "PMS"

    const-string v9, "removeWakeLock Exception : "

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v1

    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_5

    const-string v7, "PMS"

    const-string v9, "stopRecord Exception : "

    invoke-static {v7, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method private informEndCallInternal()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDelayScreenOnAfterEndCallLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->delayScreenOn:Z

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inform EC e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private informOOBEStatusChangeInternal(Z)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    const-string v1, "persist.sys.pms.oobe.operated"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearMonitorOOBEStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOBE change e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isActualScreenOnInternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z

    return v0
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDongleModeTurnedOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    invoke-virtual {v0}, Lcom/android/server/power/HtcDongleMode;->isDongleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForceScreenOn()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mADTalkingDetected:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "PMS"

    const-string v3, "case1 fso "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "PMS"

    const-string v3, "case2 fso "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForceScreenOn exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isInteractiveInternal()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLowPowerModeInternal()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiracastModeTurnedOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    invoke-virtual {v0}, Lcom/android/server/power/HtcDongleMode;->isMiracastMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMirrorModeTurnedOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    invoke-virtual {v0}, Lcom/android/server/power/HtcDongleMode;->isMirrorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOOBEDoneInternal()Z
    .locals 14

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v9, "PMS"

    const-string v10, "pm is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return v8

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.synchronoss.dcs.att.r2g"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.synchronoss.dcs.att.r2g"

    const-string v11, "com.synchronoss.dcs.att.r2g.DCSMainActivity"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_2

    const-string v10, "PMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "R2G status ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v6, v13, :cond_0

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_3

    const-string v10, "PMS"

    const-string v11, "OOBE c done3"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v10, "persist.sys.pms.oobe.done"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v8, v9

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_4

    const-string v10, "PMS"

    const-string v11, "Not find R2G"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :try_start_3
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.htc.android.htcsetupwizard"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.htc.android.htcsetupwizard"

    const-string v11, "com.htc.android.htcsetupwizard.MainActivity"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_5

    const-string v10, "PMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Our status ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-ne v7, v13, :cond_0

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_6

    const-string v10, "PMS"

    const-string v11, "OOBE c done3"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v10, "persist.sys.pms.oobe.done"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v8, v9

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :try_start_4
    const-string v9, "PMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ex1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string v9, "PMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isPerfLevelLock(I)Z
    .locals 2

    const v1, 0xf000

    and-int v0, p1, v1

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenBright()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidAutoBrightnessPercentage(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidBrightness(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_2

    if-ltz p0, :cond_1

    const/16 v2, 0x2800

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ltz p0, :cond_3

    const/16 v2, 0xff

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    sparse-switch p1, :sswitch_data_0

    :try_start_0
    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowLevelReboot, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "recovery"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ctl.start"

    const-string v4, "pre-recovery"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0x1d4c0

    :goto_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string v3, "sys.powerctl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reboot,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x4e20

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public static lowLevelShutdown()V
    .locals 3

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowLevelShutdown, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.powerctl"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private napInternal(JI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .locals 7

    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v1, "nap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap time (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setInteractiveStateLocked(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static native nativeAcquireCpuFreqMaxWakeLock(I)V
.end method

.method private static native nativeAcquireCpuFreqMinWakeLock(I)V
.end method

.method private static native nativeAcquireCpuMode(I)V
.end method

.method private static native nativeAcquireCpuNumMaxWakeLock(I)V
.end method

.method private static native nativeAcquireCpuNumMinWakeLock(I)V
.end method

.method public static native nativeAcquireCpuPerfWakeLock()V
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseCpuFreqMaxWakeLock()V
.end method

.method private static native nativeReleaseCpuFreqMinWakeLock()V
.end method

.method private static native nativeReleaseCpuNumMaxWakeLock()V
.end method

.method private static native nativeReleaseCpuNumMinWakeLock()V
.end method

.method public static native nativeReleaseCpuPerfWakeLock()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetPowerState(ZZ)V
.end method

.method private static native nativeSetProximityStateWithScreenOff(Z)V
.end method

.method private native nativeWipeSystem([B[B)V
.end method

.method private needDelayScreenOnAfterEndCallLocked()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    const-string v2, "needDSOAECL 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    const-string v2, "needDSOAECL 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    const-string v2, "needDSOAECL 3"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->needDelayScreenOnAfterEndCall()Z

    move-result v0

    goto :goto_0
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needTurnOnScreenByPowerKey()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "PMS"

    const-string v2, "nTOSBPK 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    :cond_0
    return-void
.end method

.method private notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    :cond_0
    return-void
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private powerHintInternal(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const v1, 0x112005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const v1, 0x112002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const v1, 0x1120053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const v1, 0x1120054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const v1, 0x1120056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const v1, 0x1120055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const v1, 0x1120057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const v1, 0x10e0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const v1, 0x10e0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    const v1, 0x1120058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    const v1, 0x10e006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    const v1, 0x1130001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 7

    const-wide/32 v4, 0x20000

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "reallyGoToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setInteractiveStateLocked(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private recalculateScreenTimeout()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releaseHtcCpuCtrlInternal(Landroid/os/IBinder;I)V
    .locals 10

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-virtual {v5, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->stopDeadRecord(Landroid/os/IBinder;)V

    :cond_0
    monitor-exit v6

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v5, :cond_2

    :cond_2
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "encrypted_tag"

    :cond_3
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-static {v5}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const-string v5, "releaseHCC(%x): %s %s 0x%x %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    iget v9, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v5, "PMS"

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xffff

    and-int/2addr v5, v7

    const/16 v7, 0x800

    if-ne v5, v7, :cond_a

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_9

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    :cond_4
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    :cond_5
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-eqz v5, :cond_7

    :cond_6
    const/16 v5, 0x800

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    invoke-virtual {v5, v7, v8}, Lcom/android/server/power/HtcWakeLockMonitor;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_8
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->removeHtcCpuCtrlLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;I)V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_9
    const/16 v5, 0x800

    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    :cond_a
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x1000

    if-ne v5, v7, :cond_c

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    if-nez v5, :cond_b

    const/16 v5, 0x1000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMaxWakeLock()V

    goto :goto_1

    :cond_b
    const/16 v5, 0x1000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    :cond_c
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x2000

    if-ne v5, v7, :cond_e

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_d

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_d

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    goto :goto_1

    :cond_d
    const/16 v5, 0x2000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    :cond_e
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x4000

    if-ne v5, v7, :cond_10

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    if-nez v5, :cond_f

    const/16 v5, 0x4000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMaxWakeLock()V

    goto/16 :goto_1

    :cond_f
    const/16 v5, 0x4000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    :cond_10
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const v7, 0x8000

    if-ne v5, v7, :cond_7

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v5, :cond_11

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_11

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    goto/16 :goto_1

    :cond_11
    const v5, 0x8000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 13

    const/16 v12, 0x800

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-virtual {v7, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->stopDeadRecord(Landroid/os/IBinder;)V

    :cond_0
    monitor-exit v8

    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    :try_start_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9}, Lcom/android/server/power/HtcWakeLockDetector;->removeWakeLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/android/server/power/HtcPMSExtension;->canPrintWakeLockLog(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v4, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v4, "encrypted_tag"

    :cond_3
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v7}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1200(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    const-string v7, "releaseWL(%x): %s %s %s 0x%x %s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    const/4 v10, 0x4

    iget v11, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    aput-object v11, v9, v10

    invoke-virtual {v1, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v7, "PMS"

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    :cond_5
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_6

    const-string v7, "PMS"

    const-string v9, "releaseWL:p wl"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mADTalkingDetected:Z

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    :cond_7
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPsensorNearMonitorMsg()V

    :cond_8
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v9, 0xffff

    and-int/2addr v7, v9

    if-ne v7, v12, :cond_c

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v7, :cond_e

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v7, :cond_9

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    :cond_9
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v7, :cond_a

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    :cond_a
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v7, :cond_b

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-eqz v7, :cond_c

    :cond_b
    const/16 v7, 0x800

    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    :cond_c
    :goto_2
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9, v10}, Lcom/android/server/power/HtcWakeLockMonitor;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_d
    iget-object v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-interface {v7, v6, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-direct {p0, v6, v3}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :catch_0
    move-exception v0

    :try_start_3
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_2

    const-string v7, "PMS"

    const-string v9, "removeWakeLock Exception : "

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_e
    const/16 v7, 0x800

    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private removeHtcCpuCtrlLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private screenStateNotifier(Z)V
    .locals 5

    const/4 v4, -0x1

    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcPMSExtension;->notifyActualScreenState(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_5

    const-string v0, "UTD_BI"

    const-string v1, "C0006"

    const-string v2, "A0001"

    const-string v3, "Screen On"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/server/report/up/HtcSystemUPLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->screenState(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->notifyHABCScreenState(Z)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "UTD_BI"

    const-string v1, "C0006"

    const-string v2, "A0002"

    const-string v3, "Screen Off"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/server/report/up/HtcSystemUPLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private sendClearScreenTimeoutTask(II)V
    .locals 4

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClearTask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendPsensorNearMonitorMsg()V
    .locals 6

    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    const-string v3, "PMS"

    const-string v4, "sendPSNMMsg S"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSettingsScreenOffTimeoutValue()I

    move-result v2

    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    const-string v3, "PMS"

    const-string v4, "sendPSNMMsg E"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for sendPSNMMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendScreenStateChangeLocked(II)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    if-eq p1, p2, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSSCL: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p1, v6, :cond_3

    if-ne p2, v5, :cond_3

    const/4 v1, 0x1

    const/4 v0, 0x2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityEvent:I

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/android/server/power/HtcPMSExtension;->sendScreenStateChange(IJI)V

    :cond_2
    return-void

    :cond_3
    if-ne p1, v5, :cond_1

    if-ne p2, v6, :cond_1

    const/4 v1, 0x1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setForceScreenOnWhenNear(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceScreenOnWhenNear = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean p1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOnWhenNear:Z

    :cond_1
    return-void
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 6

    const-wide/32 v4, 0x20000

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL auto-suspend mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string v0, "PMS"

    const-string v1, "Setting HAL auto-suspend mode done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 6

    const-wide/32 v4, 0x20000

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL interactive mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL interactive mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setInteractiveStateLocked(ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishInteractiveStateChangeLocked()V

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractiveChanging:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeStarted(ZI)V

    :cond_0
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    if-eqz v3, :cond_0

    const-string v1, "PMS"

    const-string v3, "LOW_POWER_MODE is disabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v3, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_4
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReadyDone:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    const-string v0, "PMS"

    const-string v1, "setSBOFWM is called before system ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result p1

    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStayOnSettingInternal(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenAutoBrightnessPercentageSettingOverrideInternal(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-nez v4, :cond_1

    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    const-string v2, "PMS"

    const-string v4, "setTSABPSOI: Skip."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_2
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    if-eq v2, p1, :cond_4

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_4
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-nez v4, :cond_1

    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    const-string v2, "PMS"

    const-string v4, "setBacklightBrightness: screen is off. Skip."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_2
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result p1

    :cond_4
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v2, p1, :cond_5

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_5
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    if-eq p2, v2, :cond_0

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v1, v2, :cond_3

    if-eqz p3, :cond_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Too early to call shutdown() or reboot()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v3, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;ZLjava/lang/String;Z)V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "PowerManagerService.reboot"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v4, "PMS"

    const-string v5, "rebootHandler msg sent."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_2

    monitor-enter v3

    :goto_0
    :try_start_0
    const-string v4, "PMS"

    const-string v5, "runnable.wait()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_2
    return-void
.end method

.method private startMonitorOOBEStatus()V
    .locals 10

    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    const-string v6, "PMS"

    const-string v7, "OOBE s monitor"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v6, :cond_2

    const-string v6, "PMS"

    const-string v7, "OOBE s monitor 11"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.oobe.OOBE_TIMEOUT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long v4, v6, v8

    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_4

    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OOBE s monitor time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s monitor e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startShutdownDevice()V
    .locals 2

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "OOBE s shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    const-string v0, "sys.powerctl"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startWatchingForOOBEStatusFinished()V
    .locals 3

    const/16 v2, 0xa

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "OOBE s watch"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_2

    const-string v0, "PMS"

    const-string v1, "OOBE s watch 11"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    and-int/lit8 v9, p1, 0x3f

    if-eqz v9, :cond_8

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v12

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v9, v5, :cond_1

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-nez v9, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    :cond_0
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v9, :cond_9

    move v9, v10

    :goto_0
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_a

    move v12, v10

    :goto_1
    invoke-static {v9, v12}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    :cond_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9, v8}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v8

    :cond_2
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v9, v10, :cond_b

    move v0, v10

    :goto_2
    const/4 v3, 0x0

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_c

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    const/4 v0, 0x0

    const/4 v3, 0x1

    :cond_3
    :goto_3
    if-eqz v0, :cond_6

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9, v8}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v8

    :cond_4
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_e

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    :cond_5
    :goto_4
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessPercentage(I)Z

    move-result v9

    if-eqz v9, :cond_f

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    :cond_6
    :goto_5
    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v9, :cond_10

    const/16 v9, 0x2800

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_6
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/16 v9, 0x64

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v8, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v6, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v3, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useOverrideBrightness:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v7, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v12

    iput-boolean v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    iput-boolean v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v9, v10, :cond_11

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    :goto_7
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v9, v12, v13}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eq v9, v4, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {p0, v5, v9}, Lcom/android/server/power/PowerManagerService;->sendScreenStateChangeLocked(II)V

    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v9, :cond_8

    if-eqz v1, :cond_8

    const-string v9, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateScreenStateLocked: mDisplayReady="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", policy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mWakefulness="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v13}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mWakeLockSummary=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mUserActivitySummary=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mBootCompleted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v9, :cond_12

    if-nez v2, :cond_12

    :goto_8
    return v10

    :cond_9
    move v9, v11

    goto/16 :goto_0

    :cond_a
    move v12, v11

    goto/16 :goto_1

    :cond_b
    move v0, v11

    goto/16 :goto_2

    :cond_c
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_d

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_3

    :cond_d
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto/16 :goto_3

    :cond_e
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_4

    :cond_f
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessPercentage(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    goto/16 :goto_5

    :cond_10
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_6

    :cond_11
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v11, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v12, -0x1

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_7

    :cond_12
    move v10, v11

    goto :goto_8
.end method

.method private updateDreamLocked(IZ)V
    .locals 1

    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    :cond_1
    return-void
.end method

.method private updateHtcCpuCtrlLevel(I)V
    .locals 14

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v11, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v12, 0xffff

    and-int/2addr v11, v12

    const/16 v12, 0x800

    if-ne v11, v12, :cond_1

    const/4 v11, 0x5

    if-le v11, v4, :cond_0

    const/4 v4, 0x5

    :cond_0
    const/4 v11, 0x2

    if-le v11, v9, :cond_1

    const/4 v9, 0x2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_a

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xf000

    and-int/2addr v11, v12

    if-nez v11, :cond_5

    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xffff

    and-int/2addr v11, v12

    const/16 v12, 0x800

    if-ne v11, v12, :cond_4

    const/4 v11, 0x5

    if-le v11, v4, :cond_3

    const/4 v4, 0x5

    :cond_3
    const/4 v11, 0x2

    if-le v11, v9, :cond_4

    const/4 v9, 0x2

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->getLevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xf000

    and-int/2addr v11, v12

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    if-eqz v3, :cond_6

    if-ge v7, v3, :cond_4

    :cond_6
    move v3, v7

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateHtcCpuCtrlLevel: Skip. hcc.mFlags="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hcc.mTag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :sswitch_1
    if-eqz v4, :cond_7

    if-le v7, v4, :cond_4

    :cond_7
    move v4, v7

    goto :goto_2

    :sswitch_2
    if-eqz v8, :cond_8

    if-ge v7, v8, :cond_4

    :cond_8
    move v8, v7

    goto :goto_2

    :sswitch_3
    if-eqz v9, :cond_9

    if-le v7, v9, :cond_4

    :cond_9
    move v9, v7

    goto :goto_2

    :cond_a
    const v11, 0xffff

    and-int/2addr v11, p1

    sparse-switch v11, :sswitch_data_1

    :cond_b
    :goto_3
    return-void

    :sswitch_4
    if-eqz v4, :cond_d

    if-eqz v3, :cond_c

    if-ge v3, v4, :cond_c

    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_PERF:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :cond_c
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    :cond_d
    if-eqz v9, :cond_b

    if-eqz v8, :cond_e

    if-ge v8, v9, :cond_e

    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_PERF:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    :cond_e
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto :goto_3

    :sswitch_5
    if-nez v4, :cond_f

    const-string v11, "PMS"

    const-string v12, "There is no CPU_MIN_FREQ to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    if-eqz v3, :cond_10

    if-ge v3, v4, :cond_10

    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_MIN_FREQ:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :cond_10
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    goto/16 :goto_3

    :sswitch_6
    if-nez v3, :cond_12

    if-eqz v4, :cond_11

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    goto/16 :goto_3

    :cond_11
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MAX_FREQ to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_12
    if-eqz v4, :cond_13

    if-ge v3, v4, :cond_13

    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_MAX_FREQ:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    :cond_13
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMaxWakeLock(I)V

    goto/16 :goto_3

    :sswitch_7
    if-nez v9, :cond_14

    const-string v11, "PMS"

    const-string v12, "There is no CPU_MIN_NUM to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_14
    if-eqz v8, :cond_15

    if-ge v8, v9, :cond_15

    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_MIN_NUM:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    :cond_15
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto/16 :goto_3

    :sswitch_8
    if-nez v8, :cond_17

    if-eqz v9, :cond_16

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto/16 :goto_3

    :cond_16
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MAX_NUM to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_17
    if-eqz v9, :cond_18

    if-ge v8, v9, :cond_18

    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_MAX_NUM:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    :cond_18
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMaxWakeLock(I)V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_7
    .end sparse-switch
.end method

.method private updateIsPoweredLocked(I)V
    .locals 14

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIsPoweredLocked: wasPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v13, v1, :cond_1

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v12, v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v13, v12, v0}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v13, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eq v11, v1, :cond_6

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eq v11, v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    :cond_6
    return-void
.end method

.method private updatePowerStateLocked()V
    .locals 14

    const-wide/32 v12, 0x20000

    sget-boolean v8, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v8, :cond_0

    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    :try_start_0
    const-string v5, "udpatePowerStateLocked-arg_check"

    const-string v8, "updatePSL(0x%x,%b)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    sget-object v8, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    const-string v9, "udpatePowerStateLocked-arg_check"

    const-string v10, "PMS"

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/power/HtcPMSExtension;->reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v3

    if-eqz v4, :cond_0

    const-string v8, "PMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "PMS"

    const-string v9, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v8, "updatePowerState"

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v8}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v8}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v1, 0x0

    :cond_4
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v1, v0

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    invoke-direct {p0, v6, v7, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishInteractiveStateChangeLocked()V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v8
.end method

.method private updateSettingsLocked()V
    .locals 12

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v10, -0x2

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "screensaver_enabled"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    if-eqz v6, :cond_9

    move v6, v7

    :goto_0
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-string v9, "screensaver_activate_on_sleep"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    if-eqz v6, :cond_b

    move v6, v7

    :goto_2
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_c

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    const-string v9, "screensaver_activate_on_dock"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    if-eqz v6, :cond_d

    move v6, v7

    :goto_4
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v7

    :goto_5
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    const-string v6, "screen_off_timeout"

    const/16 v9, 0x3a98

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    const-string v6, "sleep_timeout"

    invoke-static {v5, v6, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    const-string v6, "stay_on_while_plugged_in"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    const-string v6, "screen_brightness"

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v6, v9}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    :cond_0
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    if-eq v4, v6, :cond_1

    iput v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    :cond_1
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    const-string v6, "screen_auto_brightness_adj"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x7fc00000    # NaNf

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    :cond_2
    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    const-string v6, "low_power"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_f

    move v1, v7

    :goto_6
    const-string v6, "low_power_trigger_level"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_10

    move v0, v7

    :goto_7
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    if-eqz v6, :cond_3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    :cond_3
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-ne v1, v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eq v0, v6, :cond_5

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    :cond_5
    const-string v6, "deskdock_dim_screen"

    const/16 v7, 0xa

    invoke-static {v5, v6, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    if-eq v6, v11, :cond_6

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    const v7, 0xea60

    mul-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    :cond_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    const-string v6, "screen_auto_brightness_max"

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    invoke-static {v5, v6, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    if-eq v3, v6, :cond_7

    iput v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    :cond_7
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_8

    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SettingsObserver: mDreamsEnabledSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDreamsActivateOnSleepSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDreamsActivateOnDockSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenOffTimeoutSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mStayOnWhilePluggedInSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenBrightnessSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenBrightnessModeSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLowPowerModeSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenOffDelayForDeskDock="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenAutoBrightnessPercentageSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mTemporaryScreenAutoBrightnessPercentageSettingOverride="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void

    :cond_9
    move v6, v8

    goto/16 :goto_0

    :cond_a
    move v6, v8

    goto/16 :goto_1

    :cond_b
    move v6, v8

    goto/16 :goto_2

    :cond_c
    move v6, v8

    goto/16 :goto_3

    :cond_d
    move v6, v8

    goto/16 :goto_4

    :cond_e
    move v6, v8

    goto/16 :goto_5

    :cond_f
    move v1, v8

    goto/16 :goto_6

    :cond_10
    move v0, v8

    goto/16 :goto_7
.end method

.method private updateStayOnLocked(I)V
    .locals 3

    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0
.end method

.method private updateSuspendBlockerLocked()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a

    move v2, v3

    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v1

    if-nez v1, :cond_b

    move v0, v3

    :goto_1
    if-nez v0, :cond_1

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_2
    if-eqz v1, :cond_4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v5, :cond_3

    const-string v5, "PMS"

    const-string v6, "acq wl D"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_4
    if-nez v2, :cond_5

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->release()V

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_5
    if-nez v1, :cond_7

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v5, :cond_6

    const-string v5, "PMS"

    const-string v6, "rel wl D"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->release()V

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_7
    if-eqz v0, :cond_9

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v5, :cond_8

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    :cond_8
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v4, :cond_9

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_9
    return-void

    :cond_a
    move v2, v4

    goto :goto_0

    :cond_b
    move v0, v4

    goto :goto_1
.end method

.method private updateUserActivityEventLocked()V
    .locals 6

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "PMS"

    const-string v3, "udaUAEL"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMirrorModeTurnedOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMiracastModeTurnedOn()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    const-string v2, "PMS"

    const-string v3, "At Mirror or Miracast mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PMS"

    const-string v3, "Exception for updateUserActivityEventLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 19

    and-int/lit8 v13, p3, 0x27

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    const/4 v11, 0x0

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_b

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v8

    move v11, v10

    move v9, v8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    int-to-long v0, v8

    move-wide/from16 v16, v0

    sub-long v6, v14, v16

    cmp-long v13, p1, v6

    if-gez v13, :cond_8

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    cmp-long v13, p1, v6

    if-gez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v13, :cond_3

    if-ltz v12, :cond_a

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v13, v2, v14

    if-ltz v13, :cond_3

    int-to-long v14, v12

    add-long v6, v2, v14

    cmp-long v13, p1, v6

    if-gez v13, :cond_3

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v13, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-ltz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/os/Message;->setAsynchronous(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v13, v5, v6, v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_4
    :goto_3
    const/4 v4, 0x0

    sget-boolean v13, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreUserActivitySummary:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreWakefulness:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenDimDuration:I

    if-ne v13, v9, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenOffTimeout:I

    if-eq v13, v11, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mPreUserActivitySummary:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mPreWakefulness:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenDimDuration:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenOffTimeout:I

    if-eqz v4, :cond_7

    const-string v13, "PMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateUserActivitySummaryLocked: mWakefulness="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v15}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mUserActivitySummary=0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", nextTimeout="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    cmp-long v13, p1, v6

    if-gez v13, :cond_1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_1

    :cond_a
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const-wide/16 v6, -0x1

    goto/16 :goto_2

    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_3
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 7

    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    :sswitch_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x21

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    const-string v4, "updateWakeLockSummaryLocked"

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v6, 0xa

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/HtcDongleMode;->getCtrlWakeLockState(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_5
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    if-eq v3, v4, :cond_7

    :cond_6
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWakeLockSummary=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    :cond_7
    return-void

    :cond_8
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 11

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    if-gez v9, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 7

    const/16 v6, 0x3e8

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto :goto_0
.end method

.method private userActivityFromNative(JII)V
    .locals 7

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uAFN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v6, 0x20000

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateUserActivityEventLocked()V

    :cond_0
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityEvent:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v2, :cond_2

    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear Timeout_Once("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    :cond_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    const-string v2, "userActivity"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    :cond_5
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    goto :goto_0

    :cond_7
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    :try_start_1
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_9

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_9

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_8
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_9

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private wakeUpInternal(JI)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wakeUpNoUpdateLocked(JI)Z
    .locals 11

    const-wide/32 v8, 0x20000

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v1, v7, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->turnOnScreenOnce:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const-string v0, "wakeUp"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setInteractiveStateLocked(ZI)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v7

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from sleep (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :pswitch_2
    :try_start_2
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from dream (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from dozing (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static wakefulnessToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Asleep"

    goto :goto_0

    :pswitch_1
    const-string v0, "Awake"

    goto :goto_0

    :pswitch_2
    const-string v0, "Dreaming"

    goto :goto_0

    :pswitch_3
    const-string v0, "Dozing"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private watchdogInternal()V
    .locals 2

    new-instance v0, Lcom/android/server/power/PowerManagerService$7;

    const-string v1, "PowerManagerService.watchdog()"

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$7;->start()V

    return-void
.end method

.method private wipeSystemInternal([B[B)Z
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeWipeSystem([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wipeSystem: imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", encMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public monitor()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 9

    const/16 v8, 0x3e8

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-ne p1, v8, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->checkIfPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startWatchingForOOBEStatusFinished()V

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PMS"

    const-string v4, "BootComplete E"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v8, :cond_3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    invoke-virtual {v1}, Lcom/android/server/power/HtcPowerSaver;->bootCompletedNotify()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-virtual {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->bootCompleted()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-virtual {v1}, Lcom/android/server/power/HtcWakeLockDetector;->bootCompleted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "PMS"

    const-string v4, "bootCompleted Exception : "

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PMS2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPMS2HandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPMS2HandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/power/PowerManagerService$PMS2Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPMS2HandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PMS2Handler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPMS2Handler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    new-instance v0, Lcom/android/server/power/HtcPMSExtension;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcPMSExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenState(Z)V

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "PMS"

    const-string v1, "onStart E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 13

    const/4 v12, 0x1

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->checkUseNewBacklightMechanism(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v0, Landroid/view/WindowManagerPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultScreenAutoBrightnessPercentageSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    new-instance v10, Landroid/hardware/SystemSensorManager;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Lcom/android/server/power/Notifier;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-string v5, "PowerManagerService.Broadcasts"

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    const-string v1, "PowerManagerService.WirelessChargerDetector"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v2, v10}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    new-instance v0, Lcom/android/server/power/HtcDongleMode;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcDongleMode;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    new-instance v0, Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockMonitor;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    new-instance v0, Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockDetector;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    new-instance v0, Lcom/android/server/power/HtcPowerSaver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcPowerSaver;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$DockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.htc.oobe.OOBE_TIMEOUT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v0, "screensaver_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "screensaver_activate_on_sleep"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "screensaver_activate_on_dock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "sleep_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "deskdock_dim_screen"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "screen_auto_brightness_max"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mSystemReadyDone:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "PMS"

    const-string v1, "systemReady E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method updateLowPowerModeLocked()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v4, :cond_4

    move v0, v2

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    move v1, v2

    :goto_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-eq v4, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    const/4 v4, 0x5

    if-eqz v1, :cond_6

    :goto_3
    invoke-direct {p0, v4, v2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3
.end method
