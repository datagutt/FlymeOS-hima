.class final Lcom/android/server/power/HtcWakeLockMonitor;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;,
        Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;,
        Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;,
        Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;,
        Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;,
        Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;
    }
.end annotation


# instance fields
.field private ABNORMAL_COUNT:I

.field private final DB_KEY_APP_MONITOR:Ljava/lang/String;

.field private DEBUG_ON:Z

.field private final DUMP_RECORD_INTERVAL:J

.field private final ENABLE_DUMP_RECORD:Z

.field private ENABLE_MONITOR:Z

.field private final MASTER_ENABLE:Z

.field private final MAX_RECORDS:I

.field private final MAX_SCREEN_OFF_COUNT:I

.field private MINIMUM_DURATION:J

.field private final MY_UID:I

.field private final NOTIFY_CONTENT_KEY:Ljava/lang/String;

.field private final NOTIFY_INTENT:Ljava/lang/String;

.field private SCREEN_OFF_MINIMUM:J

.field private SCREEN_OFF_RATIO:I

.field private final SHOW_RECORDS:I

.field private final SYS_PROP_ABNORMAL_COUNT:Ljava/lang/String;

.field private final SYS_PROP_DEBUG_ON:Ljava/lang/String;

.field private final SYS_PROP_MINIMUM_DURATION:Ljava/lang/String;

.field private final SYS_PROP_MONITOR:Ljava/lang/String;

.field private final SYS_PROP_ON:Ljava/lang/String;

.field private final SYS_PROP_SCREEN_OFF_MINIMUM:Ljava/lang/String;

.field private final SYS_PROP_SCREEN_OFF_RATIO:Ljava/lang/String;

.field private final SYS_PROP_UID_CHECK_RANGE:Ljava/lang/String;

.field private final SYS_PROP_WHITELIST_VALID_UID:Ljava/lang/String;

.field private final SYS_PROP_WL_HELD_RATIO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private UID_CHECK_RANGE:I

.field private WHITELIST_VALID_UID:I

.field private WL_HELD_RATIO:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDumpRecordTask:Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;

.field private mLastScanTime:J

.field private final mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

.field private final mMonitorTask:Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mScreenState:Z

