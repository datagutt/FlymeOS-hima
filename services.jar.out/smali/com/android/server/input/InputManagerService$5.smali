.class Lcom/android/server/input/InputManagerService$5;
.super Landroid/database/ContentObserver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerSettingsContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "InputManager"

    const-string v1, "HTC_GLOVE_MODE_KEY onChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$5;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->initGloveMode()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
