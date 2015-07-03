.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final DESKDOCK_MILLISECOND_PER_UNIT:I = 0xea60

.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final localLOG:Z


# instance fields
.field private final HTC_AUTOMOTIVE_PACKAGE_NAME:Ljava/lang/String;

.field private final HTC_DOCKAPP_CLASS_NAME:Ljava/lang/String;

.field private final HTC_DOCKAPP_PACKAGE_NAME:Ljava/lang/String;

.field private final HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mDefaultUiModeType:I

.field private mDeskDockDimScreenValue:I

.field private mDeskModeEnabled:Z

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

.field mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mIntent4HtcAutoMotive:Landroid/content/Intent;

.field private mLastBroadcastState:I

.field final mLock:Ljava/lang/Object;

.field mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/os/IBinder;

.field private mSetUiMode:I

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z

.field private mbIsAutoEnterUiMode:Z

.field private mbIsCarDockStateChanged:Z

.field private mbIsHtcAutoMotiveInstalled:Z

.field private mbIsHtcDockModeAppExist:Z

.field private mbIsHtcSetupWizardInstalled:Z

.field private mbIsKeepsScreenOn4DeskMode:Z

.field private mbKeepScreenOnWhenCharing:Z

.field private final strCustomizedReaderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/UiModeManagerService;->localLOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    iput v3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    const-string v0, "com.htc.dockmode"

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->HTC_DOCKAPP_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.htc.dockmode.DockNotifyActivity"

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->HTC_DOCKAPP_CLASS_NAME:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    const-string v0, "com.htc.android.htcsetupwizard"

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mIntent4HtcAutoMotive:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsAutoEnterUiMode:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcAutoMotiveInstalled:Z

    const-string v0, "com.htc.AutoMotive"

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->HTC_AUTOMOTIVE_PACKAGE_NAME:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v0, "Android_Core_Framework"

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->strCustomizedReaderName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mbKeepScreenOnWhenCharing:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->checkHtcAutomotiveInstalled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/UiModeManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/UiModeManagerService;->localLOG:Z

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcAutoMotiveInstalled:Z

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    const v10, 0x1040547

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    const-string v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_1

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    const v3, 0x1080653

    iput v3, v6, Landroid/app/Notification;->icon:I

    const/4 v3, 0x2

    iput v3, v6, Landroid/app/Notification;->flags:I

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1060058

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v6, Landroid/app/Notification;->color:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v3, 0x1040548

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v6, v0, v7, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v6, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private adjustStatusBarDeskModeLocked()V
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    const v10, 0x307010c

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    const-string v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_1

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v3, :cond_3

    const-string v3, "android.intent.category.DESK_DOCK"

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    const v3, 0x302008b

    iput v3, v6, Landroid/app/Notification;->icon:I

    const/4 v3, 0x2

    iput v3, v6, Landroid/app/Notification;->flags:I

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v3, 0x307010d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v6, v0, v7, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v6, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private checkAppPackageInstalled(Ljava/lang/String;)Z
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v6, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAppPackageInstalled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Time spent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v6, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAppPackageInstalled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " => No found, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    sget-object v6, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAppPackageInstalled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Time spent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    sget-object v7, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAppPackageInstalled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Time spent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_1
    throw v6
.end method

