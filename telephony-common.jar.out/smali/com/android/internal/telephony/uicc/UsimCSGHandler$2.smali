.class Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;
.super Landroid/telephony/PhoneStateListener;
.source "UsimCSGHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UsimCSGHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 767
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataConnectionStateChanged(): state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  StopPDP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget-boolean v4, v4, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget-boolean v2, v2, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    if-eqz v2, :cond_2

    .line 770
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$700(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 771
    .local v0, "ds":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataConnectionStateChanged(): data status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v2, :cond_2

    .line 775
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$800(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 776
    .local v1, "telephonyService":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 777
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$900(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 779
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->removeMessages(I)V

    .line 780
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$102(Lcom/android/internal/telephony/uicc/UsimCSGHandler;Z)Z

    .line 781
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$600(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    .line 784
    .end local v0    # "ds":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v1    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void
.end method
