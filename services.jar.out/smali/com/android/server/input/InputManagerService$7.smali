.class Lcom/android/server/input/InputManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerPhoneStateChangedBroadcastReceiver()V
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

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/input/InputManagerService;->HTC_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, v1, Lcom/android/server/input/InputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mIsTelephonyRinging:Z
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)Z

    move-result v1

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/input/InputManagerService;->mIsTelephonyRinging:Z
    invoke-static {v1, v3}, Lcom/android/server/input/InputManagerService;->access$702(Lcom/android/server/input/InputManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->updateNativeHomeSwipeEnabledLocked()V
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$800(Lcom/android/server/input/InputManagerService;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mIsTelephonyIdle:Z
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)Z

    move-result v1

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/input/InputManagerService;->mIsTelephonyIdle:Z
    invoke-static {v1, v3}, Lcom/android/server/input/InputManagerService;->access$902(Lcom/android/server/input/InputManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$7;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->handleHtcGestureStateLocked()V
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1000(Lcom/android/server/input/InputManagerService;)V

    :cond_2
    monitor-exit v2

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
