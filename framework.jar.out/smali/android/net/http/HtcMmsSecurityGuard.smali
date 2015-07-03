.class public final Landroid/net/http/HtcMmsSecurityGuard;
.super Ljava/lang/Object;
.source "HtcMmsSecurityGuard.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "HtcMmsSecurityGuard"

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/net/http/HtcMmsSecurityGuard;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/http/HtcMmsSecurityGuard;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission()Z
    .locals 4

    sget-object v2, Landroid/net/http/HtcMmsSecurityGuard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "HtcMmsSecurityGuard"

    const-string v3, "checkPermission failed, cannot get current application info!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/HtcMmsSecurityGuard;->isHtcInhouseApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/net/http/HtcMmsSecurityGuard;->checkPermissionWithAppOps(Landroid/app/Application;)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static checkPermissionWithAppOps(Landroid/app/Application;)Z
    .locals 5

    const-string v2, "appops"

    invoke-virtual {p0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v2, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    sget-boolean v2, Landroid/net/http/HtcMmsSecurityGuard;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcMmsSecurityGuard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", send MMS permission mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isHtcInhouseApp(Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.sense.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Landroid/net/http/HtcMmsSecurityGuard;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcMmsSecurityGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission auto granted for HTC in-house app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    sget-boolean v0, Landroid/net/http/HtcMmsSecurityGuard;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "HtcMmsSecurityGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not HTC in-house app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
