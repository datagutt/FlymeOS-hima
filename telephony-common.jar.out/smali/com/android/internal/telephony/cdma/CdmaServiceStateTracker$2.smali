.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "action":Ljava/lang/String;
    const-string v3, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    const-string v3, "CdmaSST"

    const-string v4, "Received APP_REQUEST_REFRESH_PHONE_INFO intent,Reload MDN "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 263
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 264
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v4, "Receive EVENT_OTA_PROVISION_STATUS_CHANGE and Send Request EVENT_RIL_CDMA_RS_INFO."

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMCC()V
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .line 268
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMNC()V
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .line 272
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->setNumberToDefault(I)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v5, 0x35

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 282
    :cond_2
    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const-string v3, "ICC_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 284
    .local v2, "uiccType":I
    const-string v3, "POVISIONED"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 285
    .local v1, "provision":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prov="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 286
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 287
    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$602(Z)Z

    goto :goto_0

    .line 290
    :cond_3
    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$602(Z)Z

    goto :goto_0
.end method
