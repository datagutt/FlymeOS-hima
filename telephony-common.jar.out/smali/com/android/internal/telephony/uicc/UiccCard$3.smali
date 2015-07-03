.class Lcom/android/internal/telephony/uicc/UiccCard$3;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1253
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1256
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v5, "EVENT_MDMRST_SIM_HOT_SWAP_STATUS"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1258
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1259
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    .line 1261
    .local v0, "SIMStatus":[I
    if-eqz v0, :cond_5

    array-length v4, v0

    if-lez v4, :cond_5

    .line 1262
    aget v4, v0, v6

    if-nez v4, :cond_2

    .line 1263
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v5, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    .line 1265
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iput-boolean v6, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    .line 1271
    const-string v4, "sys.shutdown.hibernate.mode"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1272
    .local v2, "hibernate":Z
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_MDMRST_SIM_HOT_SWAP_STATUS hibernate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1274
    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->noRebootWhenSimHotswap()Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v2, v7, :cond_3

    .line 1276
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1277
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1278
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->shutDownDevice()V
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 1282
    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1280
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v6, "Can not shutdown device due to mContext is null"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1288
    .end local v2    # "hibernate":Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iput-boolean v7, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    .line 1291
    const-string v3, "ICC_HOT_SWAP_INSERTED"

    .line 1292
    .local v3, "ret":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSIMHotSwapStatusRegistrants:Landroid/os/RegistrantList;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1400(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/os/RegistrantList;

    move-result-object v4

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v3, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1295
    .end local v3    # "ret":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1296
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v5, "clearCardSetup for Dual SIM device"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1297
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/HtcUiccPowerManager;->clearCardSetup(Z)V

    .line 1305
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportNoSimPowerOFF()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1306
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1307
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v5, "nosimpoweroff simHotSwapTrigger"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 1308
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget v5, v5, Lcom/android/internal/telephony/uicc/UiccCard;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->simHotSwapTrigger(I)V

    goto/16 :goto_0

    .line 1301
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$3;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v5, "invalid MdmRst sim hot swap data"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto :goto_2

    .line 1253
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method
