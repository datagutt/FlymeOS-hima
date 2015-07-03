.class Lcom/android/internal/telephony/SSCommandOverUT$1;
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
    .line 366
    iput-object p1, p0, Lcom/android/internal/telephony/SSCommandOverUT$1;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    const-string v0, "SSCommandOverUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisableUTRunnable onCommandFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SSCommandOverUT$1;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    # getter for: Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I
    invoke-static {v2}, Lcom/android/internal/telephony/SSCommandOverUT;->access$000(Lcom/android/internal/telephony/SSCommandOverUT;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT$1;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    # getter for: Lcom/android/internal/telephony/SSCommandOverUT;->mCommandFinish:I
    invoke-static {v0}, Lcom/android/internal/telephony/SSCommandOverUT;->access$000(Lcom/android/internal/telephony/SSCommandOverUT;)I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/SSCommandOverUT$1;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    # getter for: Lcom/android/internal/telephony/SSCommandOverUT;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/SSCommandOverUT;->access$100(Lcom/android/internal/telephony/SSCommandOverUT;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SSCommandOverUT$1;->this$0:Lcom/android/internal/telephony/SSCommandOverUT;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SSCommandOverUT;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetImsUtPdp(ILandroid/os/Message;)V

    .line 371
    # setter for: Lcom/android/internal/telephony/SSCommandOverUT;->mUTStatus:I
    invoke-static {v3}, Lcom/android/internal/telephony/SSCommandOverUT;->access$202(I)I

    .line 373
    :cond_0
    return-void
.end method
