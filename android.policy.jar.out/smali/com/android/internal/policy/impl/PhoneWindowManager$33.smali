.class Lcom/android/internal/policy/impl/PhoneWindowManager$33;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mDelayNeedToEndCall:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2302(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->needHandleDotviewLongPressPowerkey()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "InputDispatcher"

    const-string v3, "dotview : acceptRingingCall()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->EndCallWithDotview()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    :cond_1
    const-string v3, "InputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected result. dotview= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " incall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " telephonyService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const-string v3, "InputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no action. dotview= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ringing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " incall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " telephonyService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method
