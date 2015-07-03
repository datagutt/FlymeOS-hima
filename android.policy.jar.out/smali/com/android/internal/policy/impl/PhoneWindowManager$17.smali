.class Lcom/android/internal/policy/impl/PhoneWindowManager$17;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string v4, "com.htc.autobot.PROJECTOR_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "EXTRA_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->lockLandscapeForHtcMode(Z)V
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const-string v4, "com.htc.autobot.htcmodeclient.USBPlug"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "IsPlug"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_3

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autobot: htc mode usb plug = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->lockLandscapeForHtcMode(Z)V
    invoke-static {v4, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_1

    :cond_4
    const-string v4, "com.htc.HTCMirrorLinkServer.ACTION_STOP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_5

    const-string v4, "WindowManager"

    const-string v5, "autobot: mirror link un-plug"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->lockLandscapeForHtcMode(Z)V
    invoke-static {v4, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_1
.end method