.method private checkHtcAutomotiveInstalled(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mIntent4HtcAutoMotive:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mIntent4HtcAutoMotive:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :goto_0
    sget-boolean v2, Lcom/android/server/UiModeManagerService;->localLOG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcAutomotive Installed, ai = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getAutoLaunchCarDock()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_launch_car_dock"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method private getAutoLaunchDeskDock()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "deskdock_auto_launch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method private getDimScreenTimeoutValue(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_dim_screen"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasOOBEState()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "setup_wizard_has_run"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isDeskDockState(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private launchHtcDockMode(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Landroid/app/UiModeManager;->ACTION_DOCKMODE_SENSE40:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Landroid/app/UiModeManager;->EVENT_TYPE_DOCK_MODE_SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .locals 18

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    const/4 v14, 0x0

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsAutoEnterUiMode:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcAutoMotiveInstalled:Z

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mIntent4HtcAutoMotive:Landroid/content/Intent;

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v17

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsAutoEnterUiMode:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v17, :cond_4

    const/4 v14, 0x1

    :cond_0
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    if-eqz p1, :cond_1

    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v4, v16

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start dock app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startActivityWithConfig result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v15

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start dock app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private sendConfigurationLocked()V
    .locals 3

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const-string v0, "android.intent.category.CAR_DOCK"

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    const-string v0, "android.intent.category.DESK_DOCK"

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->launchHtcDockMode(Z)V

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_4

    const-string v0, "android.intent.category.HOME"

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->launchHtcDockMode(Z)V

    goto :goto_0
.end method

.method private updateComputedNightModeLocked()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    :cond_0
    return-void
.end method

.method private updateConfigurationLocked()V
    .locals 2

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x20

    :goto_1
    or-int/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    goto :goto_2

    :cond_7
    and-int/lit8 v1, v0, -0x31

    or-int/lit8 v0, v1, 0x10

    goto :goto_2
.end method

.method private updateDockState(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_6

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->hasOOBEState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->getAutoLaunchCarDock()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->getAutoLaunchDeskDock()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->hasOOBEState()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v1, :cond_3

    monitor-exit v4

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_7

    move v3, v1

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    if-ne v0, v6, :cond_8

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before updateLocked ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsAutoEnterUiMode:Z

    sget-boolean v1, Lcom/android/server/UiModeManagerService;->localLOG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mbIsAutoEnterUiMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mbIsAutoEnterUiMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mbIsHtcAutoMotiveInstalled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcAutoMotiveInstalled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDockState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastBroadcastState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCarModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mComputedNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCarModeEnableFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mTwilightService.getCurrentState()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, " mDeskDockDimScreenValue="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mDeskModeKeepsScreenOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCarModeKeepsScreenOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDoingNightModeLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    monitor-exit v2

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 13

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    const-string v1, "power"

    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    const/16 v1, 0x1a

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0038

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v11, :cond_4

    move v1, v11

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0036

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v11, :cond_5

    move v1, v11

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.software.leanback"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    move v1, v11

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ui_night_mode"

    invoke-static {v1, v3, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v4}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    const-string v1, "uimode"

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->checkAppPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "deskdock_dim_screen"

    aput-object v5, v4, v12

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v9, v3, v11, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    new-instance v10, Lcom/android/server/UiModeManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/android/server/UiModeManagerService$SettingsObserver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    invoke-direct {p0, v6}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const v3, 0xea60

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mIntent4HtcAutoMotive:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mIntent4HtcAutoMotive:Landroid/content/Intent;

    const-string v3, "com.htc.AutoMotive"

    const-string v4, "com.htc.AutoMotive.carousel.MainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v6}, Lcom/android/server/UiModeManagerService;->checkHtcAutomotiveInstalled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcAutoMotiveInstalled:Z

    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeMgr:Lcom/htc/customization/HtcCustomizationManager;

    const-string v2, "Android_Core_Framework"

    invoke-virtual {v1, v2, v11, v12}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHtcCustomizeReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "uimode_keep_screenon_when_charging"

    invoke-interface {v1, v2, v11}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbKeepScreenOnWhenCharing:Z

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep screen on when charging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mbKeepScreenOnWhenCharing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    move v1, v12

    goto/16 :goto_0

    :cond_5
    move v1, v12

    goto/16 :goto_1

    :cond_6
    move v1, v12

    goto/16 :goto_2
.end method

.method setCarModeLocked(ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    :cond_0
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    return-void
.end method

.method setDeskModeLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    :cond_0
    return-void
.end method

.method updateLocked(II)V
    .locals 13

    const/4 v9, 0x0

    const/4 v12, 0x0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    :cond_2
    :goto_1
    if-eqz v9, :cond_10

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "enableFlags"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "disableFlags"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    :goto_2
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbKeepScreenOnWhenCharing:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    if-eqz v0, :cond_14

    :cond_4
    const/4 v11, 0x1

    :goto_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eq v11, v0, :cond_5

    if-eqz v11, :cond_15

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    :cond_7
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-nez v0, :cond_0

    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.htc.dockmode"

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->checkAppPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    :goto_6
    if-eqz v12, :cond_a

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v0, :cond_e

    :cond_d
    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move-object v9, v12

    goto/16 :goto_1

    :cond_10
    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_12

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_11

    :cond_11
    :goto_8
    invoke-direct {p0, v10}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v0, :cond_13

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_11

    const-string v10, "android.intent.category.DESK_DOCK"

    goto :goto_8

    :cond_13
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    const-string v10, "android.intent.category.HOME"

    goto :goto_8

    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_15
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4
.end method

.method updateTwilight()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

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
