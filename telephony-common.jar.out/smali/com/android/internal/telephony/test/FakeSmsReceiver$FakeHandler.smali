.class final Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;
.super Landroid/os/Handler;
.source "FakeSmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/FakeSmsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FakeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 695
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 697
    return-void
.end method


# virtual methods
.method public getCdmaInboundSmsHandler(I)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 700
    if-nez p1, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaInboundSmsHandler1:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 703
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaInboundSmsHandler2:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    goto :goto_0
.end method

.method public getGsmInboundSmsHandler(I)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler1:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 711
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler2:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 717
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 718
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "pdu"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 719
    .local v9, "str":Ljava/lang/String;
    const-string v10, "slot"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 720
    .local v7, "phoneId":I
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/String;

    .line 721
    .local v6, "pdu":[Ljava/lang/String;
    const/4 v10, 0x1

    aput-object v9, v6, v10

    .line 723
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 787
    :goto_0
    return-void

    .line 725
    :pswitch_0
    # getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 726
    const-string v10, "FakeSmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FAKE_CDMA_SMS_MESSAGE > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    # invokes: Lcom/android/internal/telephony/test/FakeSmsReceiver;->parseCdmaSMS(Ljava/lang/String;)V
    invoke-static {v10, v9}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$100(Lcom/android/internal/telephony/test/FakeSmsReceiver;Ljava/lang/String;)V

    .line 730
    iget-object v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    # getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;
    invoke-static {v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$200(Lcom/android/internal/telephony/test/FakeSmsReceiver;)Landroid/os/Parcel;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 732
    .local v8, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->getCdmaInboundSmsHandler(I)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object v3

    .line 733
    .local v3, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    if-eqz v3, :cond_1

    .line 734
    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchFakeMessage(Landroid/telephony/SmsMessage;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    .end local v3    # "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    :catch_0
    move-exception v2

    .line 739
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v10, "FakeSmsReceiver"

    const-string v11, "Exception dispatching message"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 736
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    :cond_1
    :try_start_1
    const-string v10, "FakeSmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CdmaInboundSmsHandler is null, phoneId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 745
    .end local v3    # "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .end local v8    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_1
    # getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 746
    const-string v10, "FakeSmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FAKE_GSM_SMS_MESSAGE > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_2
    invoke-static {v6}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 751
    .restart local v8    # "sms":Landroid/telephony/SmsMessage;
    :try_start_2
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->getGsmInboundSmsHandler(I)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v3

    .line 752
    .local v3, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    if-eqz v3, :cond_3

    .line 753
    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchFakeMessage(Landroid/telephony/SmsMessage;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 757
    .end local v3    # "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    :catch_1
    move-exception v2

    .line 758
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string v10, "FakeSmsReceiver"

    const-string v11, "Exception dispatching message"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 755
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    :cond_3
    :try_start_3
    const-string v10, "FakeSmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GsmInboundSmsHandler is null, phoneId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 763
    .end local v3    # "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .end local v8    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_2
    # getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 764
    const-string v10, "FakeSmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FAKE_GSM_CB_MESSAGE > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_4
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/CBMessage;->newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/CBMessage;

    move-result-object v0

    .line 769
    .local v0, "cbm":Lcom/android/internal/telephony/gsm/CBMessage;
    :try_start_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->getGsmInboundSmsHandler(I)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v3

    .line 770
    .restart local v3    # "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    if-eqz v3, :cond_5

    .line 771
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getCellBroadcastHandler()Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v1

    .line 773
    .local v1, "cellBroadcastHandler":Lcom/android/internal/telephony/CellBroadcastHandler;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CellBroadcastHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 774
    .local v5, "message":Landroid/os/Message;
    const/4 v10, 0x5

    iput v10, v5, Landroid/os/Message;->what:I

    .line 775
    new-instance v10, Landroid/os/AsyncResult;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v0, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v10, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 780
    .end local v1    # "cellBroadcastHandler":Lcom/android/internal/telephony/CellBroadcastHandler;
    .end local v3    # "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .end local v5    # "message":Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 781
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string v10, "FakeSmsReceiver"

    const-string v11, "Exception dispatching cb message"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 778
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    :cond_5
    :try_start_5
    const-string v10, "FakeSmsReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GsmInboundSmsHandler is null, phoneId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 723
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
