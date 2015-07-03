.class Lcom/android/server/UiModeManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$SettingsObserver;-><init>(Lcom/android/server/UiModeManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->context:Landroid/content/Context;

    # invokes: Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->access$500(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)I

    move-result v2

    # setter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v0, v2}, Lcom/android/server/UiModeManagerService;->access$402(Lcom/android/server/UiModeManagerService;I)I

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    const v3, 0xea60

    mul-int/2addr v2, v3

    # setter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v0, v2}, Lcom/android/server/UiModeManagerService;->access$402(Lcom/android/server/UiModeManagerService;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
