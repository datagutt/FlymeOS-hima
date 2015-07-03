.class Lcom/android/internal/telephony/SSCommandOverUT$2;
.super Ljava/lang/Object;
.source "SSCommandOverUT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SSCommandOverUT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SSCommandOverUT;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SSCommandOverUT;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/internal/telephony/SSCommandOverUT$2;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 378
    const-string v0, "SSCommandOverUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRetrySetUTRunnable mRetryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I
    invoke-static {}, Lcom/android/internal/telephony/SSCommandOverUT;->access$300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    # getter for: Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I
    invoke-static {}, Lcom/android/internal/telephony/SSCommandOverUT;->access$300()I

    move-result v0

    if-gez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT$2;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    # getter for: Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/SSCommandOverUT;->access$100(Lcom/android/internal/telephony/SSCommandOverUT;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT$2;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetImsUtPdp(ILandroid/os/Message;)V

    .line 381
    const/4 v0, 0x2

    # setter for: Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I
    invoke-static {v0}, Lcom/android/internal/telephony/SSCommandOverUT;->access$202(I)I

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT$2;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    # getter for: Lcom/android/internal/telephony/SSCommandOverUT;->mSetUThandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/telephony/SSCommandOverUT;->access$400(Lcom/android/internal/telephony/SSCommandOverUT;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT$2;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    iget-object v1, v1, Lcom/android/internal/telephony/SSCommandOverUT;->mRetrySetUTRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    # operator++ for: Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I
    invoke-static {}, Lcom/android/internal/telephony/SSCommandOverUT;->access$308()I

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/telephony/SSCommandOverUT;->mRetryCount:I
    invoke-static {v0}, Lcom/android/internal/telephony/SSCommandOverUT;->access$302(I)I

    .line 387
    const/4 v0, 0x3

    # setter for: Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I
    invoke-static {v0}, Lcom/android/internal/telephony/SSCommandOverUT;->access$202(I)I

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT$2;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    # invokes: Lcom/android/internal/telephony/SSCommandOverUT;->sendCommand()V
    invoke-static {v0}, Lcom/android/internal/telephony/SSCommandOverUT;->access$500(Lcom/android/internal/telephony/SSCommandOverUT;)V

    goto :goto_0
.end method
