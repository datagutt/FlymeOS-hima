.class final Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;
.super Landroid/os/Handler;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/HtcTelephonyInternal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p2, "x1"    # Lcom/android/internal/telephony/HtcTelephonyInternal$1;

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 136
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 635
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v63, v0

    .line 637
    .local v63, "commands":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2948
    :cond_0
    :goto_0
    return-void

    .line 639
    :sswitch_0
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query cave"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 643
    .local v112, "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto :goto_0

    .line 645
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query cave result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 647
    .local v39, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 648
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 649
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 650
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 655
    :goto_1
    monitor-enter v112

    .line 656
    :try_start_0
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 657
    monitor-exit v112

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v112
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 652
    :cond_1
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 653
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 660
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request cave"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 662
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Ljava/lang/String;

    .line 666
    .local v111, "randu":Ljava/lang/String;
    goto/16 :goto_0

    .line 668
    .end local v111    # "randu":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request cave result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 670
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 671
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 672
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 673
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v124, v3

    check-cast v124, [Ljava/lang/String;

    .line 674
    .local v124, "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v124

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v3, 0x0

    aget-object v3, v124, v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 686
    .end local v124    # "strArr":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 687
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 690
    :cond_3
    monitor-enter v112

    .line 691
    :try_start_1
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 692
    monitor-exit v112

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v112
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 696
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query MD5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 700
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 702
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query MD5 result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 704
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 705
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 706
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 707
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 712
    :goto_2
    monitor-enter v112

    .line 713
    :try_start_2
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 714
    monitor-exit v112

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v112
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    .line 709
    :cond_4
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 710
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 717
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request MD5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 719
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v62, v3, v4

    .line 720
    .local v62, "chapid":Ljava/lang/String;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v61, v3, v4

    .line 721
    .local v61, "chapchallengelength":Ljava/lang/String;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v60, v3, v4

    .line 722
    .local v60, "chapchallenge":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chapid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; chapchallengelength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; chapchallenge:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 727
    .end local v60    # "chapchallenge":Ljava/lang/String;
    .end local v61    # "chapchallengelength":Ljava/lang/String;
    .end local v62    # "chapid":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request MD5 result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 729
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 730
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 731
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 732
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v124, v3

    check-cast v124, [Ljava/lang/String;

    .line 733
    .restart local v124    # "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v124

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v3, 0x0

    aget-object v3, v124, v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 746
    .end local v124    # "strArr":[Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 747
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 750
    :cond_5
    monitor-enter v112

    .line 751
    :try_start_3
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 752
    monitor-exit v112

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v112
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v3

    .line 744
    :cond_6
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 756
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query VPM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 760
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 762
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_9
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query VPM result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 764
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 765
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 766
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 767
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 773
    :goto_4
    monitor-enter v112

    .line 774
    :try_start_4
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 775
    monitor-exit v112

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v112
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    .line 769
    :cond_7
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 770
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 778
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request VPM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 782
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 784
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request VPM result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 786
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 787
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 788
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 789
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v124, v3

    check-cast v124, [Ljava/lang/String;

    .line 790
    .restart local v124    # "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v124

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v3, 0x0

    aget-object v3, v124, v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 802
    .end local v124    # "strArr":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 803
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 806
    :cond_9
    monitor-enter v112

    .line 807
    :try_start_5
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 808
    monitor-exit v112

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v112
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v3

    .line 812
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 814
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v110, v0

    check-cast v110, Ljava/lang/String;

    .line 817
    .local v110, "randssd":Ljava/lang/String;
    goto/16 :goto_0

    .line 819
    .end local v110    # "randssd":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request SSD UPDATE result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 821
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 822
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 823
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    .line 824
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v124, v3

    check-cast v124, [Ljava/lang/String;

    .line 825
    .restart local v124    # "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v124

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v3, 0x0

    aget-object v3, v124, v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 836
    .end local v124    # "strArr":[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_b

    .line 837
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 840
    :cond_b
    monitor-enter v112

    .line 841
    :try_start_6
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 842
    monitor-exit v112

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    monitor-exit v112
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v3

    .line 845
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 849
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 851
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 853
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 854
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 855
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_c

    .line 856
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 862
    :goto_5
    monitor-enter v112

    .line 863
    :try_start_7
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 864
    monitor-exit v112

    goto/16 :goto_0

    :catchall_7
    move-exception v3

    monitor-exit v112
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v3

    .line 858
    :cond_c
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 859
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 867
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_10
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request SSD UPDATE CONFIRM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 869
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/String;

    .line 872
    .local v50, "authbs":Ljava/lang/String;
    goto/16 :goto_0

    .line 879
    .end local v50    # "authbs":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 880
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 881
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 882
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d

    .line 883
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request SSD UPDATE CONFIRM result: success"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 890
    :goto_6
    monitor-enter v112

    .line 891
    :try_start_8
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 892
    monitor-exit v112

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    monitor-exit v112
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v3

    .line 886
    :cond_d
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cw request SSD UPDATE CONFIRM result: fail. exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_6

    .line 896
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_12
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_CW_QUERY_UIMAUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 901
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 903
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_13
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_CW_QUERY_UIMAUTH result!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 905
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 906
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 907
    const/16 v51, 0x0

    .line 909
    .local v51, "authenSupported":I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_12

    .line 910
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v133, v3

    check-cast v133, [Ljava/lang/String;

    .line 911
    .local v133, "uimauth":[Ljava/lang/String;
    const-string v134, ""

    .line 912
    .local v134, "uimauthList":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len of uimauth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v133

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/16 v79, 0x0

    .local v79, "i":I
    :goto_7
    move-object/from16 v0, v133

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_11

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v134

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v133, v79

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v134

    .line 915
    aget-object v3, v133, v79

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 916
    add-int/lit8 v51, v51, 0x1

    .line 913
    :cond_e
    :goto_8
    add-int/lit8 v79, v79, 0x1

    goto :goto_7

    .line 917
    :cond_f
    aget-object v3, v133, v79

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "md5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 918
    add-int/lit8 v51, v51, 0x2

    goto :goto_8

    .line 919
    :cond_10
    aget-object v3, v133, v79

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "akacave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 920
    add-int/lit8 v51, v51, 0x4

    goto :goto_8

    .line 923
    :cond_11
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uimauthList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v134

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v79    # "i":I
    .end local v133    # "uimauth":[Ljava/lang/String;
    .end local v134    # "uimauthList":Ljava/lang/String;
    :goto_9
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 929
    monitor-enter v112

    .line 930
    :try_start_9
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 931
    monitor-exit v112

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    monitor-exit v112
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v3

    .line 925
    :cond_12
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 936
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v51    # "authenSupported":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 937
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    .line 939
    .local v42, "argument":Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    const/16 v3, 0x7e

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 946
    .local v11, "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    move-object/from16 v0, v42

    iget v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->channel:I

    move-object/from16 v0, v42

    iget v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    move-object/from16 v0, v42

    iget v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    move-object/from16 v0, v42

    iget v9, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 953
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v42    # "argument":Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 954
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 955
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_13

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_13

    .line 956
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 960
    :goto_a
    monitor-enter v112

    .line 961
    :try_start_a
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 962
    monitor-exit v112

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit v112
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v3

    .line 958
    :cond_13
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v112

    iput-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a

    .line 965
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 966
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 967
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 972
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 973
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 974
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannelExtend(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 979
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 980
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 982
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v59, v3

    check-cast v59, [I

    .line 983
    .local v59, "channelInfo":[I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_14

    if-eqz v59, :cond_14

    move-object/from16 v0, v59

    array-length v3, v0

    if-lez v3, :cond_14

    .line 984
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aget v4, v59, v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 986
    move-object/from16 v0, v59

    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_15

    .line 987
    const/4 v3, 0x1

    aget v65, v59, v3

    .line 988
    .local v65, "datalen":I
    move-object/from16 v0, v59

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    move/from16 v0, v65

    if-gt v0, v3, :cond_15

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move/from16 v0, v65

    new-array v4, v0, [B

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;[B)[B

    .line 990
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_b
    move/from16 v0, v79

    move/from16 v1, v65

    if-ge v0, v1, :cond_15

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$100(Lcom/android/internal/telephony/HtcTelephonyInternal;)[B

    move-result-object v3

    add-int/lit8 v4, v79, 0x2

    aget v4, v59, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v79

    .line 990
    add-int/lit8 v79, v79, 0x1

    goto :goto_b

    .line 997
    .end local v65    # "datalen":I
    .end local v79    # "i":I
    :cond_14
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 998
    if-eqz v59, :cond_16

    move-object/from16 v0, v59

    array-length v3, v0

    if-lez v3, :cond_16

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    aget v4, v59, v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 1004
    :cond_15
    :goto_c
    monitor-enter v112

    .line 1005
    :try_start_b
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1006
    monitor-exit v112

    goto/16 :goto_0

    :catchall_b
    move-exception v3

    monitor-exit v112
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v3

    .line 1001
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    goto :goto_c

    .line 1009
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v59    # "channelInfo":[I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1010
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x82

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1016
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1022
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1023
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1024
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_17

    .line 1025
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1029
    :goto_d
    monitor-enter v112

    .line 1030
    :try_start_c
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1031
    monitor-exit v112

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    monitor-exit v112
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v3

    .line 1027
    :cond_17
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_d

    .line 1034
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1035
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v107, v0

    check-cast v107, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    .line 1036
    .local v107, "parameters":Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    const/16 v3, 0x97

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1043
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    move-object/from16 v0, v107

    iget v13, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    move-object/from16 v0, v107

    iget v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    move-object/from16 v0, v107

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v0, v107

    iget v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    move/from16 v16, v0

    move-object/from16 v0, v107

    iget v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    move/from16 v17, v0

    move-object/from16 v0, v107

    iget v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v11

    invoke-interface/range {v12 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1052
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v107    # "parameters":Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1053
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1054
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_19

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_19

    .line 1055
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 1066
    :cond_18
    :goto_e
    monitor-enter v112

    :try_start_d
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v112

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    monitor-exit v112
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v3

    .line 1058
    :cond_19
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v112

    iput-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 1060
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_18

    goto :goto_e

    .line 1073
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_UICC_AUTHENTICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1075
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 1076
    .local v7, "uiccAuthParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const-string v5, "7FFF"

    const-string v6, "11"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x86

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1085
    .end local v7    # "uiccAuthParam":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1087
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1088
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v80, v0

    check-cast v80, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1089
    .local v80, "iccIoResult":Lcom/android/internal/telephony/uicc/IccIoResult;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1090
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1b

    .line 1091
    new-instance v114, Landroid/os/Bundle;

    invoke-direct/range {v114 .. v114}, Landroid/os/Bundle;-><init>()V

    .line 1092
    .local v114, "result":Landroid/os/Bundle;
    const-string v3, "sw1"

    move-object/from16 v0, v80

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    move-object/from16 v0, v114

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1093
    const-string v3, "sw2"

    move-object/from16 v0, v80

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    move-object/from16 v0, v114

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1094
    const-string v3, "payload"

    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v0, v114

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1095
    move-object/from16 v0, v114

    move-object/from16 v1, v112

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1100
    .end local v114    # "result":Landroid/os/Bundle;
    :goto_f
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_1a

    .line 1101
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1105
    :cond_1a
    monitor-enter v112

    .line 1106
    :try_start_e
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1107
    monitor-exit v112

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    monitor-exit v112
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v3

    .line 1097
    :cond_1b
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1111
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v80    # "iccIoResult":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_GET_SECTOR_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1113
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x84

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSectorID(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1117
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_20
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_GET_SECTOR_ID_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1119
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1120
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1121
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1d

    .line 1122
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1127
    :goto_10
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_1c

    .line 1128
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1132
    :cond_1c
    monitor-enter v112

    .line 1133
    :try_start_f
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1134
    monitor-exit v112

    goto/16 :goto_0

    :catchall_f
    move-exception v3

    monitor-exit v112
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v3

    .line 1124
    :cond_1d
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1139
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_21
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SIM_GSM_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1141
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v77, v0

    check-cast v77, Landroid/os/Bundle;

    .line 1142
    .local v77, "gsmArgument":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "rand"

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0xb4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1149
    .end local v77    # "gsmArgument":Landroid/os/Bundle;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_22
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SIM_GSM_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1151
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1152
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1153
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1f

    .line 1154
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1159
    :goto_11
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_1e

    .line 1160
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1164
    :cond_1e
    monitor-enter v112

    .line 1165
    :try_start_10
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1166
    monitor-exit v112

    goto/16 :goto_0

    :catchall_10
    move-exception v3

    monitor-exit v112
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v3

    .line 1156
    :cond_1f
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1172
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_23
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_USIM_AKA_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1174
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/Bundle;

    .line 1175
    .local v37, "akaArgument":Landroid/os/Bundle;
    const/16 v48, 0x1

    .line 1176
    .local v48, "auth_type":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "rand"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "autn"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0xb0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move/from16 v0, v48

    invoke-interface {v3, v0, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1181
    .end local v37    # "akaArgument":Landroid/os/Bundle;
    .end local v48    # "auth_type":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_24
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_USIM_AKA_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1183
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1184
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1185
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_21

    .line 1186
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1191
    :goto_12
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_20

    .line 1192
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1196
    :cond_20
    monitor-enter v112

    .line 1197
    :try_start_11
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1198
    monitor-exit v112

    goto/16 :goto_0

    :catchall_11
    move-exception v3

    monitor-exit v112
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v3

    .line 1188
    :cond_21
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1204
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_25
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_BTID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1206
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v92, 0x0

    .line 1207
    .local v92, "mBtid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v92

    .line 1208
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1209
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getBTID"

    move-object/from16 v0, v92

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    monitor-enter v112

    .line 1211
    :try_start_12
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1212
    monitor-exit v112

    goto/16 :goto_0

    :catchall_12
    move-exception v3

    monitor-exit v112
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v3

    .line 1216
    .end local v92    # "mBtid":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_26
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_RAND"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1218
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v98, 0x0

    .line 1219
    .local v98, "mRand":[B
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v98

    .line 1220
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1221
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getRand"

    move-object/from16 v0, v98

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1222
    monitor-enter v112

    .line 1223
    :try_start_13
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1224
    monitor-exit v112

    goto/16 :goto_0

    :catchall_13
    move-exception v3

    monitor-exit v112
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v3

    .line 1228
    .end local v98    # "mRand":[B
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_27
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_KEYLIFETIME"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1230
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v96, 0x0

    .line 1231
    .local v96, "mKeylifetime":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v96

    .line 1232
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1233
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getKeyLifeTime"

    move-object/from16 v0, v96

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    monitor-enter v112

    .line 1235
    :try_start_14
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1236
    monitor-exit v112

    goto/16 :goto_0

    :catchall_14
    move-exception v3

    monitor-exit v112
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v3

    .line 1240
    .end local v96    # "mKeylifetime":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_28
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_HASISIM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1242
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v93, 0x0

    .line 1243
    .local v93, "mHasISIM":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v93

    .line 1244
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1245
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "hasISIM"

    move/from16 v0, v93

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1246
    monitor-enter v112

    .line 1247
    :try_start_15
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1248
    monitor-exit v112

    goto/16 :goto_0

    :catchall_15
    move-exception v3

    monitor-exit v112
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v3

    .line 1252
    .end local v93    # "mHasISIM":Z
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_29
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_IS_GBA_SUPPORTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1254
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v94, 0x0

    .line 1255
    .local v94, "mIsGBASupported":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v94

    .line 1256
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1257
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "isGBASupported"

    move/from16 v0, v94

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1258
    monitor-enter v112

    .line 1259
    :try_start_16
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1260
    monitor-exit v112

    goto/16 :goto_0

    :catchall_16
    move-exception v3

    monitor-exit v112
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v3

    .line 1273
    .end local v94    # "mIsGBASupported":Z
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CARD_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1275
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Landroid/os/Bundle;

    .line 1277
    .local v49, "authargument":Landroid/os/Bundle;
    const/16 v84, 0x1

    .line 1278
    .local v84, "invalid":Z
    if-eqz v49, :cond_2b

    .line 1279
    const-string v3, "type"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 1280
    .local v47, "authType":I
    if-ltz v47, :cond_2b

    const/4 v3, 0x4

    move/from16 v0, v47

    if-gt v0, v3, :cond_2b

    .line 1281
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_CARD_AUTH mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_27
    const/4 v3, 0x4

    move/from16 v0, v47

    if-ne v0, v3, :cond_2c

    const-string v3, "nafid"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    .line 1284
    .local v43, "argument1":[B
    :goto_13
    if-eqz v47, :cond_28

    const/4 v3, 0x4

    move/from16 v0, v47

    if-ne v0, v3, :cond_2d

    :cond_28
    const/16 v44, 0x0

    .line 1288
    .local v44, "argument2":[B
    :goto_14
    if-eqz v43, :cond_2e

    if-nez v44, :cond_29

    if-eqz v47, :cond_2a

    const/4 v3, 0x4

    move/from16 v0, v47

    if-eq v0, v3, :cond_2a

    :cond_29
    if-eqz v44, :cond_2e

    if-eqz v47, :cond_2e

    const/4 v3, 0x4

    move/from16 v0, v47

    if-eq v0, v3, :cond_2e

    .line 1291
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ef

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move/from16 v0, v47

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v47

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    .line 1294
    const/16 v84, 0x0

    .line 1300
    .end local v43    # "argument1":[B
    .end local v44    # "argument2":[B
    .end local v47    # "authType":I
    :cond_2b
    :goto_15
    if-eqz v84, :cond_0

    .line 1301
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1302
    monitor-enter v112

    .line 1303
    :try_start_17
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1304
    monitor-exit v112

    goto/16 :goto_0

    :catchall_17
    move-exception v3

    monitor-exit v112
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw v3

    .line 1283
    .restart local v47    # "authType":I
    :cond_2c
    const-string v3, "rand"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    goto :goto_13

    .line 1284
    .restart local v43    # "argument1":[B
    :cond_2d
    const-string v3, "autn"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v44

    goto :goto_14

    .line 1296
    .restart local v44    # "argument2":[B
    :cond_2e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "authentication argument is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1309
    .end local v43    # "argument1":[B
    .end local v44    # "argument2":[B
    .end local v47    # "authType":I
    .end local v49    # "authargument":Landroid/os/Bundle;
    .end local v84    # "invalid":Z
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CARD_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1311
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1313
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_32

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_32

    .line 1314
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    .line 1315
    .restart local v47    # "authType":I
    new-instance v46, Landroid/os/Bundle;

    invoke-direct/range {v46 .. v46}, Landroid/os/Bundle;-><init>()V

    .line 1316
    .local v46, "authResult":Landroid/os/Bundle;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v129, v0

    check-cast v129, Landroid/os/Bundle;

    .line 1317
    .local v129, "temp":Landroid/os/Bundle;
    const/4 v3, 0x2

    move/from16 v0, v47

    if-ne v0, v3, :cond_2f

    .line 1318
    const-string v3, "res"

    const-string v4, "res"

    move-object/from16 v0, v129

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1319
    const-string v3, "Ck"

    const-string v4, "Ck"

    move-object/from16 v0, v129

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1320
    const-string v3, "Ik"

    const-string v4, "Ik"

    move-object/from16 v0, v129

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1321
    const-string v3, "kc"

    const-string v4, "kc"

    move-object/from16 v0, v129

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1322
    const-string v3, "auts"

    const-string v4, "auts"

    move-object/from16 v0, v129

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1323
    move-object/from16 v0, v46

    move-object/from16 v1, v112

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1338
    .end local v46    # "authResult":Landroid/os/Bundle;
    .end local v47    # "authType":I
    .end local v129    # "temp":Landroid/os/Bundle;
    :goto_16
    monitor-enter v112

    .line 1339
    :try_start_18
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1340
    monitor-exit v112

    goto/16 :goto_0

    :catchall_18
    move-exception v3

    monitor-exit v112
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw v3

    .line 1324
    .restart local v46    # "authResult":Landroid/os/Bundle;
    .restart local v47    # "authType":I
    .restart local v129    # "temp":Landroid/os/Bundle;
    :cond_2f
    const/4 v3, 0x3

    move/from16 v0, v47

    if-ne v0, v3, :cond_30

    .line 1325
    const-string v3, "res"

    const-string v4, "res"

    move-object/from16 v0, v129

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1326
    const-string v3, "auts"

    const-string v4, "auts"

    move-object/from16 v0, v129

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1327
    move-object/from16 v0, v46

    move-object/from16 v1, v112

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_16

    .line 1328
    :cond_30
    const/4 v3, 0x4

    move/from16 v0, v47

    if-ne v0, v3, :cond_31

    .line 1329
    const-string v3, "ks_naf"

    const-string v4, "res"

    move-object/from16 v0, v129

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1330
    move-object/from16 v0, v46

    move-object/from16 v1, v112

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_16

    .line 1332
    :cond_31
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_16

    .line 1335
    .end local v46    # "authResult":Landroid/os/Bundle;
    .end local v47    # "authType":I
    .end local v129    # "temp":Landroid/os/Bundle;
    :cond_32
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto/16 :goto_16

    .line 1343
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1346
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_33

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1347
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Bundle;

    .line 1349
    .local v55, "bundle":Landroid/os/Bundle;
    const-string v3, "rand"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v109

    .line 1350
    .local v109, "rand":[B
    const-string v3, "btid"

    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1351
    .local v54, "btid":Ljava/lang/String;
    const-string v3, "keylifetime"

    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 1353
    .local v87, "keylifetime":Ljava/lang/String;
    new-instance v106, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v106 .. v106}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1355
    .local v106, "os":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v106

    move-object/from16 v1, v109

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/io/ByteArrayOutputStream;[B)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v106

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/io/ByteArrayOutputStream;[B)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-virtual/range {v87 .. v87}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v106

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/io/ByteArrayOutputStream;[B)V

    .line 1358
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;

    move-result-object v3

    const/16 v4, 0x6fd5

    invoke-virtual/range {v106 .. v106}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x6f1

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1362
    .end local v54    # "btid":Ljava/lang/String;
    .end local v55    # "bundle":Landroid/os/Bundle;
    .end local v87    # "keylifetime":Ljava/lang/String;
    .end local v106    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v109    # "rand":[B
    :cond_33
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "request.argument is null or IsimFileHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1365
    monitor-enter v112

    .line 1366
    :try_start_19
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1367
    monitor-exit v112

    goto/16 :goto_0

    :catchall_19
    move-exception v3

    monitor-exit v112
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    throw v3

    .line 1371
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1372
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1373
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 1374
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1375
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_17
    monitor-enter v112

    .line 1386
    :try_start_1a
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1387
    monitor-exit v112

    goto/16 :goto_0

    :catchall_1a
    move-exception v3

    monitor-exit v112
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    throw v3

    .line 1377
    :cond_34
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Bundle;

    .line 1378
    .restart local v55    # "bundle":Landroid/os/Bundle;
    const-string v3, "rand"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 1379
    const-string v3, "btid"

    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 1380
    const-string v3, "keylifetime"

    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 1381
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_17

    .line 1393
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v55    # "bundle":Landroid/os/Bundle;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "C8260A0000"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x89

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1397
    :sswitch_2f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1399
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1400
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$502(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;

    .line 1402
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_36

    .line 1403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$502(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;

    .line 1404
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOldNV_10: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_37

    .line 1411
    :cond_35
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can not get NV#10"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1412
    monitor-enter v112

    .line 1413
    :try_start_1b
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1414
    monitor-exit v112

    goto/16 :goto_0

    :catchall_1b
    move-exception v3

    monitor-exit v112
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    throw v3

    .line 1406
    :cond_36
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1417
    :cond_37
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x8a

    move-object/from16 v0, v112

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1422
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_30
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1424
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1425
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1426
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_38

    .line 1427
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> CMD_HTC_PERMANENT_DETACH_LTE_DONE, mOldNV_10.substring(10): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C8270A0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x8b

    move-object/from16 v0, v112

    invoke-virtual {v6, v8, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1431
    :cond_38
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to set PreferNetwork to CDMA/EvDo!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1433
    monitor-enter v112

    .line 1434
    :try_start_1c
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1435
    monitor-exit v112

    goto/16 :goto_0

    :catchall_1c
    move-exception v3

    monitor-exit v112
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    throw v3

    .line 1439
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_31
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1441
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1442
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_39

    .line 1443
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_39
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_19
    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1446
    monitor-enter v112

    .line 1447
    :try_start_1d
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1448
    monitor-exit v112

    goto/16 :goto_0

    :catchall_1d
    move-exception v3

    monitor-exit v112
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    throw v3

    .line 1445
    :cond_3a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_19

    .line 1453
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_32
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_AKA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1455
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v90, v0

    check-cast v90, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    .line 1456
    .local v90, "mAuth1":Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, v90

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    move-object/from16 v0, v90

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x8d

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1460
    .end local v90    # "mAuth1":Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_33
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_GBA_BOOTSTRAP"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1462
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    .line 1463
    .local v91, "mAuth2":Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, v91

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    move-object/from16 v0, v91

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x8f

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1467
    .end local v91    # "mAuth2":Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_34
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_GBA_NAF"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1469
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v101, v3

    check-cast v101, [B

    .line 1470
    .local v101, "nafid":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x91

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v101

    invoke-interface {v3, v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1474
    .end local v101    # "nafid":[B
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_35
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1476
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v97, v0

    check-cast v97, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;

    .line 1479
    .local v97, "mParam":Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 1480
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "FileHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1483
    monitor-enter v112

    .line 1484
    :try_start_1e
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1485
    monitor-exit v112

    goto/16 :goto_0

    :catchall_1e
    move-exception v3

    monitor-exit v112
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    throw v3

    .line 1487
    :cond_3b
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    move-object/from16 v0, v97

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v97

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x93

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1499
    .end local v97    # "mParam":Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1500
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1501
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1502
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3d

    .line 1503
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :goto_1a
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_3c

    .line 1509
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1513
    :cond_3c
    monitor-enter v112

    .line 1514
    :try_start_1f
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1515
    monitor-exit v112

    goto/16 :goto_0

    :catchall_1f
    move-exception v3

    monitor-exit v112
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    throw v3

    .line 1505
    :cond_3d
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1a

    .line 1521
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1522
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v131, v0

    check-cast v131, Ljava/lang/Integer;

    .line 1523
    .local v131, "type":Ljava/lang/Integer;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v131

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-virtual/range {v131 .. v131}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x95

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1528
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v131    # "type":Ljava/lang/Integer;
    :sswitch_38
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1530
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1531
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1532
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3e

    .line 1533
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1538
    :goto_1b
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v112

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    monitor-enter v112

    .line 1541
    :try_start_20
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1542
    monitor-exit v112

    goto/16 :goto_0

    :catchall_20
    move-exception v3

    monitor-exit v112
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    throw v3

    .line 1535
    :cond_3e
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1b

    .line 1549
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1550
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xac

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1555
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1556
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    const/16 v112, 0x0

    .line 1557
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    if-eqz v39, :cond_3f

    .line 1559
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1560
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v122, 0x0

    .line 1561
    .local v122, "states":[Ljava/lang/String;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v122, v3

    check-cast v122, [Ljava/lang/String;

    .line 1562
    if-eqz v122, :cond_40

    move-object/from16 v0, v122

    array-length v3, v0

    const/16 v4, 0xe

    if-lt v3, v4, :cond_40

    const/16 v3, 0xd

    aget-object v3, v122, v3

    if-eqz v3, :cond_40

    .line 1565
    :try_start_21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1566
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getLTELastErrorCode"

    const/16 v5, 0xd

    aget-object v5, v122, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_0

    .line 1579
    .end local v122    # "states":[Ljava/lang/String;
    :cond_3f
    :goto_1c
    monitor-enter v112

    .line 1580
    :try_start_22
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1581
    monitor-exit v112

    goto/16 :goto_0

    :catchall_21
    move-exception v3

    monitor-exit v112
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_21

    throw v3

    .line 1568
    .restart local v122    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v74

    .line 1569
    .local v74, "ex":Ljava/lang/NumberFormatException;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT: error parsing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1573
    .end local v74    # "ex":Ljava/lang/NumberFormatException;
    :cond_40
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning! Wrong number of parameters returned from CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT: expected 14 or more strings and got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v122

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1585
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v122    # "states":[Ljava/lang/String;
    :sswitch_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1586
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/os/Bundle;

    .line 1588
    .local v56, "bundle_smart":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "arg1"

    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x6af

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->SetCdmaSmartNetwork(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1592
    .end local v56    # "bundle_smart":Landroid/os/Bundle;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1593
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1594
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_41

    .line 1595
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1597
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setCdmaSmartNetwork"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1620
    :goto_1d
    monitor-enter v112

    .line 1621
    :try_start_23
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1622
    monitor-exit v112

    goto/16 :goto_0

    :catchall_22
    move-exception v3

    monitor-exit v112
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_22

    throw v3

    .line 1601
    :cond_41
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v114, v3

    check-cast v114, [I

    .line 1603
    .local v114, "result":[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1604
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "setCdmaSmartNetwork"

    const/4 v4, 0x0

    aget v4, v114, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_42

    const/4 v4, 0x1

    :goto_1e
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1d

    :cond_42
    const/4 v4, 0x0

    goto :goto_1e

    .line 1626
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v114    # "result":[I
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->GetSmartNetworkStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1630
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1631
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1632
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_43

    .line 1633
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1635
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSmartNetworkStatus"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1644
    :goto_1f
    monitor-enter v112

    .line 1645
    :try_start_24
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1646
    monitor-exit v112

    goto/16 :goto_0

    :catchall_23
    move-exception v3

    monitor-exit v112
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_23

    throw v3

    .line 1639
    :cond_43
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v114, v3

    check-cast v114, [I

    .line 1641
    .restart local v114    # "result":[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1642
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getCdmaSmartNetworkStatus"

    const/4 v4, 0x0

    aget v4, v114, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_44

    const/4 v4, 0x1

    :goto_20
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1f

    :cond_44
    const/4 v4, 0x0

    goto :goto_20

    .line 1651
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v114    # "result":[I
    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSysRecordSize(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1659
    :sswitch_40
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1660
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1661
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_45

    .line 1662
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1664
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1680
    :goto_21
    monitor-enter v112

    .line 1681
    :try_start_25
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1682
    monitor-exit v112

    goto/16 :goto_0

    :catchall_24
    move-exception v3

    monitor-exit v112
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_24

    throw v3

    .line 1668
    :cond_45
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v114, v3

    check-cast v114, [I

    .line 1669
    .restart local v114    # "result":[I
    if-eqz v114, :cond_46

    move-object/from16 v0, v114

    array-length v3, v0

    if-eqz v3, :cond_46

    .line 1677
    :cond_46
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1678
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    aget v5, v114, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_21

    .line 1685
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v114    # "result":[I
    :sswitch_41
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1686
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/os/Bundle;

    .line 1688
    .local v57, "bundle_sys_record":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "arg1"

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "arg2"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x6b5

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSysRecordContent(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1694
    .end local v57    # "bundle_sys_record":Landroid/os/Bundle;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_42
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1695
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1696
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_47

    .line 1697
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1699
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1733
    :goto_22
    monitor-enter v112

    .line 1734
    :try_start_26
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1735
    monitor-exit v112

    goto/16 :goto_0

    :catchall_25
    move-exception v3

    monitor-exit v112
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_25

    throw v3

    .line 1703
    :cond_47
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1706
    :try_start_27
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v113, v0

    .line 1708
    .local v113, "response":[Ljava/lang/Object;
    move-object/from16 v0, v113

    array-length v3, v0

    move-object/from16 v0, v113

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v64

    .line 1709
    .local v64, "copy":[Ljava/lang/Object;
    move-object/from16 v0, v113

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v120, v0

    .line 1710
    .local v120, "sid_array":[I
    move-object/from16 v0, v113

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v103, v0

    .line 1711
    .local v103, "nid_array":[I
    move-object/from16 v0, v113

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v53, v0

    .line 1712
    .local v53, "bsid_array":[I
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_23
    move-object/from16 v0, v64

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_48

    .line 1714
    aget-object v3, v64, v79

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v75

    .line 1715
    .local v75, "field":Ljava/lang/reflect/Field;
    aget-object v3, v64, v79

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v120, v79

    .line 1716
    aget-object v3, v64, v79

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "nid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v75

    .line 1717
    aget-object v3, v64, v79

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v103, v79

    .line 1718
    aget-object v3, v64, v79

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "bsid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v75

    .line 1719
    aget-object v3, v64, v79

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v53, v79

    .line 1712
    add-int/lit8 v79, v79, 0x1

    goto :goto_23

    .line 1722
    .end local v75    # "field":Ljava/lang/reflect/Field;
    :cond_48
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    move-object/from16 v0, v113

    array-length v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1723
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_sid"

    move-object/from16 v0, v120

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1724
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_nid"

    move-object/from16 v0, v103

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1725
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_bsid"

    move-object/from16 v0, v53

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1

    goto/16 :goto_22

    .line 1727
    .end local v53    # "bsid_array":[I
    .end local v64    # "copy":[Ljava/lang/Object;
    .end local v79    # "i":I
    .end local v103    # "nid_array":[I
    .end local v113    # "response":[Ljava/lang/Object;
    .end local v120    # "sid_array":[I
    :catch_1
    move-exception v70

    .line 1729
    .local v70, "e":Ljava/lang/Exception;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1730
    invoke-virtual/range {v70 .. v70}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_22

    .line 1739
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v70    # "e":Ljava/lang/Exception;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b7

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->clearCdmaSysRecordContent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1745
    :sswitch_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1746
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1747
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1748
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_49

    .line 1749
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1754
    :goto_24
    monitor-enter v112

    .line 1755
    :try_start_28
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1756
    monitor-exit v112

    goto/16 :goto_0

    :catchall_26
    move-exception v3

    monitor-exit v112
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_26

    throw v3

    .line 1753
    :cond_49
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_24

    .line 1763
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_45
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1765
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x99

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestClearLocProcessDB(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1769
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_46
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1771
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1772
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4a

    .line 1773
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_4a
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4b

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_25
    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1776
    monitor-enter v112

    .line 1777
    :try_start_29
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1778
    monitor-exit v112

    goto/16 :goto_0

    :catchall_27
    move-exception v3

    monitor-exit v112
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_27

    throw v3

    .line 1775
    :cond_4b
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_25

    .line 1781
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_47
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1783
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Bundle;

    .line 1784
    .restart local v55    # "bundle":Landroid/os/Bundle;
    const-string v3, "index"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1785
    .local v13, "index":I
    const-string v3, "rat"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1786
    .local v14, "rat":I
    const-string v3, "sid"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1787
    .local v15, "sid":I
    const-string v3, "nid"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1788
    .local v16, "nid":I
    const-string v3, "base_id"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1789
    .local v17, "base_id":I
    const-string v3, "pilot_pn"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1790
    .local v18, "pilot_pn":I
    const-string v3, "neighbor_pilot_list"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    .line 1792
    .local v19, "neighbor_pilot_list":[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " base_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pilot_pn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v4, 0x9b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v12 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLocProcessDB(IIIIII[ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1799
    .end local v13    # "index":I
    .end local v14    # "rat":I
    .end local v15    # "sid":I
    .end local v16    # "nid":I
    .end local v17    # "base_id":I
    .end local v18    # "pilot_pn":I
    .end local v19    # "neighbor_pilot_list":[I
    .end local v55    # "bundle":Landroid/os/Bundle;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_48
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1801
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1802
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4c

    .line 1803
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_4c
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4d

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_26
    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1806
    monitor-enter v112

    .line 1807
    :try_start_2a
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1808
    monitor-exit v112

    goto/16 :goto_0

    :catchall_28
    move-exception v3

    monitor-exit v112
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_28

    throw v3

    .line 1805
    :cond_4d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_26

    .line 1811
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_49
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1813
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x9d

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetCurrentLoc(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1816
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1818
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1819
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1820
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4f

    .line 1821
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1826
    :goto_27
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_4e

    .line 1827
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1830
    :cond_4e
    monitor-enter v112

    .line 1831
    :try_start_2b
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1832
    monitor-exit v112

    goto/16 :goto_0

    :catchall_29
    move-exception v3

    monitor-exit v112
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_29

    throw v3

    .line 1823
    :cond_4f
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1835
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1837
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v88, Landroid/os/Bundle;

    invoke-direct/range {v88 .. v88}, Landroid/os/Bundle;-><init>()V

    .line 1838
    .local v88, "localbundle":Landroid/os/Bundle;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    move-object/from16 v40, v3

    check-cast v40, [Ljava/lang/Integer;

    .line 1839
    .local v40, "arg":[Ljava/lang/Integer;
    const/4 v3, 0x0

    aget-object v71, v40, v3

    .line 1840
    .local v71, "enable":Ljava/lang/Integer;
    const/4 v3, 0x1

    aget-object v104, v40, v3

    .line 1841
    .local v104, "num_neighbor_pilot":Ljava/lang/Integer;
    const/4 v3, 0x2

    aget-object v105, v40, v3

    .line 1842
    .local v105, "num_record":Ljava/lang/Integer;
    const/4 v3, 0x3

    aget-object v130, v40, v3

    .line 1844
    .local v130, "time":Ljava/lang/Integer;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num_neighbor_pilot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v104

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num_record:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v130

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v20

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v104 .. v104}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual/range {v105 .. v105}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual/range {v130 .. v130}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v4, 0x9f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->requestConfigLocProcessDB(IIIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1851
    .end local v40    # "arg":[Ljava/lang/Integer;
    .end local v71    # "enable":Ljava/lang/Integer;
    .end local v88    # "localbundle":Landroid/os/Bundle;
    .end local v104    # "num_neighbor_pilot":Ljava/lang/Integer;
    .end local v105    # "num_record":Ljava/lang/Integer;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v130    # "time":Ljava/lang/Integer;
    :sswitch_4c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1853
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1854
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_50

    .line 1855
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_50
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_51

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_28
    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1858
    monitor-enter v112

    .line 1859
    :try_start_2c
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1860
    monitor-exit v112

    goto/16 :goto_0

    :catchall_2a
    move-exception v3

    monitor-exit v112
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2a

    throw v3

    .line 1857
    :cond_51
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_28

    .line 1865
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_WIMAX_NAI"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xa1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetWimaxNai(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1870
    :sswitch_4e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_WIMAX_NAI_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1872
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1873
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1874
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_54

    .line 1875
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v124, v3

    check-cast v124, [Ljava/lang/String;

    .line 1876
    .restart local v124    # "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v124

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_29
    move-object/from16 v0, v124

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_52

    .line 1878
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v124, v79

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    add-int/lit8 v79, v79, 0x1

    goto :goto_29

    .line 1880
    :cond_52
    move-object/from16 v0, v124

    move-object/from16 v1, v112

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1884
    .end local v79    # "i":I
    .end local v124    # "strArr":[Ljava/lang/String;
    :goto_2a
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_53

    .line 1885
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1888
    :cond_53
    monitor-enter v112

    .line 1889
    :try_start_2d
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1890
    monitor-exit v112

    goto/16 :goto_0

    :catchall_2b
    move-exception v3

    monitor-exit v112
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2b

    throw v3

    .line 1882
    :cond_54
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1896
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1897
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_WIFI_DRX_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xae

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getDrxInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1902
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_50
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_WIFI_DRX_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1904
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1905
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1907
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_56

    .line 1908
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v83, v3

    check-cast v83, [I

    .line 1909
    .local v83, "intArr":[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v83

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_2b
    move-object/from16 v0, v83

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_55

    .line 1911
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v83, v79

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    add-int/lit8 v79, v79, 0x1

    goto :goto_2b

    .line 1913
    :cond_55
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getDrxInfo"

    move-object/from16 v0, v83

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1919
    .end local v79    # "i":I
    .end local v83    # "intArr":[I
    :goto_2c
    monitor-enter v112

    .line 1920
    :try_start_2e
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1921
    monitor-exit v112

    goto/16 :goto_0

    :catchall_2c
    move-exception v3

    monitor-exit v112
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2c

    throw v3

    .line 1915
    :cond_56
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1926
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1927
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_POWER_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xb2

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetPowerInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1932
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_52
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_POWER_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1934
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1935
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1936
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_58

    .line 1937
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v83, v3

    check-cast v83, [I

    .line 1938
    .restart local v83    # "intArr":[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v83

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_2d
    move-object/from16 v0, v83

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_57

    .line 1940
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v83, v79

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    add-int/lit8 v79, v79, 0x1

    goto :goto_2d

    .line 1942
    :cond_57
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPowerInfo"

    move-object/from16 v0, v83

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1947
    .end local v79    # "i":I
    .end local v83    # "intArr":[I
    :goto_2e
    monitor-enter v112

    .line 1948
    :try_start_2f
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1949
    monitor-exit v112

    goto/16 :goto_0

    :catchall_2d
    move-exception v3

    monitor-exit v112
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2d

    throw v3

    .line 1944
    :cond_58
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1952
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1953
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_59

    .line 1954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1956
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v29

    .line 1960
    .local v29, "IMEI":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMEI xxxxxxxxxxxxxxx"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1963
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMEI"

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    monitor-enter v112

    .line 1965
    :try_start_30
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1966
    monitor-exit v112

    goto/16 :goto_0

    :catchall_2e
    move-exception v3

    monitor-exit v112
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2e

    throw v3

    .line 1972
    .end local v29    # "IMEI":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_54
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1973
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v30, 0x0

    .line 1974
    .local v30, "IMEISV":Ljava/lang/String;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_5b

    .line 1975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v126

    .line 1976
    .local v126, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-nez v126, :cond_5a

    .line 1977
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v126

    .line 1979
    :cond_5a
    move-object/from16 v0, v126

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_5b

    .line 1980
    check-cast v126, Lcom/android/internal/telephony/PhoneProxy;

    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v126, v3

    check-cast v126, Lcom/android/internal/telephony/PhoneBase;

    .line 1981
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    check-cast v126, Lcom/android/internal/telephony/PhoneBase;

    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/telephony/PhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v30

    .line 1989
    :cond_5b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMEISV xxxxxxxxxxxxxxxx"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1992
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMEISV"

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    monitor-enter v112

    .line 1994
    :try_start_31
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 1995
    monitor-exit v112

    goto/16 :goto_0

    :catchall_2f
    move-exception v3

    monitor-exit v112
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2f

    throw v3

    .line 1998
    .end local v30    # "IMEISV":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_55
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2001
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_5c

    .line 2002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2004
    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v31

    .line 2006
    .local v31, "MEID":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_MEID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2008
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getMEID"

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    monitor-enter v112

    .line 2010
    :try_start_32
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2011
    monitor-exit v112

    goto/16 :goto_0

    :catchall_30
    move-exception v3

    monitor-exit v112
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_30

    throw v3

    .line 2014
    .end local v31    # "MEID":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_56
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2015
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_5d

    .line 2016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2018
    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPRIVersion()Ljava/lang/String;

    move-result-object v33

    .line 2019
    .local v33, "PRI":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_PRI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2021
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPRI"

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    monitor-enter v112

    .line 2023
    :try_start_33
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2024
    monitor-exit v112

    goto/16 :goto_0

    :catchall_31
    move-exception v3

    monitor-exit v112
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_31

    throw v3

    .line 2027
    .end local v33    # "PRI":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2028
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v34

    .line 2029
    .local v34, "PRL":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_PRL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPRL"

    move-object/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    monitor-enter v112

    .line 2033
    :try_start_34
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2034
    monitor-exit v112

    goto/16 :goto_0

    :catchall_32
    move-exception v3

    monitor-exit v112
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_32

    throw v3

    .line 2037
    .end local v34    # "PRL":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2038
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v32

    .line 2039
    .local v32, "MIN":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_CDMAMIN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2041
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCDMAMIN"

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    monitor-enter v112

    .line 2043
    :try_start_35
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2044
    monitor-exit v112

    goto/16 :goto_0

    :catchall_33
    move-exception v3

    monitor-exit v112
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_33

    throw v3

    .line 2047
    .end local v32    # "MIN":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_59
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2048
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v28

    .line 2049
    .local v28, "ICCSN":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_ICCSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2051
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getICCSN"

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    monitor-enter v112

    .line 2053
    :try_start_36
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2054
    monitor-exit v112

    goto/16 :goto_0

    :catchall_34
    move-exception v3

    monitor-exit v112
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_34

    throw v3

    .line 2060
    .end local v28    # "ICCSN":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5a
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_ATR_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ba

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getAtrInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2065
    :sswitch_5b
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_ATR_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_5f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2067
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2068
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2069
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_60

    .line 2070
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getAtrInfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :goto_2f
    monitor-enter v112

    .line 2078
    :try_start_37
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2079
    monitor-exit v112

    goto/16 :goto_0

    :catchall_35
    move-exception v3

    monitor-exit v112
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_35

    throw v3

    .line 2073
    :cond_60
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    .line 2074
    .local v45, "atrInfo":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_61

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_ATR_INFO_DONE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_61
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getAtrInfo"

    move-object/from16 v0, v45

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 2085
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "atrInfo":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2086
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v67, 0x0

    .line 2087
    .local v67, "desiredPowerState":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_62

    .line 2088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v121

    .line 2090
    .local v121, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v121, :cond_62

    .line 2091
    invoke-virtual/range {v121 .. v121}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v67

    .line 2094
    .end local v121    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_62
    const/16 v125, 0x0

    .line 2095
    .local v125, "strDesiredPowerState":Ljava/lang/String;
    if-eqz v67, :cond_63

    .line 2096
    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v125

    .line 2098
    :cond_63
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_DESIRED_POWER_STATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v125

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2100
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "DesiredPowerState"

    move-object/from16 v0, v125

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    monitor-enter v112

    .line 2102
    :try_start_38
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2103
    monitor-exit v112

    goto/16 :goto_0

    :catchall_36
    move-exception v3

    monitor-exit v112
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_36

    throw v3

    .line 2106
    .end local v67    # "desiredPowerState":Ljava/lang/Boolean;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v125    # "strDesiredPowerState":Ljava/lang/String;
    :sswitch_5d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2107
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_64

    .line 2108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2110
    :cond_64
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getAccountInfos()[Landroid/os/Parcelable;

    move-result-object v35

    .line 2119
    .local v35, "accInfos":[Landroid/os/Parcelable;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "AccountInfos"

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2120
    monitor-enter v112

    .line 2121
    :try_start_39
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2122
    monitor-exit v112

    goto/16 :goto_0

    :catchall_37
    move-exception v3

    monitor-exit v112
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_37

    throw v3

    .line 2127
    .end local v35    # "accInfos":[Landroid/os/Parcelable;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6bf

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetGPSOneMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2130
    :sswitch_5f
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_65

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_GPS_ONE_MODE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_65
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2132
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2133
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2134
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_66

    .line 2135
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "GetGpsOneMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    :goto_30
    monitor-enter v112

    .line 2143
    :try_start_3a
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2144
    monitor-exit v112

    goto/16 :goto_0

    :catchall_38
    move-exception v3

    monitor-exit v112
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_38

    throw v3

    .line 2138
    :cond_66
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v26, v3, v4

    .line 2139
    .local v26, "Enable":I
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "GetGpsOneMode"

    move/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_30

    .line 2147
    .end local v26    # "Enable":I
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_60
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2148
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 2149
    .local v27, "Gpsarg":Landroid/os/Bundle;
    const-string v3, "gps"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v76

    .line 2150
    .local v76, "gpsOneMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6c1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v76

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetGPSOneMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2153
    .end local v27    # "Gpsarg":Landroid/os/Bundle;
    .end local v76    # "gpsOneMode":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_61
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_67

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_GPS_ONE_MODE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_67
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2155
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2156
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2157
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_68

    .line 2158
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_68
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "SetGpsOneMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    monitor-enter v112

    .line 2162
    :try_start_3b
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2163
    monitor-exit v112

    goto/16 :goto_0

    :catchall_39
    move-exception v3

    monitor-exit v112
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_39

    throw v3

    .line 2168
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_62
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2169
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2170
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaVoiceCampedOperator"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaVoiceCampedOperator()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$900(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2171
    monitor-enter v112

    .line 2172
    :try_start_3c
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2173
    monitor-exit v112

    goto/16 :goto_0

    :catchall_3a
    move-exception v3

    monitor-exit v112
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3a

    throw v3

    .line 2178
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_63
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2179
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2180
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaSfEuimid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaSfEuimid()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    monitor-enter v112

    .line 2182
    :try_start_3d
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2183
    monitor-exit v112

    goto/16 :goto_0

    :catchall_3b
    move-exception v3

    monitor-exit v112
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3b

    throw v3

    .line 2188
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_64
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2189
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2190
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaCallFlashCode"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaCallFlashCode()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1100(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2191
    monitor-enter v112

    .line 2192
    :try_start_3e
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2193
    monitor-exit v112

    goto/16 :goto_0

    :catchall_3c
    move-exception v3

    monitor-exit v112
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3c

    throw v3

    .line 2198
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_65
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2199
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/os/Bundle;

    .line 2200
    .local v41, "arg_set_internal_data_enable_for_mip_screen":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2201
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setInternalDataEnabledForHtcCdmaMIPScreen"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const-string v6, "setInternalDataEnabledForHtcCdmaMIPScreen"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->setInternalDataEnabledForHtcCdmaMIPScreen(Z)Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1200(Lcom/android/internal/telephony/HtcTelephonyInternal;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2203
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_69

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_INTERNAL_DATA_ENABLE_FOR_MIP_SCREEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    :cond_69
    monitor-enter v112

    .line 2205
    :try_start_3f
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2206
    monitor-exit v112

    goto/16 :goto_0

    :catchall_3d
    move-exception v3

    monitor-exit v112
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3d

    throw v3

    .line 2211
    .end local v41    # "arg_set_internal_data_enable_for_mip_screen":Landroid/os/Bundle;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_66
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_NAME_OMA_DM_ENABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2214
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "arg1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v73

    .line 2215
    .local v73, "enable_from_setOmaDmEnabled":Z
    const/16 v66, 0x0

    .line 2217
    .local v66, "dct":Lcom/android/internal/telephony/dataconnection/DcTracker;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_6a

    .line 2218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2221
    :cond_6a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 2222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v36

    .line 2223
    .local v36, "activePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v36, :cond_6b

    .line 2228
    .end local v36    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_6b
    if-eqz v66, :cond_6c

    .line 2234
    :goto_31
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2235
    monitor-enter v112

    .line 2236
    :try_start_40
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2237
    monitor-exit v112

    goto/16 :goto_0

    :catchall_3e
    move-exception v3

    monitor-exit v112
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_3e

    throw v3

    .line 2231
    :cond_6c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "dct is null, please check"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 2244
    .end local v66    # "dct":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v73    # "enable_from_setOmaDmEnabled":Z
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_67
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_ITC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_6d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2246
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "itc_value"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v86

    .line 2247
    .local v86, "itc":I
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6e

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_SET_ITC itc_value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v86

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_6e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ce

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v86

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setITCValue(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2253
    .end local v86    # "itc":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_68
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6f

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_ITC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :cond_6f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2255
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2256
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2257
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_70

    const/16 v123, 0x0

    .line 2258
    .local v123, "status":Z
    :goto_32
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setITC"

    move/from16 v0, v123

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2260
    monitor-enter v112

    .line 2261
    :try_start_41
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2262
    monitor-exit v112

    goto/16 :goto_0

    :catchall_3f
    move-exception v3

    monitor-exit v112
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_3f

    throw v3

    .line 2257
    .end local v123    # "status":Z
    :cond_70
    const/16 v123, 0x1

    goto :goto_32

    .line 2269
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_69
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_71

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_SERIAL_NUMBER_WITH_CHAR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :cond_71
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2271
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v81, 0x0

    .line 2272
    .local v81, "iccid":Ljava/lang/String;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_73

    .line 2273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v126

    .line 2274
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v126, :cond_72

    .line 2275
    invoke-interface/range {v126 .. v126}, Lcom/android/internal/telephony/Phone;->getIccSerialNumberwithChar()Ljava/lang/String;

    move-result-object v81

    .line 2278
    :cond_72
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_SERIAL_NUMBER_WITH_CHAR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2281
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getSimSerialNumberwithChar"

    move-object/from16 v0, v81

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_73
    monitor-enter v112

    .line 2286
    :try_start_42
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2287
    monitor-exit v112

    goto/16 :goto_0

    :catchall_40
    move-exception v3

    monitor-exit v112
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_40

    throw v3

    .line 2291
    .end local v81    # "iccid":Ljava/lang/String;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_ALL_DEVICE_ID_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2294
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyController;->getAllDeviceInfo()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2296
    monitor-enter v112

    .line 2297
    :try_start_43
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2298
    monitor-exit v112

    goto/16 :goto_0

    :catchall_41
    move-exception v3

    monitor-exit v112
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_41

    throw v3

    .line 2304
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2305
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_74

    .line 2306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2309
    :cond_74
    const/16 v95, 0x0

    .line 2310
    .local v95, "mIsIMSregistered":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_76

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_76

    .line 2311
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMS_REGISTERED from ss of ImsPhone"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_75

    const/16 v95, 0x1

    .line 2318
    :goto_33
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_IMS_REGISTERED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v95

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2320
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMSregistered"

    move/from16 v0, v95

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2321
    monitor-enter v112

    .line 2322
    :try_start_44
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2323
    monitor-exit v112

    goto/16 :goto_0

    :catchall_42
    move-exception v3

    monitor-exit v112
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_42

    throw v3

    .line 2312
    :cond_75
    const/16 v95, 0x0

    goto :goto_33

    .line 2314
    :cond_76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->isIMSregistered()Z

    move-result v95

    .line 2315
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMS_REGISTERED from isIMSregistered()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 2328
    .end local v95    # "mIsIMSregistered":Z
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6c
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_77

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "set ril.oobe to 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_77
    const-string v3, "ril.oobe"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_RESET_RIL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_78
    const/4 v3, 0x0

    const-string v4, "reset_ril"

    aput-object v4, v63, v3

    .line 2332
    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v63, v3

    .line 2333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6e2

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2336
    :sswitch_6d
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_79

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_RESET_RIL_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_79
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2339
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2340
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2341
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7a

    const/16 v114, 0x0

    .line 2342
    .local v114, "result":Z
    :goto_34
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "resetRil"

    move/from16 v0, v114

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2344
    monitor-enter v112

    .line 2345
    :try_start_45
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2346
    monitor-exit v112

    goto/16 :goto_0

    :catchall_43
    move-exception v3

    monitor-exit v112
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_43

    throw v3

    .line 2341
    .end local v114    # "result":Z
    :cond_7a
    const/16 v114, 0x1

    goto :goto_34

    .line 2351
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6e
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7b

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_UICC_APP_TYPE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_7b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2354
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2356
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_7d

    .line 2357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v126

    .line 2358
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v126, :cond_7d

    .line 2359
    move-object/from16 v0, v126

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_7c

    .line 2360
    check-cast v126, Lcom/android/internal/telephony/PhoneProxy;

    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v126, v3

    check-cast v126, Lcom/android/internal/telephony/PhoneBase;

    .line 2362
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_7c
    check-cast v126, Lcom/android/internal/telephony/PhoneBase;

    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/telephony/PhoneBase;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v38

    .line 2363
    .local v38, "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getUiccAppType"

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uicc app type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getUiccAppType"

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    .end local v38    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_7d
    monitor-enter v112

    .line 2370
    :try_start_46
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2371
    monitor-exit v112

    goto/16 :goto_0

    :catchall_44
    move-exception v3

    monitor-exit v112
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_44

    throw v3

    .line 2377
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6f
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7e

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_SERVICE_DOMAIN_PREF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_7e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2380
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_80

    .line 2381
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v99

    .line 2382
    .local v99, "mode":I
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7f

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_SET_SERVICE_DOMAIN_PREF mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v99

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :cond_7f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6e6

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v99

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSrvDomainPref(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2386
    .end local v99    # "mode":I
    :cond_80
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2387
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setServiceDomainPref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2388
    monitor-enter v112

    .line 2389
    :try_start_47
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2390
    monitor-exit v112

    goto/16 :goto_0

    :catchall_45
    move-exception v3

    monitor-exit v112
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_45

    throw v3

    .line 2395
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_70
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_81

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_SERVICE_DOMAIN_PREF_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    :cond_81
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2397
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2398
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2399
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "setServiceDomainPref"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_82

    const/4 v4, 0x0

    :goto_35
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2401
    monitor-enter v112

    .line 2402
    :try_start_48
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2403
    monitor-exit v112

    goto/16 :goto_0

    :catchall_46
    move-exception v3

    monitor-exit v112
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_46

    throw v3

    .line 2399
    :cond_82
    const/4 v4, 0x1

    goto :goto_35

    .line 2408
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_71
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_83

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_LTE_BAND_PRIORITY_LIST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ea

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLTESupportedBandPriorityList(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2413
    :sswitch_72
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_84

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_LTE_BAND_PRIORITY_LIST_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_84
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2415
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    const/16 v113, 0x0

    .line 2416
    .local v113, "response":[I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_85

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [I

    if-eqz v3, :cond_85

    .line 2418
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v113, v3

    check-cast v113, [I

    .line 2424
    :goto_36
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2425
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2426
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetLTESupportedBandPriorityList"

    move-object/from16 v0, v113

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2427
    monitor-enter v112

    .line 2428
    :try_start_49
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2429
    monitor-exit v112

    goto/16 :goto_0

    :catchall_47
    move-exception v3

    monitor-exit v112
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_47

    throw v3

    .line 2422
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :cond_85
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_LTE_BAND_PRIORITY_LIST_DONE happen exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 2432
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v113    # "response":[I
    :sswitch_73
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_86

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_LTE_BAND_PRIORITY_LIST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_86
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2434
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v52, 0x0

    .line 2435
    .local v52, "band":[I
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-nez v3, :cond_87

    .line 2437
    new-instance v117, Landroid/os/Bundle;

    invoke-direct/range {v117 .. v117}, Landroid/os/Bundle;-><init>()V

    .line 2438
    .local v117, "rst":Landroid/os/Bundle;
    const-string v3, "requestSetLTEBandPriority"

    const/4 v4, 0x0

    move-object/from16 v0, v117

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2439
    move-object/from16 v0, v117

    move-object/from16 v1, v112

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2440
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_LTE_BAND_PRIORITY_LIST bundle is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    monitor-enter v112

    .line 2442
    :try_start_4a
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2443
    monitor-exit v112

    goto/16 :goto_0

    :catchall_48
    move-exception v3

    monitor-exit v112
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_48

    throw v3

    .line 2447
    .end local v117    # "rst":Landroid/os/Bundle;
    :cond_87
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestSetLTEBandPriority"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v52

    .line 2448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ec

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLTEBandPriority([ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2453
    .end local v52    # "band":[I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_74
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_88

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_LTE_BAND_PRIORITY_LIST_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_88
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2455
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2456
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2457
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "requestSetLTEBandPriority"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_89

    const/4 v4, 0x0

    :goto_37
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2458
    monitor-enter v112

    .line 2459
    :try_start_4b
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2460
    monitor-exit v112

    goto/16 :goto_0

    :catchall_49
    move-exception v3

    monitor-exit v112
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_49

    throw v3

    .line 2457
    :cond_89
    const/4 v4, 0x1

    goto :goto_37

    .line 2465
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_75
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2466
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    if-eqz v3, :cond_8a

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_8a

    .line 2467
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "profile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v108

    .line 2468
    .local v108, "profile":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6f5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v108

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2470
    .end local v108    # "profile":[Ljava/lang/String;
    :cond_8a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2471
    monitor-enter v112

    .line 2472
    :try_start_4c
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2473
    monitor-exit v112

    goto/16 :goto_0

    :catchall_4a
    move-exception v3

    monitor-exit v112
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_4a

    throw v3

    .line 2477
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_76
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2478
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2479
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2480
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getPdnSettings2"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2481
    monitor-enter v112

    .line 2482
    :try_start_4d
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2483
    monitor-exit v112

    goto/16 :goto_0

    :catchall_4b
    move-exception v3

    monitor-exit v112
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_4b

    throw v3

    .line 2486
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_77
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2487
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    if-eqz v3, :cond_8b

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_8b

    .line 2488
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "profile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v108

    .line 2489
    .restart local v108    # "profile":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6f7

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v108

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2491
    .end local v108    # "profile":[Ljava/lang/String;
    :cond_8b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2492
    monitor-enter v112

    .line 2493
    :try_start_4e
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2494
    monitor-exit v112

    goto/16 :goto_0

    :catchall_4c
    move-exception v3

    monitor-exit v112
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_4c

    throw v3

    .line 2498
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_78
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2499
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2500
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2501
    monitor-enter v112

    .line 2502
    :try_start_4f
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2503
    monitor-exit v112

    goto/16 :goto_0

    :catchall_4d
    move-exception v3

    monitor-exit v112
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_4d

    throw v3

    .line 2506
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_79
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2507
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    if-eqz v3, :cond_8c

    .line 2508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcLtePdnSetting;->resetPdnForSettingsChange()V

    .line 2510
    :cond_8c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2511
    monitor-enter v112

    .line 2512
    :try_start_50
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2513
    monitor-exit v112

    goto/16 :goto_0

    :catchall_4e
    move-exception v3

    monitor-exit v112
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_4e

    throw v3

    .line 2520
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_EHRPD_DISABLE_CAPABILITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2522
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestSetEhrpdDisableCapability"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v82

    .line 2523
    .local v82, "index_set_ehrpd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7d8

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v82

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2526
    .end local v82    # "index_set_ehrpd":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_EHRPD_DISABLE_CAPABILITY_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2528
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2530
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v119, Landroid/os/Bundle;

    invoke-direct/range {v119 .. v119}, Landroid/os/Bundle;-><init>()V

    .line 2531
    .local v119, "setEhrpdDisableCapResultBundle":Landroid/os/Bundle;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8d

    const/16 v118, 0x1

    .line 2532
    .local v118, "setEhrpdDisableCapResult":Z
    :goto_38
    const-string v3, "requestSetEhrpdDisableCapability"

    move-object/from16 v0, v119

    move/from16 v1, v118

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2533
    move-object/from16 v0, v119

    move-object/from16 v1, v112

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2537
    monitor-enter v112

    .line 2538
    :try_start_51
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2539
    monitor-exit v112

    goto/16 :goto_0

    :catchall_4f
    move-exception v3

    monitor-exit v112
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_4f

    throw v3

    .line 2531
    .end local v118    # "setEhrpdDisableCapResult":Z
    :cond_8d
    const/16 v118, 0x0

    goto :goto_38

    .line 2563
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v119    # "setEhrpdDisableCapResultBundle":Landroid/os/Bundle;
    :sswitch_7c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_EHRPD_DISABLE_CAPABILITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7d6

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2567
    :sswitch_7d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_EHRPD_DISABLE_CAPABILITY_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2569
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2570
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v69, 0x0

    .line 2571
    .local v69, "disable":I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8e

    .line 2572
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v69, v3, v4

    .line 2574
    :cond_8e
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2575
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetEhrpdDisableCapability"

    move/from16 v0, v69

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2578
    monitor-enter v112

    .line 2579
    :try_start_52
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2580
    monitor-exit v112

    goto/16 :goto_0

    :catchall_50
    move-exception v3

    monitor-exit v112
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_50

    throw v3

    .line 2584
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v69    # "disable":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_EHRPD_DEVICE_CAPABILITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7d4

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2588
    :sswitch_7f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_EHRPD_DEVICE_CAPABILITY_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2590
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2591
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v68, 0x0

    .line 2592
    .local v68, "device_cap":I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8f

    .line 2593
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v68, v3, v4

    .line 2595
    :cond_8f
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2598
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetEhrpdDeviceCapability"

    move/from16 v0, v68

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2600
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetEhrpdDisableCapability"

    move/from16 v0, v68

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2603
    monitor-enter v112

    .line 2604
    :try_start_53
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2605
    monitor-exit v112

    goto/16 :goto_0

    :catchall_51
    move-exception v3

    monitor-exit v112
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_51

    throw v3

    .line 2611
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v68    # "device_cap":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_80
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_90

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_ENABLEPS_W2G_HANDOVER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_90
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2614
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_91

    .line 2615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "enable"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enablePS_W2G_Handover(I)V

    .line 2618
    :cond_91
    monitor-enter v112

    .line 2619
    :try_start_54
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2620
    monitor-exit v112

    goto/16 :goto_0

    :catchall_52
    move-exception v3

    monitor-exit v112
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_52

    throw v3

    .line 2623
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_81
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_92

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_ENABLE_REGISTRATION_STATE_WIFI_CALL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_92
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2626
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v72, 0x0

    .line 2627
    .local v72, "enableTo":Z
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_96

    .line 2628
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "on"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v72

    .line 2629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v126

    .line 2631
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_93

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableTo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v72

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_93
    if-eqz v126, :cond_94

    .line 2634
    move-object/from16 v0, v126

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_94

    .line 2635
    check-cast v126, Lcom/android/internal/telephony/PhoneProxy;

    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v126, v3

    check-cast v126, Lcom/android/internal/telephony/PhoneBase;

    .line 2639
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_94
    if-eqz v126, :cond_95

    move-object/from16 v3, v126

    .line 2640
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v72, :cond_97

    const/4 v3, 0x1

    :goto_39
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 2642
    :cond_95
    if-eqz v72, :cond_96

    .line 2643
    check-cast v126, Lcom/android/internal/telephony/PhoneBase;

    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/telephony/PhoneBase;->wifi2GRetry()V

    .line 2647
    :cond_96
    monitor-enter v112

    .line 2648
    :try_start_55
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2649
    monitor-exit v112

    goto/16 :goto_0

    :catchall_53
    move-exception v3

    monitor-exit v112
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_53

    throw v3

    .line 2640
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_97
    const/4 v3, 0x0

    goto :goto_39

    .line 2652
    .end local v72    # "enableTo":Z
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :sswitch_82
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_98

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_IS_DATA_CONNECTIVITY_POSSIBLE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_98
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2655
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v85, 0x0

    .line 2657
    .local v85, "isPossible":Z
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_9a

    .line 2658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v126

    .line 2660
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v126, :cond_99

    .line 2661
    move-object/from16 v0, v126

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_99

    .line 2662
    check-cast v126, Lcom/android/internal/telephony/PhoneProxy;

    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v126, v3

    check-cast v126, Lcom/android/internal/telephony/PhoneBase;

    .line 2666
    .restart local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_99
    invoke-interface/range {v126 .. v126}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v85

    .line 2667
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_9a

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPossible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    .end local v126    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_9a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2671
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "isDataConnectivityPossible"

    move/from16 v0, v85

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2673
    monitor-enter v112

    .line 2674
    :try_start_56
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2675
    monitor-exit v112

    goto/16 :goto_0

    :catchall_54
    move-exception v3

    monitor-exit v112
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_54

    throw v3

    .line 2680
    .end local v85    # "isPossible":Z
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_83
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_ALL_IMSI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2682
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyController;->getAllIMSI()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2684
    monitor-enter v112

    .line 2685
    :try_start_57
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2686
    monitor-exit v112

    goto/16 :goto_0

    :catchall_55
    move-exception v3

    monitor-exit v112
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_55

    throw v3

    .line 2691
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_84
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_LTETxRx_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2693
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_9b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 2694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "networktype"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->networkTypeTorilRadioTechnology(I)I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1400(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    move-result v102

    .line 2695
    .local v102, "networktype":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7da

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v102

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetTxRxInfo(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2697
    .end local v102    # "networktype":I
    :cond_9b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2699
    monitor-enter v112

    .line 2700
    :try_start_58
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2701
    monitor-exit v112

    goto/16 :goto_0

    :catchall_56
    move-exception v3

    monitor-exit v112
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_56

    throw v3

    .line 2705
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_85
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_LTETxRx_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2707
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2708
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2709
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9c

    .line 2710
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getTxRxPowerInfo"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2715
    :goto_3a
    monitor-enter v112

    .line 2716
    :try_start_59
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2717
    monitor-exit v112

    goto/16 :goto_0

    :catchall_57
    move-exception v3

    monitor-exit v112
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_57

    throw v3

    .line 2712
    :cond_9c
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 2720
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_86
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2722
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_9d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_9d

    .line 2723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "networktype"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->networkTypeTorilRadioTechnology(I)I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1400(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    move-result v102

    .line 2724
    .restart local v102    # "networktype":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7dc

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v102

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRfBandInfo(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2726
    .end local v102    # "networktype":I
    :cond_9d
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2728
    monitor-enter v112

    .line 2729
    :try_start_5a
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2730
    monitor-exit v112

    goto/16 :goto_0

    :catchall_58
    move-exception v3

    monitor-exit v112
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_58

    throw v3

    .line 2734
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_87
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2736
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2737
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2738
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9e

    .line 2739
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getRFBandInfo"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2745
    :goto_3b
    monitor-enter v112

    .line 2746
    :try_start_5b
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2747
    monitor-exit v112

    goto/16 :goto_0

    :catchall_59
    move-exception v3

    monitor-exit v112
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_59

    throw v3

    .line 2741
    :cond_9e
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2752
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_88
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_9f

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_SEND_AT_PUSHMAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    :cond_9f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2754
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_a0

    .line 2755
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/os/Bundle;

    .line 2756
    .local v58, "bundleargu":Landroid/os/Bundle;
    const-string v3, "type"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v132

    .line 2757
    .local v132, "type1":I
    const-string v3, "value"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v135

    .line 2758
    .local v135, "value":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_a0

    .line 2759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v132

    move/from16 v1, v135

    invoke-interface {v3, v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 2763
    .end local v58    # "bundleargu":Landroid/os/Bundle;
    .end local v132    # "type1":I
    .end local v135    # "value":I
    :cond_a0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2765
    monitor-enter v112

    .line 2766
    :try_start_5c
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2767
    monitor-exit v112

    goto/16 :goto_0

    :catchall_5a
    move-exception v3

    monitor-exit v112
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_5a

    throw v3

    .line 2772
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_89
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_MULTIRAB_TRAFFIC_THROTTLING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2774
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_a1

    .line 2775
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/os/Bundle;

    .line 2776
    .restart local v58    # "bundleargu":Landroid/os/Bundle;
    const-string v3, "module"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v100

    .line 2777
    .local v100, "module":I
    const-string v3, "mode"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v99

    .line 2778
    .restart local v99    # "mode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 2779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v100

    move/from16 v1, v99

    invoke-interface {v3, v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetMultiRABTrafficThrottling(IILandroid/os/Message;)V

    .line 2782
    .end local v58    # "bundleargu":Landroid/os/Bundle;
    .end local v99    # "mode":I
    .end local v100    # "module":I
    :cond_a1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2783
    monitor-enter v112

    .line 2784
    :try_start_5d
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2785
    monitor-exit v112

    goto/16 :goto_0

    :catchall_5b
    move-exception v3

    monitor-exit v112
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_5b

    throw v3

    .line 2790
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_FAST_DORMANCY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2792
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_a2

    .line 2793
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/os/Bundle;

    .line 2794
    .restart local v58    # "bundleargu":Landroid/os/Bundle;
    const-string v3, "module"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v100

    .line 2795
    .restart local v100    # "module":I
    const-string v3, "mode"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v99

    .line 2796
    .restart local v99    # "mode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_a2

    .line 2797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v100

    move/from16 v1, v99

    invoke-interface {v3, v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetFastDormancy(IILandroid/os/Message;)V

    .line 2801
    .end local v58    # "bundleargu":Landroid/os/Bundle;
    .end local v99    # "mode":I
    .end local v100    # "module":I
    :cond_a2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2802
    monitor-enter v112

    .line 2803
    :try_start_5e
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2804
    monitor-exit v112

    goto/16 :goto_0

    :catchall_5c
    move-exception v3

    monitor-exit v112
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_5c

    throw v3

    .line 2809
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8b
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a3

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_REQUEST_GET_CD_PIN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_a3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2812
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x7e7

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2813
    .restart local v11    # "onCompleted":Landroid/os/Message;
    const/4 v3, 0x0

    const-string v4, "UNIAT"

    aput-object v4, v63, v3

    .line 2814
    const/4 v3, 0x1

    const-string v4, "at@carddetect=1\r"

    aput-object v4, v63, v3

    .line 2815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, v63

    invoke-interface {v3, v0, v11}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2818
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8c
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a4

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_REQUEST_GET_CD_PIN_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_a4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2821
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2822
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2824
    if-eqz v39, :cond_a6

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a6

    .line 2825
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_REQUEST_GET_CD_PIN_DONE ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetCDPin"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2845
    :cond_a5
    :goto_3c
    monitor-enter v112

    .line 2846
    :try_start_5f
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2847
    monitor-exit v112

    goto/16 :goto_0

    :catchall_5d
    move-exception v3

    monitor-exit v112
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_5d

    throw v3

    .line 2828
    :cond_a6
    if-eqz v39, :cond_a9

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_a9

    .line 2829
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v115, v3

    check-cast v115, [Ljava/lang/String;

    .line 2830
    .local v115, "results":[Ljava/lang/String;
    const/16 v116, 0x0

    .line 2831
    .local v116, "ret":I
    const/4 v3, 0x2

    move-object/from16 v0, v115

    array-length v4, v0

    if-eq v3, v4, :cond_a8

    .line 2832
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid result format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v115 .. v115}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_a7
    :goto_3d
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetCDPin"

    move/from16 v0, v116

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2839
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a5

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_REQUEST_GET_CD_PIN_DONE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v116

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 2834
    :cond_a8
    const/4 v3, 0x1

    aget-object v3, v115, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    const/4 v3, 0x1

    aget-object v3, v115, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a7

    .line 2835
    const/4 v3, 0x1

    aget-object v3, v115, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v116

    goto :goto_3d

    .line 2841
    .end local v115    # "results":[Ljava/lang/String;
    .end local v116    # "ret":I
    :cond_a9
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetCDPin"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2842
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a5

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "no result, CMD_REQUEST_GET_CD_PIN_DONE : 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 2851
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8d
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_aa

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_PASS_HOTSPOT_STATE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_aa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2853
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2855
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v78

    .line 2856
    .local v78, "hotspot":I
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_ab

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_PASS_HOTSPOT_STATE hotspot state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v78

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_ab
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 2859
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v127

    .line 2860
    .local v127, "targetPhone1":Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v128

    .line 2861
    .local v128, "targetPhone2":Lcom/android/internal/telephony/Phone;
    if-eqz v127, :cond_ac

    .line 2862
    move-object/from16 v0, v127

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_ac

    .line 2863
    check-cast v127, Lcom/android/internal/telephony/PhoneProxy;

    .end local v127    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v127 .. v127}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v127, v3

    check-cast v127, Lcom/android/internal/telephony/PhoneBase;

    .line 2866
    .restart local v127    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    :cond_ac
    if-eqz v127, :cond_ad

    .line 2867
    check-cast v127, Lcom/android/internal/telephony/PhoneBase;

    .end local v127    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, v127

    iget-object v3, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    move/from16 v0, v78

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestPassHotSpotState(ILandroid/os/Message;)V

    .line 2870
    :cond_ad
    if-eqz v128, :cond_ae

    .line 2871
    move-object/from16 v0, v128

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_ae

    .line 2872
    check-cast v128, Lcom/android/internal/telephony/PhoneProxy;

    .end local v128    # "targetPhone2":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v128 .. v128}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v128, v3

    check-cast v128, Lcom/android/internal/telephony/PhoneBase;

    .line 2875
    .restart local v128    # "targetPhone2":Lcom/android/internal/telephony/Phone;
    :cond_ae
    if-eqz v128, :cond_af

    .line 2876
    check-cast v128, Lcom/android/internal/telephony/PhoneBase;

    .end local v128    # "targetPhone2":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, v128

    iget-object v3, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    move/from16 v0, v78

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestPassHotSpotState(ILandroid/os/Message;)V

    .line 2883
    :cond_af
    :goto_3e
    monitor-enter v112

    .line 2884
    :try_start_60
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2885
    monitor-exit v112

    goto/16 :goto_0

    :catchall_5e
    move-exception v3

    monitor-exit v112
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_5e

    throw v3

    .line 2879
    :cond_b0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_af

    .line 2880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v78

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestPassHotSpotState(ILandroid/os/Message;)V

    goto :goto_3e

    .line 2891
    .end local v78    # "hotspot":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8e
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b1

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "+CMD_GET_LTE_BAND_TYPE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    :cond_b1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2893
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0xda

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2894
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-interface {v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLteBandType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2897
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8f
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b2

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "+CMD_GET_LTE_BAND_TYPE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    :cond_b2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2899
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2900
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2901
    if-eqz v39, :cond_b4

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b4

    .line 2902
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_LTE_BAND_TYPE_DONE ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetLteBandType"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2904
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b3

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "-CMD_GET_LTE_BAND_TYPE_DONE:LTE_BAND_TYPE_INVALID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_b3
    :goto_3f
    monitor-enter v112

    .line 2918
    :try_start_61
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2919
    monitor-exit v112

    goto/16 :goto_0

    :catchall_5f
    move-exception v3

    monitor-exit v112
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_5f

    throw v3

    .line 2906
    :cond_b4
    if-eqz v39, :cond_b5

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_b5

    .line 2908
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "requestGetLteBandType"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2909
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b3

    const-string v4, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-CMD_GET_LTE_BAND_TYPE_DONE:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v6, 0x0

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 2913
    :cond_b5
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetLteBandType"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2914
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b3

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "-CMD_GET_LTE_BAND_TYPE_DONE:LTE_BAND_TYPE_INVALID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 2922
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_90
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b6

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "+CMD_SET_LTE_BAND_TYPE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_b6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2924
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "band"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v89

    .line 2925
    .local v89, "lteband":I
    const/16 v3, 0xdc

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2926
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move/from16 v0, v89

    invoke-interface {v3, v0, v11}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLteBandType(ILandroid/os/Message;)V

    .line 2927
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-CMD_SET_LTE_BAND_TYPE band="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v89

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2930
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v89    # "lteband":I
    .end local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_91
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b7

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "+CMD_SET_LTE_BAND_TYPE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    :cond_b7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2932
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v112, v0

    check-cast v112, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2933
    .restart local v112    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v112

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2934
    if-eqz v39, :cond_b9

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b9

    .line 2935
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_SET_LTE_BAND_TYPE_DONE ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestSetLteBandType"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2941
    :cond_b8
    :goto_40
    monitor-enter v112

    .line 2942
    :try_start_62
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Object;->notifyAll()V

    .line 2943
    monitor-exit v112

    goto/16 :goto_0

    :catchall_60
    move-exception v3

    monitor-exit v112
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_60

    throw v3

    .line 2938
    :cond_b9
    move-object/from16 v0, v112

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestSetLteBandType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2939
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b8

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "-CMD_SET_LTE_BAND_TYPE_DONE:true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 637
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x7d -> :sswitch_14
        0x7e -> :sswitch_15
        0x7f -> :sswitch_16
        0x80 -> :sswitch_18
        0x81 -> :sswitch_19
        0x82 -> :sswitch_1a
        0x83 -> :sswitch_1f
        0x84 -> :sswitch_20
        0x85 -> :sswitch_1d
        0x86 -> :sswitch_1e
        0x88 -> :sswitch_2e
        0x89 -> :sswitch_2f
        0x8a -> :sswitch_30
        0x8b -> :sswitch_31
        0x8c -> :sswitch_32
        0x8d -> :sswitch_36
        0x8e -> :sswitch_33
        0x8f -> :sswitch_36
        0x90 -> :sswitch_34
        0x91 -> :sswitch_36
        0x92 -> :sswitch_35
        0x93 -> :sswitch_36
        0x94 -> :sswitch_37
        0x95 -> :sswitch_38
        0x96 -> :sswitch_1b
        0x97 -> :sswitch_1c
        0x98 -> :sswitch_45
        0x99 -> :sswitch_46
        0x9a -> :sswitch_47
        0x9b -> :sswitch_48
        0x9c -> :sswitch_49
        0x9d -> :sswitch_4a
        0x9e -> :sswitch_4b
        0x9f -> :sswitch_4c
        0xa0 -> :sswitch_4d
        0xa1 -> :sswitch_4e
        0xab -> :sswitch_39
        0xac -> :sswitch_3a
        0xad -> :sswitch_4f
        0xae -> :sswitch_50
        0xaf -> :sswitch_23
        0xb0 -> :sswitch_24
        0xb1 -> :sswitch_51
        0xb2 -> :sswitch_52
        0xb3 -> :sswitch_21
        0xb4 -> :sswitch_22
        0xc8 -> :sswitch_53
        0xc9 -> :sswitch_54
        0xca -> :sswitch_55
        0xcb -> :sswitch_56
        0xcc -> :sswitch_57
        0xcd -> :sswitch_58
        0xce -> :sswitch_59
        0xd6 -> :sswitch_66
        0xd7 -> :sswitch_6b
        0xd9 -> :sswitch_8e
        0xda -> :sswitch_8f
        0xdb -> :sswitch_90
        0xdc -> :sswitch_91
        0x6ae -> :sswitch_3b
        0x6af -> :sswitch_3c
        0x6b0 -> :sswitch_3d
        0x6b1 -> :sswitch_3e
        0x6b2 -> :sswitch_3f
        0x6b3 -> :sswitch_40
        0x6b4 -> :sswitch_41
        0x6b5 -> :sswitch_42
        0x6b6 -> :sswitch_43
        0x6b7 -> :sswitch_44
        0x6b9 -> :sswitch_5a
        0x6ba -> :sswitch_5b
        0x6bc -> :sswitch_5c
        0x6bd -> :sswitch_5d
        0x6be -> :sswitch_5e
        0x6bf -> :sswitch_5f
        0x6c0 -> :sswitch_60
        0x6c1 -> :sswitch_61
        0x6c2 -> :sswitch_62
        0x6c3 -> :sswitch_63
        0x6c4 -> :sswitch_64
        0x6c9 -> :sswitch_65
        0x6ca -> :sswitch_17
        0x6cd -> :sswitch_67
        0x6ce -> :sswitch_68
        0x6d7 -> :sswitch_69
        0x6e1 -> :sswitch_6c
        0x6e2 -> :sswitch_6d
        0x6e4 -> :sswitch_6e
        0x6e5 -> :sswitch_6f
        0x6e6 -> :sswitch_70
        0x6e7 -> :sswitch_8d
        0x6e9 -> :sswitch_71
        0x6ea -> :sswitch_72
        0x6eb -> :sswitch_73
        0x6ec -> :sswitch_74
        0x6ee -> :sswitch_2a
        0x6ef -> :sswitch_2b
        0x6f0 -> :sswitch_2c
        0x6f1 -> :sswitch_2d
        0x6f4 -> :sswitch_75
        0x6f5 -> :sswitch_76
        0x6f6 -> :sswitch_77
        0x6f7 -> :sswitch_78
        0x6f8 -> :sswitch_79
        0x6f9 -> :sswitch_80
        0x6fa -> :sswitch_81
        0x6fc -> :sswitch_6a
        0x6fe -> :sswitch_83
        0x709 -> :sswitch_25
        0x70a -> :sswitch_26
        0x70b -> :sswitch_27
        0x70c -> :sswitch_28
        0x70d -> :sswitch_29
        0x7d3 -> :sswitch_7e
        0x7d4 -> :sswitch_7f
        0x7d5 -> :sswitch_7c
        0x7d6 -> :sswitch_7d
        0x7d7 -> :sswitch_7a
        0x7d8 -> :sswitch_7b
        0x7d9 -> :sswitch_84
        0x7da -> :sswitch_85
        0x7db -> :sswitch_86
        0x7dc -> :sswitch_87
        0x7dd -> :sswitch_88
        0x7de -> :sswitch_89
        0x7df -> :sswitch_8a
        0x7e6 -> :sswitch_8b
        0x7e7 -> :sswitch_8c
        0x7e9 -> :sswitch_82
    .end sparse-switch
.end method
