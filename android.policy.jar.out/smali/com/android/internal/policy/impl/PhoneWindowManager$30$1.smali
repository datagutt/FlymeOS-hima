.class Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;
.super Landroid/os/CountDownTimer;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$30;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

.field final synthetic val$hwResetText_55:I

.field final synthetic val$hwResetText_singular_55:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$30;JJII)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iput p6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->val$hwResetText_singular_55:I

    iput p7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->val$hwResetText_55:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->val$hwResetText_singular_55:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->val$hwResetText_singular_55:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 9

    const-wide/16 v6, 0x3e8

    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    const-string v0, "InputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p1, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    div-long v0, p1, v6

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->val$hwResetText_singular_55:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->val$hwResetText_singular_55:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->val$hwResetText_55:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->val$hwResetText_55:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
