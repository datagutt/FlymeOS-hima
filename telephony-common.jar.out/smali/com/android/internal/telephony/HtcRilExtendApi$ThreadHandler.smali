.class final Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
.super Landroid/os/Handler;
.source "HtcRilExtendApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcRilExtendApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcRilExtendApi;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/HtcRilExtendApi;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    .line 144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    return-void
.end method

.method private handleRequest(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 171
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;

    .line 176
    .local v3, "request":Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->values()[Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    aget-object v2, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v2, "method":Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
    const-string v5, "RilExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRequest: req="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v5, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    new-instance v8, Landroid/os/AsyncResult;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/Exception;

    const-string v12, "RIL command timeout"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9, v10, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 192
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v5, :cond_3

    .line 194
    :cond_0
    const-string v6, "RilExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRequest: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "phone is null"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v2    # "method":Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "RilExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRequest: unable to map method msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "method":Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
    :cond_1
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v5, :cond_2

    const-string v5, "mCM is null"

    goto :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 199
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/HtcRilExtendApi$1;->$SwitchMap$com$android$internal$telephony$HtcRilExtendApi$MethodEnum:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 244
    const-string v5, "RilExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRequest: method not implemented: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :pswitch_0
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetCdmaCellLocationInfo(Landroid/os/Message;)V

    goto :goto_1

    .line 206
    :pswitch_1
    iget-object v5, v3, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "radio_technology"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, "tech":I
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRfBandInfo(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 211
    .end local v4    # "tech":I
    :pswitch_2
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetErrRate(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 214
    :pswitch_3
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetHdrColorCode(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 218
    :pswitch_4
    iget-object v5, v3, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "cmd"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "cmd":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/internal/telephony/PhoneBase;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 223
    .end local v0    # "cmd":Ljava/lang/String;
    :pswitch_5
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioInterface(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 227
    :pswitch_6
    iget-object v5, v3, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "radio_technology"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 228
    .restart local v4    # "tech":I
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSysInfo(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 233
    .end local v4    # "tech":I
    :pswitch_7
    iget-object v5, v3, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "radio_technology"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 234
    .restart local v4    # "tech":I
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetTxRxInfo(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 238
    .end local v4    # "tech":I
    :pswitch_8
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetAnAaaStatus(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 241
    :pswitch_9
    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLTESupportedBandPriorityList(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private handleResponse(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 251
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "methodName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 254
    const-string v3, "RilExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResponse: cannot map to method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->this$0:Lcom/android/internal/telephony/HtcRilExtendApi;

    # getter for: Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcRilExtendApi;->access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->removeMessages(I)V

    .line 260
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 261
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;

    .line 262
    .local v2, "request":Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->result:Ljava/lang/Object;

    .line 263
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 264
    iget-object v3, v2, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/io/Serializable;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 268
    :goto_1
    const-string v3, "RilExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResponse: req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    monitor-enter v2

    .line 271
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 266
    :cond_1
    const-string v3, "RilExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResponse: req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;

    if-eqz v1, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->handleRequest(Landroid/os/Message;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->handleResponse(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RilExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
