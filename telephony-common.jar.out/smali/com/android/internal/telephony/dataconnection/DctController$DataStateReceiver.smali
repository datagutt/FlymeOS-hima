.class Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Lcom/android/internal/telephony/dataconnection/DctController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DctController$1;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    monitor-enter p0

    .line 253
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 254
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 256
    .local v2, "ss":Landroid/telephony/ServiceState;
    const-string v8, "subscription"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 257
    .local v6, "subId":J
    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 258
    .local v0, "phoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: phoneId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 261
    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_1

    .line 263
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: ignore invalid subId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 264
    monitor-exit p0

    .line 338
    .end local v0    # "phoneId":I
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v6    # "subId":J
    :goto_0
    return-void

    .line 266
    .restart local v0    # "phoneId":I
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    .restart local v6    # "subId":J
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: ignore invalid phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 268
    monitor-exit p0

    goto :goto_0

    .line 337
    .end local v0    # "phoneId":I
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v6    # "subId":J
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 271
    .restart local v0    # "phoneId":I
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    .restart local v6    # "subId":J
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    aget-boolean v1, v8, v0

    .line 272
    .local v1, "prevPowerOff":Z
    if-eqz v2, :cond_4

    .line 273
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 274
    .local v3, "state":I
    packed-switch v3, :pswitch_data_0

    .line 297
    const-string v8, "DataStateReceiver: SERVICE_STATE_CHANGED invalid state"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 301
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    aget-boolean v8, v8, v0

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$300(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->getDataConnectionFromSetting()I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$800(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    if-ne v0, v8, :cond_4

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: Current Phone is none and default phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", then enableApnType()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 306
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const-string v9, "default"

    invoke-virtual {v8, v6, v7, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->enableApnType(JLjava/lang/String;)I

    .line 337
    .end local v0    # "phoneId":I
    .end local v1    # "prevPowerOff":Z
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v3    # "state":I
    .end local v6    # "subId":J
    :cond_4
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 276
    .restart local v0    # "phoneId":I
    .restart local v1    # "prevPowerOff":Z
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    .restart local v3    # "state":I
    .restart local v6    # "subId":J
    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    const/4 v9, 0x1

    aput-boolean v9, v8, v0

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: STATE_POWER_OFF Intent from phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    const/4 v9, 0x0

    aput-boolean v9, v8, v0

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: STATE_IN_SERVICE Intent from phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: STATE_OUT_OF_SERVICE Intent from phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 288
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    aget-boolean v8, v8, v0

    if-eqz v8, :cond_3

    .line 289
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Z

    move-result-object v8

    const/4 v9, 0x0

    aput-boolean v9, v8, v0

    goto/16 :goto_1

    .line 293
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: STATE_EMERGENCY_ONLY Intent from phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 311
    .end local v0    # "phoneId":I
    .end local v1    # "prevPowerOff":Z
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    .end local v3    # "state":I
    .end local v6    # "subId":J
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 315
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v5

    .line 316
    .local v5, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-nez v5, :cond_6

    const/4 v4, 0x0

    .line 317
    .local v4, "subCount":I
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataStateReceiver: Received ACTION_SUBINFO_RECORD_UPDATED intent, subCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 318
    if-lez v4, :cond_4

    .line 319
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$900(Lcom/android/internal/telephony/dataconnection/DctController;)V

    goto/16 :goto_2

    .line 316
    .end local v4    # "subCount":I
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_3

    .line 323
    .end local v5    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 324
    const-string v8, "DataStateReceiver: Received ACTION_RADIO_TECHNOLOGY_CHANGED intent"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 325
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->onPhoneModeChanged()V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;)V

    goto/16 :goto_2

    .line 329
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.internal.telephony.data-retry-data-subscription"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 330
    const-string v8, "Retry data subscription alarm"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Ljava/lang/String;)V

    .line 331
    const-string v8, "subscription"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 332
    .restart local v0    # "phoneId":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_4

    .line 333
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->onActionIntentRetryDataSubscriptionAlarm(I)V
    invoke-static {v8, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1100(Lcom/android/internal/telephony/dataconnection/DctController;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
