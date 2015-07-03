.class public Lcom/android/internal/telephony/cdma/HtcCdmaTty;
.super Landroid/os/Handler;
.source "HtcCdmaTty.java"


# static fields
.field private static final EVENT_BOOTUP_QUERY:I = 0x3

.field private static final EVENT_GET_FIRST_TTY:I = 0x2

.field private static final EVENT_RADIO_READY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaTty"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 46
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 52
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaTty finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_1

    .line 68
    :cond_0
    const-string v2, "HtcCdmaTty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " HtcCdmaTty drop event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 75
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    const/4 v2, 0x2

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 84
    const-string v2, "HtcCdmaTty"

    const-string v3, "Exception TTY query:"

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 89
    .local v1, "ttymode":I
    const-string v2, "HtcCdmaTty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstQueryTTYModeResponse:ttymode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
