.class Lcom/android/internal/telephony/CallManager$CallManagerHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    .line 3858
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/CallManager$1;

    .prologue
    .line 3858
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 3863
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 4050
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->handleHtcMessage(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/android/internal/telephony/CallManager;->access$800(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)V

    .line 4054
    :cond_0
    :goto_0
    return-void

    .line 3865
    :sswitch_0
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_DISCONNECT)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    :cond_1
    # getter for: Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$200()Z

    move-result v9

    if-nez v9, :cond_2

    # getter for: Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$300()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3870
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V
    invoke-static {v9, v13, v11}, Lcom/android/internal/telephony/CallManager;->access$400(Lcom/android/internal/telephony/CallManager;ZZ)V

    .line 3873
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3876
    :sswitch_1
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    :cond_4
    # getter for: Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$200()Z

    move-result v9

    if-nez v9, :cond_5

    # getter for: Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$300()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3882
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V
    invoke-static {v9, v11, v11}, Lcom/android/internal/telephony/CallManager;->access$400(Lcom/android/internal/telephony/CallManager;ZZ)V

    .line 3884
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackMTdetection()V
    invoke-static {v9}, Lcom/android/internal/telephony/CallManager;->access$500(Lcom/android/internal/telephony/CallManager;)V

    .line 3886
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3889
    :sswitch_2
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_NEW_RINGING_CONNECTION)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    iget-object v9, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v10, v9}, Lcom/android/internal/telephony/CallManager;->htcBlockRingingMT(Lcom/android/internal/telephony/Connection;)Z

    .line 3895
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3896
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v6

    .line 3899
    .local v6, "subId":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 3900
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->isDSDADevice()Z
    invoke-static {v9}, Lcom/android/internal/telephony/CallManager;->access$600(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3901
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3905
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9, v6, v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(J)Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v9}, Lcom/android/internal/telephony/CallManager;->access$700(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3907
    :cond_9
    :try_start_0
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "silently drop incoming call: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v9}, Lcom/android/internal/telephony/CallManager;->access$700(Lcom/android/internal/telephony/CallManager;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 3911
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/Connection;->setCollided(Z)V

    .line 3914
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3915
    :catch_0
    move-exception v2

    .line 3916
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v9, "CallManager"

    const-string v10, "new ringing connection"

    invoke-static {v9, v10, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3919
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3923
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v6    # "subId":J
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :sswitch_3
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    :cond_c
    # getter for: Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$200()Z

    move-result v9

    if-nez v9, :cond_d

    # getter for: Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$300()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 3927
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V
    invoke-static {v9, v11, v13}, Lcom/android/internal/telephony/CallManager;->access$400(Lcom/android/internal/telephony/CallManager;ZZ)V

    .line 3930
    :cond_e
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3933
    :sswitch_4
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    :cond_f
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-nez v9, :cond_10

    .line 3936
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3942
    :cond_10
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3947
    :sswitch_5
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    :cond_11
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3951
    :sswitch_6
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    :cond_12
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3955
    :sswitch_7
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    :cond_13
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3959
    :sswitch_8
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    :cond_14
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3963
    :sswitch_9
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    :cond_15
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3967
    :sswitch_a
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    :cond_16
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3971
    :sswitch_b
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_17

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    :cond_17
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3975
    :sswitch_c
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_18

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    :cond_18
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3979
    :sswitch_d
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_19

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    :cond_19
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3983
    :sswitch_e
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1a

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    :cond_1a
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3987
    :sswitch_f
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    :cond_1b
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3991
    :sswitch_10
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1c

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    :cond_1c
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3995
    :sswitch_11
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    :cond_1d
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3999
    :sswitch_12
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1e

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    :cond_1e
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4004
    :sswitch_13
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1f

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_CALL_MODIFY)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    :cond_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4006
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_20

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_20

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_20

    .line 4007
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    new-instance v11, Landroid/os/AsyncResult;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/Connection;

    invoke-direct {v11, v12, v9, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v10, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4010
    :cond_20
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4017
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_14
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_21

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    :cond_21
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v9, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 4020
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v9, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9, v3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Registrant;

    invoke-virtual {v9}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v4

    .line 4021
    .local v4, "notifyMsg":Landroid/os/Message;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4022
    iget v9, p1, Landroid/os/Message;->arg1:I

    iput v9, v4, Landroid/os/Message;->arg1:I

    .line 4023
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4018
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4027
    .end local v3    # "i":I
    .end local v4    # "notifyMsg":Landroid/os/Message;
    :sswitch_15
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_22

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_ONHOLD_TONE)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    :cond_22
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4032
    :sswitch_16
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_23

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_CALL_MODIFY_RESPONSE)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    :cond_23
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 4034
    .local v5, "res":Landroid/os/AsyncResult;
    if-eqz v5, :cond_24

    iget-object v9, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_24

    iget-object v9, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_24

    .line 4035
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v9, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    new-instance v10, Landroid/os/AsyncResult;

    iget-object v11, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {v10, v12, v11, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v10}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4038
    :cond_24
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_MODIFY_CALL_RESPONSE AsyncResult res= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4044
    .end local v5    # "res":Landroid/os/AsyncResult;
    :sswitch_17
    # getter for: Lcom/android/internal/telephony/CallManager;->VDBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$100()Z

    move-result v9

    if-eqz v9, :cond_25

    const-string v9, "CallManager"

    const-string v10, " handleMessage (EVENT_LINECTRL_INFO)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    :cond_25
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v9, Lcom/android/internal/telephony/CallManager;->mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {v10, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3863
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_14
        0x78 -> :sswitch_15
        0x79 -> :sswitch_13
        0x7a -> :sswitch_16
        0xc8 -> :sswitch_17
    .end sparse-switch
.end method
