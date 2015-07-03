.class Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamGuardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2774
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 2775
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2776
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2780
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2815
    :goto_0
    return-void

    .line 2782
    :pswitch_0
    const-string v6, "RoamingGuard"

    const-string v7, "MSG_SPRINT_ROAMING_GUARD  >>>"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v6, v6, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2787
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v6, v6, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 2789
    const-string v6, "RoamingGuard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPhone.htcGetCdmaEriCallGuard() value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->htcGetCdmaEriCallGuard()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v6, v6, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->htcGetCdmaEriCallGuard()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2792
    const-string v4, "RoamingGuard"

    const-string v5, " CDMA roaming !!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuardDialogAndWait(Ljava/lang/Object;II)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->access$900(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V

    .line 2811
    :cond_0
    :goto_1
    const-string v4, "RoamingGuard"

    const-string v5, "MSG_SPRINT_ROAMING_GUARD  <<<"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2795
    :cond_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 2796
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 2797
    .local v3, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_2

    move v0, v4

    .line 2798
    .local v0, "bFirstOfAll":Z
    :goto_2
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_3

    move v1, v4

    .line 2799
    .local v1, "bLastOfAll":Z
    :goto_3
    invoke-virtual {v3, v0, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 2800
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .end local v0    # "bFirstOfAll":Z
    .end local v1    # "bLastOfAll":Z
    :cond_2
    move v0, v5

    .line 2797
    goto :goto_2

    .restart local v0    # "bFirstOfAll":Z
    :cond_3
    move v1, v5

    .line 2798
    goto :goto_3

    .line 2806
    .end local v0    # "bFirstOfAll":Z
    .end local v3    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    const-string v4, "RoamingGuard"

    const-string v5, " GSM roaming !!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuardDialogAndWait(Ljava/lang/Object;II)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->access$900(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V

    goto :goto_1

    .line 2780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
