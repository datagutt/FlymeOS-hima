.class public Lcom/htc/server/HtcTmoAppUsageListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcTmoAppUsageListener.java"


# static fields
.field private static final APP_STATE_EXITED:Ljava/lang/String; = "EXITED"

.field private static final APP_STATE_FOCUS_GAIN:Ljava/lang/String; = "FOCUS_GAIN"

.field private static final APP_STATE_FOCUS_LOSS:Ljava/lang/String; = "FOCUS_LOSS"

.field private static final APP_STATE_START:Ljava/lang/String; = "START"

.field protected static final APP_TERM_REASONS:[Ljava/lang/String;

.field private static final APP_TERM_REASON_ANR:Ljava/lang/String; = "ANR"

.field private static final APP_TERM_REASON_CRASH:Ljava/lang/String; = "CRASH"

.field private static final APP_TERM_REASON_SYSTEM_HALT:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field private static final APP_TERM_REASON_USER_HALT:Ljava/lang/String; = "USER_HALTED"

.field static final DEBUG:Z

.field private static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APP_STATE:Ljava/lang/String; = "ApplicationState"

.field private static final EXTRA_APP_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field public static final STOP_REASON_ANR:I = 0x2

.field public static final STOP_REASON_BROADCAST_MAX:I = 0x3

.field public static final STOP_REASON_BROADCAST_MIN:I = 0x0

.field public static final STOP_REASON_CRASH:I = 0x3

.field public static final STOP_REASON_HTC_SYSTEM_READY:I = 0xa

.field public static final STOP_REASON_NORMAL_SYSTEM_HALT:I = 0x0

.field public static final STOP_REASON_UNKNOWN:I = -0x1

.field public static final STOP_REASON_USER_HALT:I = 0x1

.field static final TAG:Ljava/lang/String; = "HtcTmoAppUsageListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mSystemReady:Z

.field private mUserAppMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/server/ApplicationState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    sput-boolean v0, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NORMAL_SYSTEM_HALT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "USER_HALTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ANR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CRASH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/HtcTmoAppUsageListener;->APP_TERM_REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iput-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSystemReady:Z

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    return-void
.end method

.method private broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSystemReady:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "EXITED"

    if-ne p2, v3, :cond_5

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "diagandroid.app.ApplicationState"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ApplicationPackageName"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ApplicationState"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_3

    const-string v3, "ApplicationTermReason"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    sget-boolean v3, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "HtcTmoAppUsageListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_6

    :goto_2
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    const-string p3, ""

    goto :goto_2
.end method

.method private broadcastFocusLossWhenAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcTmoAppUsageListener"

    const-string v1, "focus lost due to app died"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "FOCUS_LOSS"

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    :cond_1
    return-void
.end method

.method private getApplicationState(ILjava/lang/String;Z)Lcom/htc/server/ApplicationState;
    .locals 4

    iget-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/ApplicationState;

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v0, Lcom/htc/server/ApplicationState;

    invoke-direct {v0}, Lcom/htc/server/ApplicationState;-><init>()V

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "START"

    const/4 v3, 0x0

    invoke-direct {p0, p2, v2, v3}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private handleAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 8

    iget-object v5, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->stopReason:I

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    iget v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    sget-boolean v5, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcTmoAppUsageListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app exit, userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " process = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/HtcWrapProcessRecord;->stopReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v5}, Lcom/htc/server/HtcTmoAppUsageListener;->getApplicationState(ILjava/lang/String;Z)Lcom/htc/server/ApplicationState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v3}, Lcom/htc/server/ApplicationState;->removeProcess(II)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastFocusLossWhenAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V

    if-ltz v3, :cond_1

    const/4 v5, 0x3

    if-gt v3, v5, :cond_1

    const-string v5, "EXITED"

    invoke-virtual {v0}, Lcom/htc/server/ApplicationState;->getTermReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v5, v6}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v4, v1}, Lcom/htc/server/HtcTmoAppUsageListener;->removeApplicationState(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeApplicationState(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    const-string v1, "HtcTmoAppUsageListener"

    const-string v2, "map should not be null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/HtcWrapProcessRecord;->crashing:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->handleAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V

    goto :goto_0
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->handleAppExit(Lcom/android/server/am/HtcWrapProcessRecord;)V

    goto :goto_0
.end method

.method public onFinishBooting()V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSystemReady:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mSystemReady:Z

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    sget-boolean v5, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "HtcTmoAppUsageListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFinishBooting, userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mUserAppMaps:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "procs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "START"

    invoke-direct {p0, v2, v5, v8}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "FOCUS_GAIN"

    invoke-direct {p0, v5, v6, v8}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v3, "HtcTmoAppUsageListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleTopAppChanged, current = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    if-nez v2, :cond_5

    const-string v2, "null"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", next = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "FOCUS_LOSS"

    invoke-direct {p0, v2, v3, v5}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "FOCUS_GAIN"

    invoke-direct {p0, v1, v2, v5}, Lcom/htc/server/HtcTmoAppUsageListener;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mCurrentTop:Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    goto :goto_1
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/htc/server/HtcTmoAppUsageListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/htc/server/HtcTmoAppUsageListener;->isProcessDataValid(Lcom/android/server/am/HtcWrapProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/htc/server/HtcTmoAppUsageListener;->getApplicationState(ILjava/lang/String;Z)Lcom/htc/server/ApplicationState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v3, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Lcom/htc/server/ApplicationState;->addProcess(I)V

    :goto_1
    sget-boolean v3, Lcom/htc/server/HtcTmoAppUsageListener;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcTmoAppUsageListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartProcessLocked, userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " process = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "HtcTmoAppUsageListener"

    const-string v4, "unable to get app state"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
