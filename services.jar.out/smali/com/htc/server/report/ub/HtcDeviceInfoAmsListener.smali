.class public Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcDeviceInfoAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"


# instance fields
.field private mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

.field private mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->noteAppDied(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onAppDiedLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFinishBooting()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    invoke-virtual {v1}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onFinishBooting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    invoke-virtual {v1, p1}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onHandleActivityPaused"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;

    invoke-virtual {v1, p1}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onHandleActivityResumed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ReportConfig;->isShippingRom()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    invoke-direct {v1, p2}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    new-instance v1, Lcom/htc/server/report/ub/ActivityLaunchRecord;

    iget-object v2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    invoke-direct {v1, v2}, Lcom/htc/server/report/ub/ActivityLaunchRecord;-><init>(Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;)V

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mActivityLaunchRecord:Lcom/htc/server/report/ub/ActivityLaunchRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onMain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onShutdown()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;->mDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    invoke-virtual {v1}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "Failed in onShutdown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
