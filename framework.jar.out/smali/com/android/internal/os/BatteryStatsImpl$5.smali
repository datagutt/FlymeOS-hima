.class Lcom/android/internal/os/BatteryStatsImpl$5;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->handleBatteryStatsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BatSI"

    const-string v7, "S remove"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->sLockObject:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$1100()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "BatSI"

    const-string v8, "Error!!mUidStatsDel = null"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_1
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "BatSI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v4, v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    :try_start_2
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x19

    if-lt v0, v6, :cond_4

    const/4 v0, 0x0

    const-wide/16 v6, 0x64

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    :try_start_4
    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->sLockObject:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$1100()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    if-nez v6, :cond_7

    const-string v6, "BatSI"

    const-string v8, "Error!!mUidStatsDel = null"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BatSI"

    const-string v7, "hBSD R Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$100()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "BatSI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "E remove,size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-lez v5, :cond_a

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->sLockObject:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$1100()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_7
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    if-nez v6, :cond_9

    const-string v6, "BatSI"

    const-string v8, "Error!!mUidStatsDel = null"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    :catchall_2
    move-exception v6

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    :cond_7
    :try_start_9
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-int/lit8 v6, v4, 0x14

    if-lt v3, v6, :cond_8

    :try_start_a
    const-string v6, "BatSI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loop error3 index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_9
    :try_start_b
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_a
    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->sLockObject:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->access$1100()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_c
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$5;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v8, 0x0

    # setter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidStatsDel:Landroid/util/SparseArray;
    invoke-static {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$1202(Lcom/android/internal/os/BatteryStatsImpl;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    monitor-exit v7

    goto/16 :goto_1

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v6

    :catch_1
    move-exception v6

    goto/16 :goto_0

    :catch_2
    move-exception v6

    goto/16 :goto_3
.end method
