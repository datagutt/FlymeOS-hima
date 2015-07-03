.class final Lcom/android/server/power/HtcWakeLockDetector;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLock;,
        Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;
    }
.end annotation


# static fields
.field private static smLocationRequesterListPid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static smLocationRequesterListProcessName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static smLocationRequesterListProvider:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final smSyncLock:Ljava/lang/Object;


# instance fields
.field private final CONFIG_FILE_PATH_COPY:Ljava/lang/String;

.field private final CONFIG_FILE_PATH_SOURCE:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final MY_UID:I

.field private final PROC_STAT_IDLE_TIME_1:I

.field private final PROC_STAT_IDLE_TIME_2:I

.field private final PROC_STAT_UP_TIME_1:I

.field private final PROC_STAT_UP_TIME_2:I

.field private final TAG:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private mConfigLastModified:J

.field private final mContext:Landroid/content/Context;

.field private mGpsFirstFix:Z

.field private mGpsSatelliteCount:J

.field private mGpsStarted:Z

.field private mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNonFirstFixCount:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSyncLock:Ljava/lang/Object;

.field private final mWLD_Handler:Landroid/os/Handler;

.field private final mWLD_Thread:Landroid/os/HandlerThread;

.field private final mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v2.0.0"

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->VERSION:Ljava/lang/String;

    const-string v0, "HtcWLD_v2.0.0"

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->MASTER_ENABLE:Z

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    const-string v0, "/system/etc/wld_config.xml"

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->CONFIG_FILE_PATH_SOURCE:Ljava/lang/String;

    const-string v0, "/data/wld_config.xml"

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->CONFIG_FILE_PATH_COPY:Ljava/lang/String;

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->PROC_STAT_UP_TIME_1:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->PROC_STAT_UP_TIME_2:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->PROC_STAT_IDLE_TIME_1:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->PROC_STAT_IDLE_TIME_2:I

    new-instance v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    invoke-direct {v0, p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;-><init>(Lcom/android/server/power/HtcWakeLockDetector;)V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z

    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J

    iput v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iput p3, p0, Lcom/android/server/power/HtcWakeLockDetector;->MY_UID:I

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Thread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;

    new-instance v0, Lcom/android/server/power/HtcWakeLockDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/HtcWakeLockDetector$1;-><init>(Lcom/android/server/power/HtcWakeLockDetector;)V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/HtcWakeLockDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/server/power/HtcWakeLockDetector;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    return-wide p1
.end method

.method static synthetic access$008(Lcom/android/server/power/HtcWakeLockDetector;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/HtcWakeLockDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcWakeLockDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/power/HtcWakeLockDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcWakeLockDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/power/HtcWakeLockDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/server/power/HtcWakeLockDetector;)I
    .locals 2

    iget v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addLocationRequester(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v4, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private clearLocationRequesterList()V
    .locals 2

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doBeforeRunning()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    return-void
.end method

.method private getLocationRequesterList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-object v7, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_0

    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-object v7, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_0

    const/4 v1, -0x1

    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;

    invoke-direct {v2, p0}, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;-><init>(Lcom/android/server/power/HtcWakeLockDetector;)V

    iput v1, v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->id:I

    iput v3, v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->pid:I

    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->processName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->provider:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    const-string v5, "HtcWLD_v2.0.0"

    const-string v7, "Exception in getLocationRequesterList(): The list of requester info are inconsistent."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method private getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18

    const-string v12, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v8

    const-string v12, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v10

    const/high16 v2, -0x40800000    # -1.0f

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-ltz v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-ltz v12, :cond_0

    add-long v12, v10, v6

    add-long v14, v8, v4

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    cmp-long v12, v10, v8

    if-ltz v12, :cond_0

    sub-long v12, v10, v8

    long-to-float v12, v12

    add-long v14, v10, v6

    add-long v16, v8, v4

    sub-long v14, v14, v16

    long-to-float v13, v14

    div-float v2, v12, v13

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v2, v12

    :cond_0
    return v2
.end method

.method private isMusicActive()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/HtcWakeLockDetector;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Exception] isMusicActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v3, "HtcWLD_v2.0.0"

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

.method public static notifyWLDLocationRequest(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/power/HtcWakeLockDetector;->addLocationRequester(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockDetector;->removeLocationRequester(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HtcWLD"

    const-string v2, "Exception in notifyWLDLocationRequest:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readProcessStat(I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method

.method private readSystemStat()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/proc/stat"

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    const-string v4, "HtcWLD_v2.0.0"

    const-string v5, "[Warning] Cannot open /proc/stat"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private static removeLocationRequester(I)V
    .locals 4

    sget-object v2, Lcom/android/server/power/HtcWakeLockDetector;->smSyncLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListPid:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProcessName:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/power/HtcWakeLockDetector;->smLocationRequesterListProvider:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected addWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

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

.method protected bootCompleted()V
    .locals 0

    return-void
.end method

.method public getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .locals 18

    const-string v9, " "

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v16

    add-long v10, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemIdleTime([Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector;->getSystemUptime([Ljava/lang/String;)J

    move-result-wide v16

    add-long v12, v14, v16

    const-string v9, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessUptime([Ljava/lang/String;)J

    move-result-wide v2

    const-string v9, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessUptime([Ljava/lang/String;)J

    move-result-wide v4

    const/high16 v6, -0x40800000    # -1.0f

    const-wide/16 v14, 0x0

    cmp-long v9, v2, v14

    if-ltz v9, :cond_0

    cmp-long v9, v4, v2

    if-ltz v9, :cond_0

    cmp-long v9, v12, v10

    if-lez v9, :cond_0

    const/high16 v9, 0x42c80000    # 100.0f

    sub-long v14, v4, v2

    long-to-float v14, v14

    mul-float/2addr v9, v14

    sub-long v14, v12, v10

    long-to-float v14, v14

    div-float v6, v9, v14

    :cond_0
    return v6
.end method

.method public getProcessIdleTime([Ljava/lang/String;)J
    .locals 4

    const/16 v0, 0xf

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x10

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getProcessUptime([Ljava/lang/String;)J
    .locals 4

    const/16 v0, 0xd

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0xe

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSystemIdleTime([Ljava/lang/String;)J
    .locals 4

    const/4 v1, 0x5

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "HtcWLD_v2.0.0"

    const-string v2, "[Exception] Fail to parse long for system idle time!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getSystemUptime([Ljava/lang/String;)J
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    :try_start_0
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "HtcWLD_v2.0.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Exception] Fail to parse long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    :cond_1
    return-wide v2
.end method

.method protected removeWakeLock(Landroid/os/IBinder;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;

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
