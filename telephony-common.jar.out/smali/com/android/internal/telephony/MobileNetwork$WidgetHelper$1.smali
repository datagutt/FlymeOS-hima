.class Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;
.super Landroid/os/Handler;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)V
    .locals 0

    .prologue
    .line 2456
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2459
    const/4 v12, 0x0

    .line 2460
    .local v12, "exception":Ljava/lang/Throwable;
    const/4 v15, 0x0

    .line 2461
    .local v15, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 2462
    .local v14, "params":[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2536
    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    .line 2537
    const-string v1, "LibMobileNetwork"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2539
    :cond_1
    return-void

    .line 2464
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, [Ljava/lang/Object;

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    new-instance v3, Landroid/os/HandlerThread;

    const/4 v1, 0x0

    aget-object v1, v14, v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0xa

    invoke-direct {v3, v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1302(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 2466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2468
    const/4 v4, 0x0

    .line 2470
    .local v4, "cbObject":Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->getCallbackClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2477
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    move-object/from16 v17, v0

    const/4 v1, 0x1

    aget-object v1, v14, v1

    check-cast v1, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1700()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)Landroid/os/Handler;
    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/MobileNetwork;->access$1800(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, v17

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1602(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 2471
    :catch_0
    move-exception v10

    .line 2472
    .local v10, "exCallbackClass":Ljava/lang/Throwable;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2473
    .local v16, "sbErr":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2474
    const/4 v1, 0x0

    const-string v2, " Given class incompatible"

    move-object/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->logAddVersion(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/MobileNetwork;->access$1500(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2475
    const-string v1, "LibMobileNetwork"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2483
    .end local v4    # "cbObject":Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
    .end local v10    # "exCallbackClass":Ljava/lang/Throwable;
    .end local v16    # "sbErr":Ljava/lang/StringBuilder;
    :pswitch_1
    const/4 v1, 0x4

    new-array v14, v1, [Ljava/lang/Object;

    .line 2484
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v2, v14, v1

    .line 2485
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1900(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v2

    aput-object v2, v14, v1

    .line 2486
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v1

    .line 2487
    const/4 v13, 0x0

    .line 2488
    .local v13, "intentLogTag":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 2489
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    const-string v2, "logTag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2491
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2492
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    if-eqz v13, :cond_3

    .line 2494
    const/16 v1, 0x2e

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2495
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    :cond_3
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    .line 2498
    const/4 v15, 0x0

    .line 2499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1600(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1600(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v5, v6, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2502
    .end local v13    # "intentLogTag":Ljava/lang/String;
    :pswitch_2
    const/4 v9, 0x0

    .line 2504
    .local v9, "endTagPostfix":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2505
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    const/16 v1, 0x2e

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2507
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2508
    const/4 v15, 0x0

    .line 2510
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v9, v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2000(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2511
    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2512
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2513
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v15, v9}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2514
    const-string v1, "stopping service "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2200(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2517
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2200(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # operator-- for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2210(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    .line 2519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # getter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2200(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 2520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$2302(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Z)Z

    .line 2521
    if-eqz v15, :cond_5

    .line 2522
    const-string v1, " done"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2526
    :catch_1
    move-exception v11

    .line 2527
    .local v11, "exStopSelf":Ljava/lang/Throwable;
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2528
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v15, v9}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2529
    const-string v1, "stop service"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    move-object v12, v11

    goto/16 :goto_0

    .line 2462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
