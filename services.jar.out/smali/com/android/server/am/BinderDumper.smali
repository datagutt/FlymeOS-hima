.class public Lcom/android/server/am/BinderDumper;
.super Ljava/lang/Object;
.source "BinderDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BinderDumper$TimeOutNotifier;,
        Lcom/android/server/am/BinderDumper$TimeOutCallback;,
        Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BinderDumper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBinderTransactions(Ljava/io/File;)V
    .locals 14

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    const-string v11, "BinderDumper"

    const-string v12, "dumpBinderTransactions(), file is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;

    invoke-direct {v3}, Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v8, Lcom/android/server/am/BinderDumper$TimeOutNotifier;

    const-wide/16 v12, 0xa

    invoke-direct {v8, v3, v12, v13}, Lcom/android/server/am/BinderDumper$TimeOutNotifier;-><init>(Lcom/android/server/am/BinderDumper$TimeOutCallback;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/am/BinderDumper$TimeOutNotifier;->start()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd kk:mm:ss"

    invoke-direct {v6, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    const/4 v12, 0x1

    invoke-direct {v11, p0, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DUMP BINDER INFO START at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v11, "/sys/kernel/debug/binder/failed_transaction_log"

    invoke-static {v11, v1, v3}, Lcom/android/server/am/BinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;)V

    const-string v11, "/sys/kernel/debug/binder/transaction_log"

    invoke-static {v11, v1, v3}, Lcom/android/server/am/BinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;)V

    const-string v11, "/sys/kernel/debug/binder/transactions"

    invoke-static {v11, v1, v3}, Lcom/android/server/am/BinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;)V

    const-string v11, "/sys/kernel/debug/binder/stats"

    invoke-static {v11, v1, v3}, Lcom/android/server/am/BinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;)V

    const-string v11, "/sys/kernel/debug/binder/state"

    invoke-static {v11, v1, v3}, Lcom/android/server/am/BinderDumper;->dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/server/am/BinderDumper$TimeOutNotifier;->cancel()V

    :cond_2
    if-eqz v1, :cond_7

    :try_start_6
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DUMP BINDER INFO END at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_1
    move-object v2, v3

    move-object v7, v8

    move-object v5, v6

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v11

    move-object v9, v10

    :goto_2
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception v11

    goto :goto_1

    :catchall_0
    move-exception v11

    move-object v9, v10

    :goto_3
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :goto_4
    throw v11

    :catch_2
    move-exception v4

    move-object v10, v9

    :goto_5
    :try_start_b
    const-string v11, "BinderDumper"

    const-string v12, "[dumpBinderTransactions] exception"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/server/am/BinderDumper$TimeOutNotifier;->cancel()V

    :cond_3
    if-eqz v0, :cond_6

    :try_start_c
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DUMP BINDER INFO END at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v11

    goto/16 :goto_0

    :catch_4
    move-exception v11

    move-object v9, v10

    :goto_6
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v11

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    move-object v9, v10

    :goto_7
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :goto_8
    throw v11

    :catchall_2
    move-exception v11

    move-object v10, v9

    :goto_9
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/server/am/BinderDumper$TimeOutNotifier;->cancel()V

    :cond_4
    if-eqz v0, :cond_5

    :try_start_11
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DUMP BINDER INFO END at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    :goto_a
    throw v11

    :catch_6
    move-exception v12

    move-object v9, v10

    :goto_b
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_a

    :catch_7
    move-exception v12

    goto :goto_a

    :catchall_3
    move-exception v11

    move-object v9, v10

    :goto_c
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    :goto_d
    throw v11

    :catch_8
    move-exception v11

    goto/16 :goto_1

    :catch_9
    move-exception v12

    goto/16 :goto_4

    :catch_a
    move-exception v12

    goto :goto_8

    :catch_b
    move-exception v12

    goto :goto_a

    :catch_c
    move-exception v12

    goto :goto_d

    :catchall_4
    move-exception v11

    goto :goto_c

    :catch_d
    move-exception v12

    goto :goto_b

    :catchall_5
    move-exception v11

    move-object v2, v3

    move-object v10, v9

    goto :goto_9

    :catchall_6
    move-exception v11

    move-object v2, v3

    move-object v7, v8

    move-object v10, v9

    goto :goto_9

    :catchall_7
    move-exception v11

    move-object v2, v3

    move-object v7, v8

    move-object v10, v9

    move-object v5, v6

    goto :goto_9

    :catchall_8
    move-exception v11

    move-object v2, v3

    move-object v7, v8

    move-object v5, v6

    goto :goto_9

    :catchall_9
    move-exception v11

    move-object v2, v3

    move-object v7, v8

    move-object v5, v6

    move-object v0, v1

    goto :goto_9

    :catchall_a
    move-exception v11

    goto :goto_9

    :catchall_b
    move-exception v11

    goto :goto_7

    :catch_e
    move-exception v11

    goto :goto_6

    :catch_f
    move-exception v4

    move-object v2, v3

    move-object v10, v9

    goto/16 :goto_5

    :catch_10
    move-exception v4

    move-object v2, v3

    move-object v7, v8

    move-object v10, v9

    goto/16 :goto_5

    :catch_11
    move-exception v4

    move-object v2, v3

    move-object v7, v8

    move-object v10, v9

    move-object v5, v6

    goto/16 :goto_5

    :catch_12
    move-exception v4

    move-object v2, v3

    move-object v7, v8

    move-object v5, v6

    goto/16 :goto_5

    :catch_13
    move-exception v4

    move-object v2, v3

    move-object v7, v8

    move-object v5, v6

    move-object v0, v1

    goto/16 :goto_5

    :catchall_c
    move-exception v11

    goto/16 :goto_3

    :catch_14
    move-exception v11

    goto/16 :goto_2

    :cond_5
    move-object v9, v10

    goto :goto_a

    :cond_6
    move-object v9, v10

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    move-object v7, v8

    move-object v9, v10

    move-object v5, v6

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static dumpTransactionFiles(Ljava/lang/String;Ljava/io/BufferedWriter;Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;->isTimeout()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/am/BinderDumper;->throwTimoutException()V

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {p2}, Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;->isTimeout()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/server/am/BinderDumper;->throwTimoutException()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    throw v4

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_4
    return-void

    :catch_1
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private static throwTimoutException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Dump binder info timeout"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
