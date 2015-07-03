.class public Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;,
        Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$LongPressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;,
        Lcom/android/internal/policy/impl/GlobalActions$PowerActionBootloader;,
        Lcom/android/internal/policy/impl/GlobalActions$PowerActionDownload;,
        Lcom/android/internal/policy/impl/GlobalActions$PowerActionReboot;,
        Lcom/android/internal/policy/impl/GlobalActions$PowerActionRecovery;,
        Lcom/android/internal/policy/impl/GlobalActions$PowerActionSafemode;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final FLASHLIGHT_ACTIVITY_NAME:Ljava/lang/String; = "com.htc.flashlight.FlashlightActivity"

.field public static final FLASHLIGHT_MODE_HIDE:I = 0x0

.field public static final FLASHLIGHT_MODE_SHOW:I = 0x1

.field public static final FLASHLIGHT_MODE_SHOWONLY:I = 0x2

.field private static final FLASHLIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.htc.flashlight"

.field private static IMS_REGISTRATION:Ljava/lang/String; = null

.field private static IMS_REG_STATUS:Ljava/lang/String; = null

.field private static final INTENT_ACTUAL_SCREEN_OFF:Ljava/lang/String; = "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

.field private static final IPUtilesClasssName:Ljava/lang/String; = "com.movial.ipphone.IPUtils"

.field private static final KIDMODE_DIALOG_SHOW:Ljava/lang/String; = "kidmode_dg_show"

.field private static final KID_MODE_ACTIVITY_NAME:Ljava/lang/String; = "com.zoodles.kidmode.activity.LauncherActivity"

.field private static final KID_MODE_EXIT_APP_ACTIVITY:Ljava/lang/String; = "com.zoodles.kidmode.activity.kid.exit.ExitAppActivity"

.field private static final KID_MODE_PACKAGE_NAME:Ljava/lang/String; = "com.zoodles.kidmode"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_DISMISS_FLASHLIGHT:I = 0x182ae

.field private static final MESSAGE_NOTIFY:I = 0x3

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final NORTH_AMERICA_REGION_ID:I = 0x1

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SHOW_WARNING_DIALOG:Ljava/lang/String; = "show_airplane_warning_dialog"

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final VERIZON_WWE_SKU_ID:I = 0xd


# instance fields
.field private imsRegistered:Z

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDeviceSkuID:I

.field private mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mFlashlightMode:I

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mHideKidMode:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegionID:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSenseVersion:F

.field private mServiceState:Landroid/telephony/ServiceState;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

.field private mSimReady:Z

.field private mSkipTransition:Z

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHideKidMode:Z

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    iput v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSenseVersion:F

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$11;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$12;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$13;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$14;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$15;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "dreams"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "IMS_REGISTRATION"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "IMS_REG_STATUS"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1120068

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v7, v6

    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    const-string v5, "ro.kidmode.enable"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHideKidMode:Z

    const-string v5, "GlobalActions"

    const-string v6, "[KID] Not support"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->confirmKidMode(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->startFlashlightActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    return p1
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/GlobalActions;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;)Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceSkuID:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->enter_leave_KidMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRegionID:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->showWarningDialog(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    move v8, v11

    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_2
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$10;

    const v2, 0x10803d3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_6

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v8, v12

    goto :goto_1

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_3

    move v8, v11

    goto :goto_1

    :cond_3
    move v8, v12

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const-string v1, "Primary"

    goto :goto_3

    :cond_6
    const-string v1, ""

    goto :goto_4

    :cond_7
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
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

.method private canShowVZWAirplaneMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceSkuID:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ota_required"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get activate state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 7

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AirplaneMode] changeAirplaneModeSystemSetting, set AirplaneMode to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v6, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v6, :cond_5

    if-nez p1, :cond_5

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    :goto_1
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AirplaneMode] mSkipTransition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_6

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private confirmKidMode(Z)V
    .locals 20

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "kidmode_dg_show"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-lez v17, :cond_2

    const/4 v13, 0x1

    :goto_0
    sget-boolean v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v17, :cond_0

    const-string v17, "GlobalActions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[KID] show_kidmode_dialog = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    if-eqz v13, :cond_3

    const v10, 0x3070090

    const v8, 0x3070095

    const v7, 0x3070096

    const v9, 0x104000a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/htc/utils/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "GlobalActions"

    const-string v18, "isInAllCapsLocale() = TRUE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v17, 0x303000e

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v17, 0x311001e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    const v17, 0x311001f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    const v17, 0x3110020

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x30b0001

    invoke-direct/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/android/internal/policy/impl/GlobalActions$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/policy/impl/GlobalActions$16;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ZLandroid/widget/CheckBox;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d9

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v17, "GlobalActions"

    const-string v18, "[KID] Error getting KIDMODE_DIALOG_SHOW"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/GlobalActions;->enter_leave_KidMode(Z)V

    goto :goto_1
.end method

