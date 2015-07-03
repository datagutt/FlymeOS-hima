.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 243
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v10, v10, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v10, :cond_2

    .line 244
    :cond_0
    const-string v8, "IccSmsInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This phone not current actived one, IccSmsInterfaceManager drop event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 277
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v9, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 278
    :try_start_0
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_6

    .line 279
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    .line 289
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 290
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 252
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 253
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 254
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_4

    move v9, v8

    :cond_4
    iput-boolean v9, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 257
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v9, v9, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v9, v8, :cond_5

    .line 260
    :try_start_2
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    .local v7, "values":[I
    if-eqz v7, :cond_5

    :try_start_3
    array-length v8, v7

    if-lez v8, :cond_5

    .line 267
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v9, 0x0

    aget v9, v7, v9

    iput v9, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mReturnedIndex:I

    .line 272
    .end local v7    # "values":[I
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 273
    monitor-exit v10

    goto :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 261
    :catch_0
    move-exception v3

    .line 262
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 263
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 283
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_5
    const-string v8, "SMS"

    const/4 v10, 0x3

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 284
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot load Sms records"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 286
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 287
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 294
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 295
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 296
    :try_start_6
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_8

    :goto_2
    iput-boolean v8, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 297
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 298
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v8

    :cond_8
    move v8, v9

    .line 296
    goto :goto_2

    .line 302
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 303
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v9, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 304
    :try_start_7
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_a

    .line 305
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    iput-object v8, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSingleSms:[B

    .line 311
    :cond_9
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 312
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8

    .line 307
    :cond_a
    :try_start_8
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot load singleSms records"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 308
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSingleSms:[B

    if-eqz v8, :cond_9

    .line 309
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSingleSms:[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 318
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 319
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v9, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v9

    .line 320
    :try_start_9
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_b

    .line 321
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iput-object v8, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    .line 327
    :goto_4
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v8

    .line 324
    :cond_b
    :try_start_a
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot load Sms Center"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 325
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsc:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    .line 331
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 332
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v9, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v9

    .line 333
    :try_start_b
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_c

    .line 339
    :goto_5
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 340
    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v8

    .line 337
    :cond_c
    :try_start_c
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot update Sms Center"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_5

    .line 345
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 346
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 347
    :try_start_d
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_d

    .line 348
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierID:Ljava/lang/String;
    invoke-static {v10, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    :goto_6
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit v9

    goto/16 :goto_0

    :catchall_6
    move-exception v8

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v8

    .line 350
    :cond_d
    :try_start_e
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierID:Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot get carrier id"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_6

    .line 360
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 361
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 362
    :try_start_f
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_e

    .line 363
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSevIpJapan:Ljava/lang/String;
    invoke-static {v10, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$302(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    :goto_7
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 369
    monitor-exit v9

    goto/16 :goto_0

    :catchall_7
    move-exception v8

    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v8

    .line 365
    :cond_e
    :try_start_10
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSevIpJapan:Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$302(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot get kddi server ip"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_7

    .line 374
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 375
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 376
    :try_start_11
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_f

    .line 377
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDmComResult:Ljava/lang/String;
    invoke-static {v10, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    :goto_8
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 383
    monitor-exit v9

    goto/16 :goto_0

    :catchall_8
    move-exception v8

    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v8

    .line 379
    :cond_f
    :try_start_12
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDmComResult:Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "get dm command result fail"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_8

    .line 389
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 390
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v9, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 391
    :try_start_13
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_11

    .line 392
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v6, v0

    .line 394
    .local v6, "result":[I
    if-eqz v6, :cond_10

    array-length v8, v6

    if-lez v8, :cond_10

    .line 397
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    aget v10, v6, v10

    iput v10, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLinearFixedEfRecordLength:I

    .line 398
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLinearFixedEfRecordLength:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 408
    .end local v6    # "result":[I
    :goto_9
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 409
    monitor-exit v9

    goto/16 :goto_0

    :catchall_9
    move-exception v8

    monitor-exit v9
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v8

    .line 400
    .restart local v6    # "result":[I
    :cond_10
    :try_start_14
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE get empty result"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 404
    .end local v6    # "result":[I
    :cond_11
    const-string v8, "IccSmsInterfaceManager"

    const-string v10, "handle message: EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE"

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_9

    .line 415
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 416
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v9, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 417
    :try_start_15
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_13

    .line 418
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v4, v0

    .line 420
    .local v4, "ef":[B
    if-eqz v4, :cond_12

    .line 421
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    array-length v10, v4

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTransparentEfSize:I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 424
    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_GET_TRANSPARENT_EF_SIZE_DONE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTransparentEfSize:I
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/IccSmsInterfaceManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 430
    .end local v4    # "ef":[B
    :goto_a
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 431
    monitor-exit v9

    goto/16 :goto_0

    :catchall_a
    move-exception v8

    monitor-exit v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    throw v8

    .line 426
    :cond_13
    :try_start_16
    const-string v8, "SimSmsInterfaceManager"

    const-string v10, "handle message: EVENT_GET_TRANSPARENT_EF_SIZE_DONE"

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    goto :goto_a

    .line 437
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 438
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 439
    :try_start_17
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_14

    .line 440
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v6, v0

    .line 441
    .restart local v6    # "result":[I
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    aget v10, v6, v10

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceNumber:I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 446
    .end local v6    # "result":[I
    :goto_b
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v9

    goto/16 :goto_0

    :catchall_b
    move-exception v8

    monitor-exit v9
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v8

    .line 443
    :cond_14
    :try_start_18
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot get BCSMS service number"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 444
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceNumber:I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    goto :goto_b

    .line 450
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 451
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 452
    :try_start_19
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_15

    .line 453
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    invoke-static {v10, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$902(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;)Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    .line 458
    :goto_c
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 459
    monitor-exit v9

    goto/16 :goto_0

    :catchall_c
    move-exception v8

    monitor-exit v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    throw v8

    .line 455
    :cond_15
    :try_start_1a
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot get BCSMS service label"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 456
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$902(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;)Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    goto :goto_c

    .line 462
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 463
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 464
    :try_start_1b
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_16

    .line 465
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceEntry:[I
    invoke-static {v10, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1002(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I

    .line 470
    :goto_d
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 471
    monitor-exit v9

    goto/16 :goto_0

    :catchall_d
    move-exception v8

    monitor-exit v9
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    throw v8

    .line 467
    :cond_16
    :try_start_1c
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot query BCSMS service entry"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 468
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceEntry:[I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1002(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    goto :goto_d

    .line 474
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 475
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 476
    :try_start_1d
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_17

    .line 477
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsSetResult:I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1102(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 482
    :goto_e
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 483
    monitor-exit v9

    goto/16 :goto_0

    :catchall_e
    move-exception v8

    monitor-exit v9
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    throw v8

    .line 479
    :cond_17
    :try_start_1e
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot set BCSMS"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 480
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsSetResult:I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1102(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    goto :goto_e

    .line 488
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 489
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 490
    :try_start_1f
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_18

    .line 491
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTestBCSmsSetResult:I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1302(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 496
    :goto_f
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 497
    monitor-exit v9

    goto/16 :goto_0

    :catchall_f
    move-exception v8

    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    throw v8

    .line 493
    :cond_18
    :try_start_20
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot set Test BCSMS"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 494
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTestBCSmsSetResult:I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1302(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    goto :goto_f

    .line 500
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 501
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 502
    :try_start_21
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_19

    .line 503
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTestBCSmsGetResult:[I
    invoke-static {v10, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I

    .line 508
    :goto_10
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 509
    monitor-exit v9

    goto/16 :goto_0

    :catchall_10
    move-exception v8

    monitor-exit v9
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    throw v8

    .line 505
    :cond_19
    :try_start_22
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot query Test BCSMS"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 506
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTestBCSmsGetResult:[I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    goto :goto_10

    .line 514
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 515
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v9, v9, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 516
    :try_start_23
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1c

    .line 517
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 518
    .local v2, "code":Ljava/lang/String;
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v12, :cond_1a

    .line 519
    const-string v10, "EVENT_UPDATE_WRITEUICC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sub code : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x8

    const/16 v13, 0xa

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v10, "01"

    const/16 v11, 0x8

    const/16 v12, 0xa

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v8, :cond_1b

    .line 521
    const-string v8, "EVENT_UPDATE_WRITEUICC"

    const-string v10, "change to 1"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v8, "gsm.vzw.sms.writeuicc"

    const-string v10, "1"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v2    # "code":Ljava/lang/String;
    :cond_1a
    :goto_11
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 533
    monitor-exit v9

    goto/16 :goto_0

    :catchall_11
    move-exception v8

    monitor-exit v9
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    throw v8

    .line 524
    .restart local v2    # "code":Ljava/lang/String;
    :cond_1b
    :try_start_24
    const-string v8, "EVENT_UPDATE_WRITEUICC"

    const-string v10, "change to 0"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v8, "gsm.vzw.sms.writeuicc"

    const-string v10, "0"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 530
    .end local v2    # "code":Ljava/lang/String;
    :cond_1c
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot update smsformat"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    goto :goto_11

    .line 536
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_13
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 537
    .local v5, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v5, :cond_1

    .line 538
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x17

    invoke-virtual {v5, v8, v9, v11}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 539
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x18

    invoke-virtual {v5, v8, v9, v11}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 540
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x19

    invoke-virtual {v5, v8, v9, v11}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 541
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v8, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1a

    invoke-virtual {v5, v8, v9, v11}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 545
    .end local v5    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :pswitch_14
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v9, "RUIM EVENT_ICC_CARD_READY"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    :pswitch_15
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "RUIM EVENT_ICC_LOCKED"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 549
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # invokes: Lcom/android/internal/telephony/IccSmsInterfaceManager;->removeAllIccSms(Z)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1600(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)V

    goto/16 :goto_0

    .line 552
    :pswitch_16
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "RUIM EVENT_ICC_ABSENT"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 553
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # invokes: Lcom/android/internal/telephony/IccSmsInterfaceManager;->removeAllIccSms(Z)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1600(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)V

    goto/16 :goto_0

    .line 556
    :pswitch_17
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v9, "RUIM EVENT_ICC_CARD_LOADED"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 557
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # invokes: Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadAllIccSms()I
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)I

    goto/16 :goto_0

    .line 561
    :pswitch_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 562
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 563
    :try_start_25
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1d

    .line 564
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastConfig:[I
    invoke-static {v10, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1802(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I

    .line 569
    :goto_12
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 570
    monitor-exit v9

    goto/16 :goto_0

    :catchall_12
    move-exception v8

    monitor-exit v9
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    throw v8

    .line 566
    :cond_1d
    :try_start_26
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v10, "Cannot get CDMA broadcast config"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 567
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastConfig:[I
    invoke-static {v8, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1802(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    goto :goto_12

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
