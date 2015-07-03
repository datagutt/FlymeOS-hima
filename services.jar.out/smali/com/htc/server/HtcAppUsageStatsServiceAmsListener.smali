.class public Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAppUsageStatsServiceAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcAppWifiOffload"


# instance fields
.field mHtcAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    invoke-static {}, Lcom/htc/server/HtcAppWifiOffload;->getInstance()Lcom/htc/server/HtcAppWifiOffload;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    return-void
.end method


# virtual methods
.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 8

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_2

    const-string v5, "HtcAppWifiOffload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_REMOVE uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_3

    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "android.intent.extra.PACKAGES"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_4

    const-string v5, "HtcAppWifiOffload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_REMOVE ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcAppWifiOffload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removedPackageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    invoke-virtual {v5, v4, v2}, Lcom/htc/server/HtcAppWifiOffload;->notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_6

    const-string v5, "HtcAppWifiOffload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_ADDED uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_7

    const-string v5, "HtcAppWifiOffload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_ADDED ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    invoke-virtual {v5, v4}, Lcom/htc/server/HtcAppWifiOffload;->notePackageAdded(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    iget-object v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/HtcWrapActivityRecord;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/server/HtcAppWifiOffload;->noteActivityResume(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HtcAppWifiOffload"

    const-string v2, "onHandleActivityResumed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0

    return-void
.end method
