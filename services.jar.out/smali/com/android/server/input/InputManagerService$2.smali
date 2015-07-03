.class Lcom/android/server/input/InputManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerBootCompletedBroadcastReceiver()V
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

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.HTC_BOOT_COMPLETED"

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputManager"

    const-string v1, "Got BOOT_COMPLETED and update HOME_SWIPE_SETTING/HTC_GESTURE_SETTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    const-string v3, "com.htc.android.htcsetupwizard"

    # invokes: Lcom/android/server/input/InputManagerService;->hasPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/input/InputManagerService;->mHasHtcSetupWizardInstalled:Z
    invoke-static {v0, v2}, Lcom/android/server/input/InputManagerService;->access$102(Lcom/android/server/input/InputManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->handleSetupWizardHasRunUriSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->handleHomeSwipeGestureEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->handleHtcGestureEnabledSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;)V

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