.method private createDialog()Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v3, :cond_6

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    :goto_0
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    const v5, 0x302005c

    const v6, 0x302005c

    const v7, 0x10400fe

    const v8, 0x10400ff

    const v9, 0x1040100

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "icon_launcher_kidmode"

    const-string v6, "drawable"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v7, 0x3070090

    const v8, 0x3070091

    const v9, 0x3070092

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move v6, v5

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_power_off_status"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart_status"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_flashlight_mode"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_flashlight_mode_launch"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v6, 0x3020060

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v15, v14}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bugreport_in_power_menu"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isCurrentUserOwner()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$7;

    const v6, 0x302005d

    const v7, 0x10400f7

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v7}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v3, "fw.power_user_switcher"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    :cond_2
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    new-instance v13, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v13, v3}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "global_actions"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setTitle(I)V

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v11

    const-string v3, "Android_Core_Framework"

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v12

    const-string v3, "globalaction_enable_cancel_button"

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v20

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCancelBtn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v20, :cond_4

    const/4 v4, -0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v13, v4, v6, v3}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_5
    return-object v13

    :cond_6
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v6, v7}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v6, 0x302006f

    const v7, 0x10400f6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v4, v0, v6, v7, v1}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x1

    const-string v3, "htc_is_demo"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/GlobalActions;->canShowVZWAirplaneMode(Landroid/content/Context;)Z

    move-result v19

    :goto_2
    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/GlobalActions;->supportKidModeApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/GlobalActions;->isExtremePowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_9

    const-string v3, "GlobalActions"

    const-string v4, "[KID] device supports KidMode feature"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const v6, 0x3020072

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSysAPMTweak()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialogAdv;

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialogAdv;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    goto :goto_3

    :cond_b
    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5;

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSysAPMTweak()Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$6;

    const v6, 0x3020060

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v15, v14}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    const/16 v19, 0x0

    const-string v3, "GlobalActions"

    const-string v4, "[AIRPLANE] DemoFLO ON, hide Airplane Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private createDialogAdv()Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
    .locals 17

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    const v5, 0x302005c

    const v6, 0x302005c

    const v7, 0x10400fe

    const v8, 0x10400ff

    const v9, 0x1040100

    const/4 v10, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const v6, 0x3020072

    move-object/from16 v0, p0

    const v1, 0x3070087

    const v2, 0x3070088

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$PowerActionReboot;

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$PowerActionReboot;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const v6, 0x108076d

    move-object/from16 v0, p0

    const v1, 0x10406c8

    const v2, 0x10406c9

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$PowerActionDownload;

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$PowerActionDownload;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const v6, 0x108076c

    move-object/from16 v0, p0

    const v1, 0x10406cc

    const v2, 0x10406cd

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$PowerActionBootloader;

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$PowerActionBootloader;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const v6, 0x108076e

    move-object/from16 v0, p0

    const v1, 0x10406ca

    const v2, 0x10406cb

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$PowerActionRecovery;

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$PowerActionRecovery;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const v6, 0x108076f

    move-object/from16 v0, p0

    const v1, 0x10406ce

    const v2, 0x10406cf

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$PowerActionSafemode;

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$PowerActionSafemode;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    new-instance v13, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v13, v3}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "factorytest_reboot"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setTitle(I)V

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v11

    const-string v3, "Android_Core_Framework"

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v12

    const-string v3, "globalaction_enable_cancel_button"

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v16

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCancelBtn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v16, :cond_1

    const/4 v4, -0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v13, v4, v6, v3}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2
    return-object v13
.end method

.method private enter_leave_KidMode(Z)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.zoodles.kidmode"

    const-string v5, "com.zoodles.kidmode.activity.LauncherActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "GlobalActions"

    const-string v4, "[KID] Starting KID_MODE_ACTIVITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v3, "GlobalActions"

    const-string v4, "Error launching KID_MODE_ACTIVITY"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.zoodles.kidmode"

    const-string v5, "com.zoodles.kidmode.activity.kid.exit.ExitAppActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    const-string v3, "GlobalActions"

    const-string v4, "[KID] Starting KID_MODE_EXIT_APP_ACTIVIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    const-string v3, "GlobalActions"

    const-string v4, "Error launching KID_MODE_EXIT_APP_ACTIVIT"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRegionID()I
    .locals 4

    const-string v1, "region"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system_acc_region:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleShow()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSysAPMTweak()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/impl/GlobalActions$LongPressAction;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->onPress()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "GlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->show()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExtremePowerSavingMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_extreme_power_saver_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htc_extreme_power_saver_state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFlashlightExist()Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.htc.flashlight"

    const-string v5, "com.htc.flashlight.FlashlightActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v4, "GlobalActions"

    const-string v5, "Flashlight APP (com.htc.flashlight) not found !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKidModeChildLockActive()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->buildHomeIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
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

.method private isSense2Mode()Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v4, "sense_version"

    const-string v5, "5.0"

    invoke-interface {v2, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSenseVersion:F

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSenseVersion:F

    const v5, 0x3fcccccd    # 1.6f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateKidModeState()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private showWarningDialog(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_airplane_warning_dialog"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWarningDialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private startFlashlightActivity()V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isFlashlightExist()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSenseVersion:F

    const/high16 v3, 0x40e00000    # 7.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.htc.flashlight"

    const-string v3, "com.htc.flashlight.FlashlightActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start Flashlight Activity !!! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.STATUS_BAR_FLASHLIGH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.flashlight.state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private supportKidModeApp(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHideKidMode:Z

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "com.zoodles.kidmode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[KID] com.zoodles.kidmode does not exist. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "GlobalActions"

    const-string v5, "[KID] kid mode is not a system app"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateKidModeState()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isKidModeChildLockActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GlobalActions"

    const-string v1, "[KID] Now is Kid Mode Home"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    return-void

    :cond_0
    const-string v0, "GlobalActions"

    const-string v1, "[KID] Not Kid Mode Home"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method


# virtual methods
.method public getDeviceSkuID()I
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    const-string v3, "Android_Core_Framework"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v3, "sku_id"

    invoke-interface {v1, v3, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get device ACC skuID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getSysAPMTweak()Z
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_apm"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public setFlashlightMode(I)V
    .locals 3

    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call setFlashlightMode() from outside, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    return-void
.end method

.method public showDialog(ZZ)V
    .locals 4

    const/4 v2, 0x2

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getDeviceSkuID()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceSkuID:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getRegionID()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRegionID:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const v2, 0x182ae

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto :goto_0
.end method

.method public showDialogAdv()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialogAdv()Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "GlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->show()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
