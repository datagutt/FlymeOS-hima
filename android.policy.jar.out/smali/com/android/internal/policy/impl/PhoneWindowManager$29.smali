.class Lcom/android/internal/policy/impl/PhoneWindowManager$29;
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

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_0

    const-string v1, "InputDispatcher"

    const-string v2, "LongPress POWER to show 2key HWReset hint"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "shutdown_hw_reset_hint_text_sense55"

    const-string v3, "string"

    const-string v4, "com.htc.framework"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_1

    const-string v1, "InputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hwResetTextHint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->show()V

    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_2

    const-string v1, "InputDispatcher"

    const-string v2, "m2KeyHWResetHint.show"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
