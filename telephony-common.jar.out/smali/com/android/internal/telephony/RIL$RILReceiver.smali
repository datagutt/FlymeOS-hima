.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    const/16 v0, 0x2040

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 676
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 681
    const/4 v6, 0x0

    .line 683
    .local v6, "retryCount":I
    const-string v11, "ro.build.tags"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "buildtags":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v11, "test-keys"

    invoke-virtual {v0, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, v12, Lcom/android/internal/telephony/RIL;->mIsTestKeys:Z

    .line 692
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/RIL;->ifLockCPUforAPDU:I
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$602(Lcom/android/internal/telephony/RIL;I)I

    .line 695
    const-string v7, "rild"

    .line 698
    .local v7, "rilSocket":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 701
    .local v8, "s":Landroid/net/LocalSocket;
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_2

    .line 702
    :cond_0
    sget-object v11, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v7, v11, v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 708
    :goto_2
    :try_start_1
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 709
    .end local v8    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v7, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 711
    .local v3, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 744
    const/4 v6, 0x0

    .line 746
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v9, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 747
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 749
    const/4 v4, 0x0

    .line 751
    .local v4, "length":I
    :try_start_4
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 756
    .local v2, "is":Ljava/io/InputStream;
    :goto_3
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v2, v11}, Lcom/android/internal/telephony/RIL;->access$700(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    .line 758
    if-gez v4, :cond_6

    .line 780
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_5
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disconnected from \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 786
    :try_start_6
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 790
    :goto_5
    :try_start_7
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 791
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 794
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x1

    const/4 v13, 0x0

    # invokes: Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 795
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 796
    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    .local v10, "tr":Ljava/lang/Throwable;
    :goto_6
    const-string v11, "RILJ"

    const-string v12, "Uncaught exception"

    invoke-static {v11, v12, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, -0x1

    # invokes: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;I)V

    .line 801
    return-void

    .line 684
    .end local v7    # "rilSocket":Ljava/lang/String;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .end local v10    # "tr":Ljava/lang/Throwable;
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 704
    .restart local v7    # "rilSocket":Ljava/lang/String;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_2
    :try_start_8
    sget-object v11, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v7, v11, v12
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 712
    :catch_1
    move-exception v1

    .line 714
    .local v1, "ex":Ljava/io/IOException;
    :goto_7
    if-eqz v8, :cond_3

    .line 715
    :try_start_9
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 724
    :cond_3
    :goto_8
    const/16 v11, 0x8

    if-ne v6, v11, :cond_5

    .line 725
    :try_start_a
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 736
    :cond_4
    :goto_9
    const-wide/16 v12, 0xfa0

    :try_start_b
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 740
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 741
    goto/16 :goto_1

    .line 729
    :cond_5
    if-lez v6, :cond_4

    const/16 v11, 0x8

    if-ge v6, v11, :cond_4

    .line 730
    :try_start_c
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket; retrying after timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_9

    .line 795
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v10

    goto :goto_6

    .line 763
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "l":Landroid/net/LocalSocketAddress;
    .restart local v4    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_6
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 764
    .local v5, "p":Landroid/os/Parcel;
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 765
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 769
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v11, v5}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 770
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_3

    .line 772
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "p":Landroid/os/Parcel;
    :catch_3
    move-exception v1

    .line 773
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' socket closed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 775
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 776
    .restart local v10    # "tr":Ljava/lang/Throwable;
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_4

    .line 717
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    .end local v9    # "s":Landroid/net/LocalSocket;
    .end local v10    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/io/IOException;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catch_5
    move-exception v11

    goto/16 :goto_8

    .line 737
    :catch_6
    move-exception v11

    goto/16 :goto_a

    .line 787
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v8    # "s":Landroid/net/LocalSocket;
    .restart local v3    # "l":Landroid/net/LocalSocketAddress;
    .restart local v4    # "length":I
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catch_7
    move-exception v11

    goto/16 :goto_5

    .line 712
    .end local v3    # "l":Landroid/net/LocalSocketAddress;
    .end local v4    # "length":I
    :catch_8
    move-exception v1

    move-object v8, v9

    .end local v9    # "s":Landroid/net/LocalSocket;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_7
.end method
