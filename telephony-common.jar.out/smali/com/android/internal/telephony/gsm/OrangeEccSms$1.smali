.class Lcom/android/internal/telephony/gsm/OrangeEccSms$1;
.super Ljava/lang/Object;
.source "OrangeEccSms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/OrangeEccSms;->refreshNtpTimeStamp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/util/TrustedTime;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mTime:Landroid/util/TrustedTime;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/util/TrustedTime;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/TrustedTime;->forceRefresh()Z

    move-result v0

    .line 199
    .local v0, "result":Z
    const-string v1, "OrangeEccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-nez v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$1;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # invokes: Lcom/android/internal/telephony/gsm/OrangeEccSms;->refreshNtpTimeStamp()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$200(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V

    .line 203
    :cond_0
    # operator++ for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mNtpRetryCnt:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$308()I

    .line 205
    .end local v0    # "result":Z
    :cond_1
    return-void
.end method
