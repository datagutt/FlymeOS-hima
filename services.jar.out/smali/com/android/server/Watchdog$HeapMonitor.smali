.class Lcom/android/server/Watchdog$HeapMonitor;
.super Landroid/os/Handler;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeapMonitor"
.end annotation


# static fields
.field static final MESSAGE_MONITOR:I = 0xc8

.field static final PER_MONITOR_MS:I = 0x493e0

.field static final THRESHOLD_INCREMENTAL:J = 0x3200000L


# instance fields
.field private THRESHOLD:J

.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/Watchdog$HeapMonitor;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/32 v0, 0x6e00000

    iput-wide v0, p0, Lcom/android/server/Watchdog$HeapMonitor;->THRESHOLD:J

    return-void
.end method

.method private handleMonitor()V
    .locals 8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long v0, v4, v2

    iget-wide v6, p0, Lcom/android/server/Watchdog$HeapMonitor;->THRESHOLD:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    const-wide/32 v6, 0x3200000

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/server/Watchdog$HeapMonitor;->THRESHOLD:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/Watchdog$HeapMonitor;->startDumpHeapTask(J)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    goto :goto_0
.end method

.method private startDumpHeapTask(J)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Lcom/android/server/Watchdog$DumpHeapTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/Watchdog$DumpHeapTask;-><init>(Lcom/android/server/Watchdog$HeapMonitor;J)V

    invoke-virtual {v2}, Lcom/android/server/Watchdog$DumpHeapTask;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Watchdog"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/Watchdog$HeapMonitor;->handleMonitor()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public monitor()V
    .locals 4

    const/16 v0, 0xc8

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/Watchdog$HeapMonitor;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
