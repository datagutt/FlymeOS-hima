.class Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
.super Landroid/os/HandlerThread;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAmsCallbackManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method dump()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/util/StringBuilderPrinter;

    invoke-direct {v3, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const-string v4, "MSG: "

    invoke-virtual {v2, v3, v4}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    const-string v2, "HtcAmsCallbackManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "HtcAmsCallbackManager"

    const-string v3, "Log broken..."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpAllThreads()V
    .locals 16

    :try_start_0
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "HtcAmsCallbackManager"

    const-string v13, "Stack trace of system threads:"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Thread;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v12, "Thread "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "HtcAmsCallbackManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/StackTraceElement;

    move-object v2, v9

    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v12, "   "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "HtcAmsCallbackManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v12, "HtcAmsCallbackManager"

    const-string v13, "Log broken..."

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
