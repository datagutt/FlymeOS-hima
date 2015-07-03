.class Lcom/android/internal/telephony/cdma/CDMAPhone$3;
.super Landroid/os/Handler;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0

    .prologue
    .line 5074
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$3;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x22

    const/16 v9, 0x1e

    const/4 v8, 0x1

    .line 5079
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 5120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 5123
    :cond_0
    :goto_0
    return-void

    .line 5081
    :pswitch_0
    # setter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mGetBannerDone:Z
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$102(Z)Z

    .line 5083
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 5085
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    .line 5086
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 5088
    .local v3, "response":Ljava/lang/String;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_1

    .line 5089
    const-string v5, "CDMAPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_GET_CDMA_NV_PROGRAMMED_BANNER, response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    :cond_1
    if-eqz v3, :cond_5

    .line 5092
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 5093
    .local v2, "length":I
    if-lt v2, v10, :cond_4

    .line 5094
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5095
    .local v4, "statusCode":Ljava/lang/String;
    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5096
    const/4 v5, 0x6

    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->StringToASCII(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 5097
    .local v1, "banner":Ljava/lang/String;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_2

    .line 5098
    const-string v5, "CDMAPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_GET_CDMA_NV_PROGRAMMED_BANNER, banner: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 5101
    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mBanner:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5102
    # setter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mBanner:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 5103
    const-string v5, "persist.radio.lra_banner"

    # getter for: Lcom/android/internal/telephony/cdma/CDMAPhone;->mBanner:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5107
    .end local v1    # "banner":Ljava/lang/String;
    :cond_3
    const-string v5, "CDMAPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_GET_CDMA_NV_PROGRAMMED_BANNER status code error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5110
    .end local v4    # "statusCode":Ljava/lang/String;
    :cond_4
    const-string v5, "CDMAPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_GET_CDMA_NV_PROGRAMMED_BANNER response length too short:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5113
    .end local v2    # "length":I
    :cond_5
    const-string v5, "CDMAPhone"

    const-string v6, "EVENT_GET_CDMA_NV_PROGRAMMED_BANNER response is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5116
    .end local v3    # "response":Ljava/lang/String;
    :cond_6
    const-string v5, "CDMAPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_GET_CDMA_NV_PROGRAMMED_BANNER ar.exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5079
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
