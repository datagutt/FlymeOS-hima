.class Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->update()V
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$4800(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->updateAllHeldDuration()V
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$4900(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
