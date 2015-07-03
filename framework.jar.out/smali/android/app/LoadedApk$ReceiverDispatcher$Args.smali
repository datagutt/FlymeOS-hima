.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurIntent:Landroid/content/Intent;

.field private final mOrdered:Z

.field final synthetic this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 9

    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v0, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v0, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v0}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;I)V

    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    iput-boolean p6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    return-void

    :cond_0
    const/4 v4, 0x2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v7, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-boolean v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    if-eqz v7, :cond_0

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-eqz v10, :cond_2

    :cond_0
    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/16 v10, 0x40

    const-string v12, "broadcastReceiveReg"

    invoke-static {v10, v11, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v7, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v10, Landroid/app/ActivityThread;->PERF_LOG:Z

    if-eqz v10, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v8

    const-string v10, "Perf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v12}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " onReceive:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    :cond_4
    const-wide/16 v10, 0x40

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v10, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {p0, v5}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    :cond_5
    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v11, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v10

    if-nez v10, :cond_3

    :cond_6
    const-wide/16 v10, 0x40

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error receiving broadcast "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method
