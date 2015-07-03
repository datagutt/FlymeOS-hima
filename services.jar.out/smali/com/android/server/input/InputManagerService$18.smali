.class Lcom/android/server/input/InputManagerService$18;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerScreenOffBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, v1, Lcom/android/server/input/InputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mGloveModeSetting:I
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/input/InputManagerService;->mIsScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/input/InputManagerService;->access$1902(Lcom/android/server/input/InputManagerService;Z)Z

    const-string v1, "InputManager"

    const-string v3, "Prepare to verify glove mode due to getting screen off broadcast"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    const/4 v1, 0x1

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetGloveInputFilterEnabled(JZ)V
    invoke-static {v4, v5, v1}, Lcom/android/server/input/InputManagerService;->access$2000(JZ)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/input/InputManagerService;->getShowGloveTouchesOption(Z)I
    invoke-static {v1, v3}, Lcom/android/server/input/InputManagerService;->access$2100(Lcom/android/server/input/InputManagerService;Z)I

    move-result v1

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetShowGloveTouches(JI)V
    invoke-static {v4, v5, v1}, Lcom/android/server/input/InputManagerService;->access$2200(JI)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/input/InputManagerService;->setGloveEventEnabledWrapper(I)V
    invoke-static {v1, v3}, Lcom/android/server/input/InputManagerService;->access$2300(Lcom/android/server/input/InputManagerService;I)V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/input/InputManagerService;->mIsScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/input/InputManagerService;->access$1902(Lcom/android/server/input/InputManagerService;Z)Z

    const-string v1, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GloveMode] mIsScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mIsScreenOn:Z
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
