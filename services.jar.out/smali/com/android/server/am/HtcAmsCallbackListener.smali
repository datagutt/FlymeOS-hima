.class public Lcom/android/server/am/HtcAmsCallbackListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAmsCallbackListener.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackListener;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/android/server/am/HtcAmsUtil;->notifyVzwLogger(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/am/HtcAmsCallbackListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackListener;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/android/server/am/HtcAmsUtil;->notifyVzwLogger(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method
