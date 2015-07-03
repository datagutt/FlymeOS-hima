.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 477
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 481
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 478
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 494
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v10

    check-cast v8, Lcom/android/internal/telephony/RILRequest;

    .line 495
    .local v8, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v7, 0x0

    .line 497
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 502
    :pswitch_0
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 504
    .local v9, "s":Landroid/net/LocalSocket;
    const/4 v6, 0x0

    .line 505
    .local v6, "i":I
    :goto_1
    if-nez v9, :cond_1

    const/16 v10, 0xa

    if-gt v6, v10, :cond_1

    .line 507
    :try_start_1
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTC.QCRIL.RILJ]: socket is null, sleep 1 sec ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 509
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 510
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 515
    :cond_1
    if-nez v9, :cond_2

    .line 516
    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 517
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 518
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 547
    .end local v6    # "i":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 548
    .local v4, "ex":Ljava/io/IOException;
    const-string v10, "RILJ"

    const-string v11, "IOException"

    invoke-static {v10, v11, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 552
    if-eqz v7, :cond_0

    .line 553
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 554
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 555
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    goto :goto_0

    .line 522
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v6    # "i":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_2
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 523
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v12, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v10, v12, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 524
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 528
    :try_start_5
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 529
    .local v3, "data":[B
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 530
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 532
    array-length v10, v3

    const/16 v11, 0x2040

    if-le v10, v11, :cond_3

    .line 533
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parcel larger than max bytes allowed! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 557
    .end local v3    # "data":[B
    .end local v6    # "i":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 558
    .local v5, "exc":Ljava/lang/RuntimeException;
    const-string v10, "RILJ"

    const-string v11, "Uncaught exception "

    invoke-static {v10, v11, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 562
    if-eqz v7, :cond_0

    .line 563
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 564
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 565
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    goto/16 :goto_0

    .line 524
    .end local v5    # "exc":Ljava/lang/RuntimeException;
    .restart local v6    # "i":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v10

    .line 539
    .restart local v3    # "data":[B
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    aput-byte v14, v10, v11

    .line 540
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x2

    array-length v12, v3

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 541
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x3

    array-length v12, v3

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 545
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 546
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 583
    .end local v3    # "data":[B
    .end local v6    # "i":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v11

    .line 584
    :try_start_8
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->clearWakeLock()Z
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 586
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 587
    .local v2, "count":I
    const-string v10, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v2, :cond_5

    .line 590
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v0

    .line 591
    const-string v10, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v13}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v10, 0x4b

    iget v12, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    if-ne v10, v12, :cond_4

    .line 596
    const-string v10, "RILB"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Detect "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v13}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " no response happened!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/16 v10, 0x3c

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 598
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v12, "reset_ril"

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V
    invoke-static {v10, v8}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 589
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 606
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_5
    monitor-exit v11

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v10

    .line 511
    .restart local v6    # "i":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catch_2
    move-exception v10

    goto/16 :goto_1

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method