.field private mScreenTimeStamp:[[J

.field private mScreenTimeStampIndex:I

.field private mSettingsObserver:Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

.field private mTotalScreenOffTime:J

.field private mTotalTime:J

.field private final mUpdateTask:Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;

.field private final mWLM_Handler:Landroid/os/Handler;

.field private final mWLM_Thread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V
    .locals 10

    const/16 v7, 0x28

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "HtcWLM"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    iput-boolean v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MASTER_ENABLE:Z

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    iput-boolean v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    const-string v1, "abnormal_app_monitor_enable"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DB_KEY_APP_MONITOR:Ljava/lang/String;

    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DUMP_RECORD_INTERVAL:J

    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_RECORDS:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SHOW_RECORDS:I

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AudioIn_"

    aput-object v3, v2, v6

    const-string v3, "AudioOut_"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;

    const-string v1, "com.htc.htcpowermanager.batterymonitor.APP_LIST_DETECTED"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->NOTIFY_INTENT:Ljava/lang/String;

    const-string v1, "bad_app_list"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->NOTIFY_CONTENT_KEY:Ljava/lang/String;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    iput v7, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    iput v7, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    iput v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    const-string v1, "persist.htc.wlm.sysprop.on"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_ON:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.debug.on"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_DEBUG_ON:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.monitor"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_MONITOR:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.uid.whitelist"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_WHITELIST_VALID_UID:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.uid.range"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_UID_CHECK_RANGE:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.min.duration"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_MINIMUM_DURATION:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.scr.minimum"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_SCREEN_OFF_MINIMUM:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.scr.ratio"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_SCREEN_OFF_RATIO:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.wl.ratio"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_WL_HELD_RATIO:Ljava/lang/String;

    const-string v1, "persist.htc.wlm.an.count"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_ABNORMAL_COUNT:Ljava/lang/String;

    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mDumpRecordTask:Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;

    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mMonitorTask:Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;

    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mUpdateTask:Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;

    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    invoke-direct {v1, p0, v5}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    iput-boolean v6, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    iput v6, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    iput-wide v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J

    iput-wide v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    iput-wide v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/HtcWakeLockMonitor$1;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: (true,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iput p3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MY_UID:I

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WLM"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->readSysProp()V

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    iget-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    iget-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: MAX_SCREEN_OFF_COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->initObserver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/power/HtcWakeLockMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/HtcWakeLockMonitor;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcWakeLockMonitor;->clearRecord(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MY_UID:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/power/HtcWakeLockMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/power/HtcWakeLockMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/power/HtcWakeLockMonitor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/power/HtcWakeLockMonitor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/power/HtcWakeLockMonitor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/power/HtcWakeLockMonitor;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/server/power/HtcWakeLockMonitor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/power/HtcWakeLockMonitor;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->criteriaToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/ContentQueryMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method private clearRecord(IZ)V
    .locals 6

    if-nez p2, :cond_0

    iget v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    if-ge p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    invoke-virtual {v2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v2

    if-eq p1, v2, :cond_2

    if-eqz p2, :cond_1

    :cond_2
    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I
    invoke-static {v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1602(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;I)I

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1302(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;[J)[J

    iget-boolean v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    const-string v2, "HtcWLM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearRecord: Clear record.("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pid:I
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1700(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    if-eqz p2, :cond_4

    const/4 v2, 0x0

    :try_start_1
    check-cast v2, [[J

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    const-string v2, "HtcWLM"

    const-string v4, "clearRecord: Clear all records."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private criteriaToString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal App(s) w/ criteria: UID>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MINIMUM_DURATION>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SCREEN_OFF_MINIMUM>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SCREEN_OFF_RATIO>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WL_HELD_RATIO>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ABNORMAL_COUNT>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getSumByOffset([[JJ)[J
    .locals 26

    const-wide/16 v18, 0x0

    move-wide/from16 v20, p2

    const-wide/16 v12, 0x0

    const/16 v17, 0x0

    :try_start_0
    aget-object v17, p1, v17

    move-object/from16 v0, v17

    array-length v8, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, p2

    const-wide/16 v22, 0x0

    cmp-long v17, v6, v22

    if-lez v17, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v17, v4, v22

    if-gtz v17, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const-string v17, "HtcWLM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSumByOffset: Abnormal case found.("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    const/16 v22, 0x0

    aput-wide v18, v17, v22

    const/16 v22, 0x1

    aput-wide v20, v17, v22

    :goto_0
    return-object v17

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v8, :cond_9

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    cmp-long v17, v4, v22

    if-gtz v17, :cond_6

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_6

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_6

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v24, v17, v14

    sub-long v12, v22, v24

    const-wide/16 v22, 0x0

    cmp-long v17, v12, v22

    if-lez v17, :cond_3

    add-long v18, v18, v12

    :cond_3
    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    cmp-long v17, v22, v4

    if-gez v17, :cond_4

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_4

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    sub-long v10, v6, v22

    cmp-long v17, v20, v10

    if-lez v17, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_5
    move-wide/from16 v20, v10

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_7

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-eqz v17, :cond_4

    :cond_7
    const/16 v17, 0x0

    aget-object v17, p1, v17

    const-wide/16 v22, 0x0

    aput-wide v22, v17, v14

    const/16 v17, 0x1

    aget-object v17, p1, v17

    const-wide/16 v22, 0x0

    aput-wide v22, v17, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v17

    if-eqz v17, :cond_8

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v17

    const-wide/16 v22, 0x0

    aput-wide v22, v17, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    const-string v17, "HtcWLM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSumByTarget: Exception caught. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    const/16 v22, 0x0

    aput-wide v18, v17, v22

    const/16 v22, 0x1

    aput-wide v20, v17, v22

    goto/16 :goto_0
.end method

.method private initObserver()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWLM"

    const-string v1, "initObserver()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "abnormal_app_monitor_enable"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcWLM"

    const-string v1, "observer added successfully."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcWLM"

    const-string v1, "content query map is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcWLM"

    const-string v1, "content resolver is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "HtcWLM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenOn: Exception caught. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSysProp()V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    const/4 v4, 0x0

    :try_start_0
    const-string v17, "persist.htc.wlm.sysprop.on"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v17, "persist.htc.wlm.debug.on"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    const-string v17, "persist.htc.wlm.monitor"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    const-string v17, "persist.htc.wlm.uid.whitelist"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    const-string v17, "persist.htc.wlm.uid.range"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    const-string v17, "persist.htc.wlm.min.duration"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    const-string v17, "persist.htc.wlm.scr.minimum"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    const-string v17, "persist.htc.wlm.scr.ratio"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    const-string v17, "persist.htc.wlm.wl.ratio"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    const-string v17, "persist.htc.wlm.an.count"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const-string v17, "HtcWLM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readSysProp: PROP_ON=false->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", DEBUG_ON="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", MONITOR="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "HtcWLM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readSysProp: WHITELIST_VALID_UID="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", UID_CHECK_RANGE="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "HtcWLM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readSysProp: MINIMUM_DURATION="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", SCREEN_OFF_MINIMUM="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", SCREEN_OFF_RATIO="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", WL_HELD_RATIO="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", ABNORMAL_COUNT="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const-string v17, "HtcWLM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readSysProp: Unable to get SystemProperties. "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private saveScreenTimeStamp(Z)V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    :try_start_0
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    if-nez v8, :cond_2

    const/4 v8, 0x2

    iget v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    filled-new-array {v8, v10}, [I

    move-result-object v8

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iput-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    :cond_2
    if-nez p1, :cond_3

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/power/HtcWakeLockMonitor;->getSumByOffset([[JJ)[J

    :cond_3
    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    add-int/lit8 v6, v8, 0x1

    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    add-int/lit8 v8, v8, -0x1

    if-le v6, v8, :cond_4

    move v6, v9

    :cond_4
    if-nez p1, :cond_7

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    aget-wide v10, v8, v6

    cmp-long v8, v10, v12

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    aput-wide v10, v8, v6

    iput v6, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp: mScreenTimeStamp[0]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-wide v12, v11, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mUpdateTask:Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_6

    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp: on="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", INDEX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mScreenTimeStampIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MAX_SCREEN_OFF_COUNT="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput v9, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    goto/16 :goto_0

    :cond_7
    if-eqz p1, :cond_5

    :try_start_1
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    aput-wide v10, v8, v0

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v12, 0x0

    aget-object v8, v8, v12

    aget-wide v12, v8, v0

    sub-long v2, v10, v12

    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    cmp-long v8, v2, v10

    if-ltz v8, :cond_a

    :goto_1
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_8

    const-string v10, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v1, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " off duration "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms ("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aget-wide v12, v12, v0

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "~"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-wide v12, v12, v0

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", INDEX="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v1, :cond_5

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    if-gez v8, :cond_c

    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    add-int/lit8 v8, v8, -0x1

    :goto_3
    iput v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    invoke-virtual {v8}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v8

    if-eqz v8, :cond_9

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v8

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    goto :goto_4

    :cond_a
    move v1, v9

    goto/16 :goto_1

    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " off duration "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms less than "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms. Skip."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_c
    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method protected addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWLM"

    const-string v1, "addRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$500(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;ILjava/lang/String;IILandroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected bootCompleted()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mDumpRecordTask:Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected screenState(Z)V
    .locals 14

    const/4 v0, 0x1

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    if-nez v9, :cond_1

    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcWLM"

    const-string v9, "screenState: wake lock monitoring is disabled."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    monitor-enter v9

    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    if-eqz v10, :cond_3

    if-nez p1, :cond_3

    iget-object v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z
    invoke-static {v10}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$400(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    :cond_2
    :goto_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_3
    if-eqz p1, :cond_2

    :try_start_1
    iget-boolean v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    if-nez v10, :cond_4

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J

    sub-long v2, v4, v10

    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v10, v2, v10

    if-ltz v10, :cond_8

    :try_start_2
    iget-object v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-direct {p0, v10, v12, v13}, Lcom/android/server/power/HtcWakeLockMonitor;->getSumByOffset([[JJ)[J

    move-result-object v7

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    iput-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    const/4 v10, 0x1

    aget-wide v10, v7, v10

    iput-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    div-long/2addr v10, v12

    long-to-int v1, v10

    iget v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    if-lt v1, v10, :cond_6

    :goto_2
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    const-string v10, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: monitoring task "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v0, :cond_7

    const-string v8, "assigned."

    :goto_3
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " ratio="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "ms/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "ms="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", SCREEN_OFF_RATIO="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mMonitorTask:Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    :try_start_3
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: Exception caught. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_6
    move v0, v8

    goto/16 :goto_2

    :cond_7
    :try_start_4
    const-string v8, "not assigned."
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_8
    :try_start_5
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: monitoring task skipped.("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method protected stopDeadRecord(Landroid/os/IBinder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWLM"

    const-string v1, "stopDeadRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->stopDeadRecord(Landroid/os/IBinder;)V
    invoke-static {v0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$700(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWLM"

    const-string v1, "stopRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$600(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method
