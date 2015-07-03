.class Lcom/android/server/power/PowerManagerService$6;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "Clear Once ScreenTimeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, -0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$5302(Lcom/android/server/power/PowerManagerService;I)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
