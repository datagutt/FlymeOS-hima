.class final Lcom/android/server/power/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDockState:I
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6100(Lcom/android/server/power/PowerManagerService;)I

    move-result v3

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mDockState:I
    invoke-static {v3, v0}, Lcom/android/server/power/PowerManagerService;->access$6102(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v4, 0x400

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v7

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    # setter for: Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z
    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerService;->access$6202(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eq v1, v7, :cond_3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;JIII)V

    :cond_3
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
