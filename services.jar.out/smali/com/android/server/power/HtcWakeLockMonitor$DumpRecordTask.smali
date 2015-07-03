.class Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;
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
    name = "DumpRecordTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4600(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->dump()V
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$4700(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4600(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
