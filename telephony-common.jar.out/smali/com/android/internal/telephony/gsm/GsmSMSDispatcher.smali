.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# static fields
.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "GsmSMSDispatcher"

.field private static final VDBG:Z


# instance fields
.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mOrangeEccSms:Lcom/android/internal/telephony/gsm/OrangeEccSms;

.field private mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;
    .param p4, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 96
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mOrangeEccSms:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportOrangeEmergencySMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/internal/telephony/gsm/OrangeEccSms;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms;-><init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mOrangeEccSms:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "Register for Emergency Call Event!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v1, 0x17

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForEccCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    :cond_0
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "GsmSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method private isImsGsmMo(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 853
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportImsSms()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 875
    :cond_0
    :goto_0
    return v0

    .line 857
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v0

    .line 858
    .local v0, "isIms":Z
    const-string v2, "GsmSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSms(), IMS Status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwLteRetryMechanism()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ne v2, v5, :cond_2

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-eq v2, v5, :cond_0

    :cond_2
    move v0, v1

    .line 871
    goto :goto_0
.end method

.method private onUpdateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 921
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 927
    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 928
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_0

    .line 929
    if-eqz v0, :cond_3

    .line 930
    const-string v2, "GsmSMSDispatcher"

    const-string v3, "Removing stale icc objects."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 932
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 934
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 935
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 937
    :cond_3
    if-eqz v1, :cond_0

    .line 938
    const-string v2, "GsmSMSDispatcher"

    const-string v3, "New Uicc application found"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 940
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 941
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 942
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x15

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 945
    :cond_4
    const-string v2, "GsmSMSDispatcher"

    const-string v3, "mIccRecords is null!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 886
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 142
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportOrangeEmergencySMS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mOrangeEccSms:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "Unregister for Emergency Call Event!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForEccCall(Landroid/os/Handler;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mOrangeEccSms:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->dispose()V

    .line 153
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "GsmSMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "3gpp"

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 4

    .prologue
    .line 914
    const-string v0, "GsmSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmSMSDispatcher: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    const-string v0, "GsmSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 207
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 177
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 182
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 186
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onUpdateIccAvailability()V

    goto :goto_0

    .line 191
    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportOrangeEmergencySMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "send Emergency SMS..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mOrangeEccSms:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mOrangeEccSms:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->sendEccSms()V

    goto :goto_0

    .line 200
    :cond_1
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "Emergency call callback has problem"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 223
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isPendingMsgRepoEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->htcHandleGsmStatusReport(Landroid/os/AsyncResult;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 229
    .local v5, "pduString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 231
    .local v6, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_0

    .line 232
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 233
    .local v7, "tpStatus":I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 234
    .local v4, "messageRef":I
    const-string v9, "GsmSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleStatusReport: messageRef> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 236
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 237
    .local v8, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 239
    const/16 v9, 0x22

    if-eq v7, v9, :cond_2

    const/16 v9, 0x30

    if-eq v7, v9, :cond_2

    .line 240
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 244
    :cond_2
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 245
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 247
    const-string v9, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v9

    goto :goto_0

    .line 235
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected htcHandleGsmStatusReport(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 260
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 261
    .local v5, "pduString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v8

    .line 262
    .local v8, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v8, :cond_2

    .line 263
    iget v4, v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 264
    .local v4, "messageRef":I
    const/4 v6, -0x1

    .line 265
    .local v6, "pos":I
    const/4 v9, 0x0

    .line 267
    .local v9, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v10

    const/16 v11, 0x22

    if-eq v10, v11, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v10

    const/16 v11, 0x30

    if-eq v10, v11, :cond_3

    const/4 v7, 0x1

    .line 268
    .local v7, "remove":Z
    :goto_0
    const-string v10, "GsmSMSDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "htcHandleStatusReport: messageRef> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 270
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    check-cast v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 271
    .restart local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v10, v4, :cond_4

    .line 272
    move v6, v2

    .line 278
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v10, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 280
    const-string v10, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const/4 v10, -0x1

    if-le v6, v10, :cond_5

    .line 282
    iget-object v3, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 284
    .local v3, "intent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v3    # "intent":Landroid/app/PendingIntent;
    :goto_2
    if-eqz v7, :cond_2

    .line 291
    const/4 v10, -0x1

    if-le v6, v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 293
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMsgRefFromPendingList(Landroid/content/Context;I)I

    .line 296
    .end local v0    # "count":I
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v2    # "i":I
    .end local v4    # "messageRef":I
    .end local v6    # "pos":I
    .end local v7    # "remove":Z
    .end local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 297
    return-void

    .line 267
    .restart local v4    # "messageRef":I
    .restart local v6    # "pos":I
    .restart local v9    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 269
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v7    # "remove":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .restart local v1    # "fillIn":Landroid/content/Intent;
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10, v4, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->sendPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_2

    .line 285
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called only on ImsSMSDispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 26
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 304
    if-eqz p6, :cond_2

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 316
    .local v15, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p5, :cond_0

    .line 318
    invoke-virtual/range {p5 .. p5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v24

    .line 319
    .local v24, "intent":Landroid/content/Intent;
    if-eqz v24, :cond_0

    const-string v4, "originator_port"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    const-string v4, "originator_port"

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 321
    .local v9, "originPort":I
    const-string v4, "GsmSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GsmSMSDispatcher.sendData(): originator port is ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz p6, :cond_3

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduWithOriginPort(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 326
    .end local v9    # "originPort":I
    .end local v24    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz v15, :cond_4

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    .line 327
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v17

    .line 328
    .local v17, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 330
    .local v25, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 343
    .end local v17    # "map":Ljava/util/HashMap;
    .end local v25    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    :goto_2
    return-void

    .line 304
    .end local v15    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 322
    .restart local v9    # "originPort":I
    .restart local v15    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v24    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 332
    .end local v9    # "originPort":I
    .end local v24    # "intent":Landroid/content/Intent;
    :cond_4
    if-eqz p5, :cond_1

    .line 334
    const/4 v4, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V

    .line 335
    const-string v4, "GsmSMSDispatcher"

    const-string v5, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 338
    :catch_0
    move-exception v23

    .line 339
    .local v23, "ex":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual/range {v23 .. v23}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_2
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 31
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v22, 0x0

    .line 468
    .local v22, "bFirstSms":Z
    const/16 v23, 0x0

    .line 469
    .local v23, "bLastSms":Z
    if-eqz p7, :cond_0

    .line 470
    const-string v2, "FIRST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 471
    const-string v2, "LAST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 474
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v28, v0

    .line 475
    .local v28, "refNumber":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v25, v0

    .line 477
    .local v25, "concatedDate":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 479
    .local v27, "msgCount":I
    new-instance v17, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 480
    .local v17, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v18, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 481
    .local v18, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 482
    new-instance v24, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 483
    .local v24, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v28

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 484
    add-int/lit8 v2, v26, 0x1

    move-object/from16 v0, v24

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 485
    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 486
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 487
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 488
    .local v5, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 491
    invoke-static {v5}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v29

    .line 494
    .local v29, "smsHeaderData":[B
    const/4 v14, 0x0

    .line 495
    .local v14, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v26

    if-le v2, v0, :cond_1

    .line 496
    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 499
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    const/4 v15, 0x0

    .line 500
    .local v15, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v26

    if-le v2, v0, :cond_2

    .line 501
    move-object/from16 v0, p6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 504
    .restart local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_2
    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v15, :cond_3

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 507
    .local v11, "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .line 508
    .local v13, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v12, p0

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v30

    .line 512
    .local v30, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz p7, :cond_a

    .line 513
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_7

    .line 514
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_4

    .line 515
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 539
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 481
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 504
    .end local v11    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v30    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 516
    .restart local v11    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v13    # "map":Ljava/util/HashMap;
    .restart local v30    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    if-nez v26, :cond_5

    .line 517
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 518
    :cond_5
    add-int/lit8 v2, v27, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_6

    .line 519
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 521
    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 522
    :cond_7
    if-nez v26, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    .line 523
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 524
    :cond_8
    add-int/lit8 v2, v27, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_9

    .line 525
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 527
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 529
    :cond_a
    if-nez v26, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_b

    .line 530
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 531
    :cond_b
    if-nez v26, :cond_c

    .line 532
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 533
    :cond_c
    add-int/lit8 v2, v27, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_d

    .line 534
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 536
    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto/16 :goto_2

    .line 541
    .end local v5    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v11    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v24    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v29    # "smsHeaderData":[B
    .end local v30    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_e
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 458
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 38
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 555
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v31, 0x0

    .line 556
    .local v31, "intent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 557
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "intent":Landroid/app/PendingIntent;
    check-cast v31, Landroid/app/PendingIntent;

    .line 559
    .restart local v31    # "intent":Landroid/app/PendingIntent;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    .line 561
    .local v11, "packageName":Ljava/lang/String;
    if-nez p6, :cond_7

    .line 562
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v11, v0, v4, v5}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSubId()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 575
    :cond_1
    :goto_1
    const/4 v9, -0x1

    .line 576
    .local v9, "nli":I
    const/16 v22, 0x0

    .line 577
    .local v22, "bFirstSms":Z
    const/16 v23, 0x0

    .line 578
    .local v23, "bLastSms":Z
    if-eqz p8, :cond_2

    .line 579
    const-string v4, "NLI"

    const/4 v5, -0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 580
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 581
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 586
    :cond_2
    const/4 v10, 0x1

    .line 588
    .local v10, "is7bitOnly":Z
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_2
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_3

    .line 589
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v36

    .line 590
    .local v36, "septetCount":I
    const/16 v4, 0xff

    move/from16 v0, v36

    if-le v0, v4, :cond_8

    .line 591
    new-instance v4, Lcom/android/internal/telephony/EncodeException;

    const-string v5, "error"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v36    # "septetCount":I
    :catch_0
    move-exception v28

    .line 596
    .local v28, "e":Lcom/android/internal/telephony/EncodeException;
    const/4 v10, 0x0

    .line 600
    .end local v28    # "e":Lcom/android/internal/telephony/EncodeException;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v35, v0

    .line 601
    .local v35, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 602
    .local v33, "msgCount":I
    const/16 v29, 0x0

    .line 603
    .local v29, "encoding":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v25, v0

    .line 605
    .local v25, "concatedDate":I
    const/16 v30, 0x0

    :goto_3
    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 606
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v27

    .line 607
    .local v27, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v29

    if-eq v0, v4, :cond_5

    if-eqz v29, :cond_4

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_5

    .line 610
    :cond_4
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v29, v0

    .line 605
    :cond_5
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 563
    .end local v9    # "nli":I
    .end local v10    # "is7bitOnly":Z
    .end local v22    # "bFirstSms":Z
    .end local v23    # "bLastSms":Z
    .end local v25    # "concatedDate":I
    .end local v27    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v29    # "encoding":I
    .end local v30    # "i":I
    .end local v33    # "msgCount":I
    .end local v35    # "refNumber":I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 571
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSubId()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v5, v1, v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->moveToOutbox(JLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 588
    .restart local v9    # "nli":I
    .restart local v10    # "is7bitOnly":Z
    .restart local v22    # "bFirstSms":Z
    .restart local v23    # "bLastSms":Z
    .restart local v30    # "i":I
    .restart local v36    # "septetCount":I
    :cond_8
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 615
    .end local v36    # "septetCount":I
    .restart local v25    # "concatedDate":I
    .restart local v29    # "encoding":I
    .restart local v33    # "msgCount":I
    .restart local v35    # "refNumber":I
    :cond_9
    new-instance v17, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 616
    .local v17, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v18, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 618
    .local v18, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v30, 0x0

    :goto_4
    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    .line 619
    new-instance v24, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 620
    .local v24, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v35

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 621
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 622
    move/from16 v0, v33

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 629
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 630
    new-instance v20, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 631
    .local v20, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 634
    const/4 v4, -0x1

    if-eq v9, v4, :cond_b

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_b

    .line 635
    const/4 v4, 0x1

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 636
    .local v26, "data":[B
    const/4 v4, 0x0

    int-to-byte v5, v9

    aput-byte v5, v26, v4

    .line 637
    new-instance v32, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v32 .. v32}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 639
    .local v32, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v4, 0xe

    if-eq v9, v4, :cond_a

    .line 640
    const/16 v4, 0x24

    move-object/from16 v0, v32

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 641
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 642
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_a
    const/4 v4, 0x3

    if-ne v9, v4, :cond_b

    .line 646
    new-instance v32, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .end local v32    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    invoke-direct/range {v32 .. v32}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 647
    .restart local v32    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v4, 0x25

    move-object/from16 v0, v32

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 648
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 649
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .end local v26    # "data":[B
    .end local v32    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_b
    const/4 v14, 0x0

    .line 655
    .local v14, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-le v4, v0, :cond_c

    .line 656
    move-object/from16 v0, p4

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 659
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_c
    const/4 v15, 0x0

    .line 660
    .local v15, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_d

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-le v4, v0, :cond_d

    .line 661
    move-object/from16 v0, p5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 665
    .restart local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_d
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v15, :cond_e

    const/4 v7, 0x1

    :goto_5
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v34

    .line 669
    .local v34, "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .line 670
    .local v13, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v16

    const/16 v21, 0x0

    move-object/from16 v12, p0

    move-object/from16 v19, p6

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v37

    .line 676
    .local v37, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz p8, :cond_15

    .line 677
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_12

    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_12

    .line 678
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_f

    .line 679
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 704
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 618
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_4

    .line 665
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v34    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v37    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_e
    const/4 v7, 0x0

    goto :goto_5

    .line 680
    .restart local v13    # "map":Ljava/util/HashMap;
    .restart local v34    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v37    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_f
    if-nez v30, :cond_10

    .line 681
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 682
    :cond_10
    add-int/lit8 v4, v33, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_11

    .line 683
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 685
    :cond_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 686
    :cond_12
    if-nez v30, :cond_13

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_13

    .line 687
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 688
    :cond_13
    add-int/lit8 v4, v33, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_14

    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_14

    .line 689
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 691
    :cond_14
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 693
    :cond_15
    if-nez v30, :cond_16

    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_16

    .line 694
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 695
    :cond_16
    if-nez v30, :cond_17

    .line 696
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 697
    :cond_17
    add-int/lit8 v4, v33, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_18

    .line 698
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_6

    .line 700
    :cond_18
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto/16 :goto_6

    .line 706
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v20    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v24    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v34    # "pdus":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v37    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_19
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .locals 13
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 898
    if-eqz p7, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move/from16 v6, p5

    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 901
    .local v11, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v11, :cond_2

    .line 902
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 904
    .local v2, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-nez p8, :cond_1

    const/4 v10, 0x1

    :goto_1
    move-object v1, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v12

    .line 907
    .local v12, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 911
    .end local v2    # "map":Ljava/util/HashMap;
    .end local v12    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_2
    return-void

    .line 898
    .end local v11    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 904
    .restart local v2    # "map":Ljava/util/HashMap;
    .restart local v11    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 909
    .end local v2    # "map":Ljava/util/HashMap;
    :cond_2
    const-string v1, "GsmSMSDispatcher"

    const-string v3, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected sendNewSubmitPduForDataSms(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 961
    if-eqz p7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForLongDataSms(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 963
    .local v7, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v7, :cond_2

    .line 964
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v9

    .line 965
    .local v9, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    if-nez p8, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v8, p0

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v16, p5

    invoke-virtual/range {v8 .. v17}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v18

    .line 967
    .local v18, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 971
    .end local v9    # "map":Ljava/util/HashMap;
    .end local v18    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_2
    return-void

    .line 961
    .end local v7    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 965
    .restart local v7    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v9    # "map":Ljava/util/HashMap;
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 969
    .end local v9    # "map":Ljava/util/HashMap;
    :cond_2
    const-string v2, "GsmSMSDispatcher"

    const-string v3, "GsmSMSDispatcher.sendNewSubmitPduForDataSms(): getSubmitPdu() returned null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 978
    invoke-static {p1}, Lcom/htc/internal/telephony/HtcSmsUtils;->setLinkControl(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 979
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 980
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 710
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 712
    .local v11, "map":Ljava/util/HashMap;
    const-string v0, "pdu"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v12, v0

    check-cast v12, [B

    .line 715
    .local v12, "pdu":[B
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ne v0, v3, :cond_0

    .line 716
    if-eqz v12, :cond_0

    array-length v0, v12

    if-lez v0, :cond_0

    .line 718
    aget-byte v0, v12, v6

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v12, v6

    .line 722
    :cond_0
    if-eqz v12, :cond_1

    array-length v0, v12

    if-lez v0, :cond_1

    .line 724
    aget-byte v0, v12, v3

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v12, v3

    .line 750
    :cond_1
    const-string v0, "GsmSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms:  isIms()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImsRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMessageRef="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 760
    .local v4, "resultReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCarrierAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 762
    .local v9, "carrierPackage":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 763
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    const-string v0, "pdu"

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 765
    const-string v2, "smsc"

    const-string v0, "smsc"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 766
    const-string v0, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v10, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 769
    .local v10, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const-string v0, "concat.refNumber"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 770
    const-string v0, "concat.seqNumber"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    const-string v0, "concat.msgCount"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    .end local v10    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_2
    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 774
    const-string v0, "GsmSMSDispatcher"

    const-string v2, "Sending SMS by carrier app."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v1, 0x1

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    .line 788
    .local v12, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v12, :cond_1

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mNotInServiceFailTimestamp:J

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNotInServiceError(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/internal/telephony/HtcMoSmsController;->checkInForSendOrWait(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v8

    .line 799
    .local v8, "allowSending":Z
    if-eqz v8, :cond_0

    .line 803
    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 805
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "smsc"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v11, v0

    check-cast v11, [B

    .line 806
    .local v11, "smsc":[B
    const-string v0, "pdu"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v10, v0

    check-cast v10, [B

    .line 807
    .local v10, "pdu":[B
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 813
    .local v5, "reply":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isImsGsmMo(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportRetryForImsSms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    iput-boolean v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDontRetry:Z

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 823
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_0

    .line 834
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    iget-boolean v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 350
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 351
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 30
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;
    .param p9, "isInvisibleMoSms"    # Z

    .prologue
    .line 362
    const/4 v11, -0x1

    .line 363
    .local v11, "nli":I
    if-eqz p8, :cond_0

    .line 364
    const-string v6, "NLI"

    const/4 v7, -0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 367
    :cond_0
    const/4 v10, 0x0

    .line 368
    .local v10, "header":[B
    const/4 v6, -0x1

    if-eq v11, v6, :cond_3

    .line 370
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v6, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v23

    .line 371
    .local v23, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 375
    const/4 v6, 0x1

    new-array v0, v6, [B

    move-object/from16 v22, v0

    .line 376
    .local v22, "data":[B
    const/4 v6, 0x0

    int-to-byte v7, v11

    aput-byte v7, v22, v6

    .line 377
    new-instance v28, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v28 .. v28}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 379
    .local v28, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    new-instance v25, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 381
    .local v25, "eltSingle":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v6, 0xe

    if-eq v11, v6, :cond_1

    .line 382
    const/16 v6, 0x24

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 383
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 384
    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_1
    const/4 v6, 0x3

    if-ne v11, v6, :cond_2

    .line 388
    new-instance v24, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 389
    .local v24, "eltLocking":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v6, 0x25

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 390
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 391
    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v24    # "eltLocking":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_2
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v10

    .line 398
    .end local v22    # "data":[B
    .end local v23    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v25    # "eltSingle":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v28    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    if-eqz p5, :cond_7

    const/4 v9, 0x1

    :goto_0
    const/4 v12, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-static/range {v6 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v27

    .line 401
    .local v27, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v27, :cond_a

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v19

    .line 409
    .local v19, "packageName":Ljava/lang/String;
    if-nez p6, :cond_9

    .line 410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p9

    invoke-static {v0, v1, v2, v6}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSubId()J

    move-result-wide v14

    if-eqz p5, :cond_8

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v13, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p3

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 421
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .line 422
    .local v13, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v17, p6

    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v29

    .line 426
    .local v29, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz p8, :cond_5

    .line 427
    const-string v6, "FIRST_SMS"

    const/4 v7, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 428
    .local v20, "bFirstOfAll":Z
    const-string v6, "LAST_SMS"

    const/4 v7, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 429
    .local v21, "bLastOfAll":Z
    move-object/from16 v0, v29

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 433
    .end local v20    # "bFirstOfAll":Z
    .end local v21    # "bLastOfAll":Z
    :cond_5
    move-object/from16 v0, v29

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setIsInvisibleMoSms(Z)V

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 447
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v29    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    :goto_3
    return-void

    .line 398
    .end local v27    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 411
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v27    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_8
    const/16 v18, 0x0

    goto :goto_1

    .line 419
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSubId()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v19

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->moveToOutbox(JLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    .line 436
    .end local v19    # "packageName":Ljava/lang/String;
    :cond_a
    if-eqz p4, :cond_6

    .line 438
    const/4 v6, 0x3

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/app/PendingIntent;->send(I)V

    .line 439
    const-string v6, "GsmSMSDispatcher"

    const-string v7, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 442
    :catch_0
    move-exception v26

    .line 443
    .local v26, "ex":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_3
.end method

.method protected updateSmsSendStatus(IZ)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 844
    const-string v0, "GsmSMSDispatcher"

    const-string v1, "updateSmsSendStatus should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method
