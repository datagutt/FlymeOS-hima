.class Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAmsCallbackManager;


# direct methods
.method private constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.afterStartActivityUncheckedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.beforeStartActivityUncheckedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAddRecentTask(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAddRecentTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAddRecentTaskLocked, deprecated!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAppDiedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAppDiedLockedV2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAttachApplicationLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onBroadcastIntentLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onCleanUpApplicationRecordLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onCrashApplication"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinishBooting()V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onFinishBooting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGenerateApplicationProvidersLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGenerateProcessError"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGoingToSleep()V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleActivityPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleActivityResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHandleApplicationCrash(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleApplicationCrash, deprecated!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHandleApplicationCrashV2(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/util/HashSet;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleApplicationCrashV2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleTopAppChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHibernate()V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHibernate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHibernateKillApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onMain"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onRealAppNotResponding"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onRemoveProcessLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResumeFromHibernate()V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onResumeFromHibernate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShutdown()V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onShutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartActivityUncheckedLockedNewIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartProcessLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartProcessLockedNewPackage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWakingUp()V
    .locals 2

    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onWakingUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
