.class Landroid/content/BroadcastReceiver$PendingResult$1;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/BroadcastReceiver$PendingResult;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$mgr:Landroid/app/IActivityManager;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;JLandroid/app/IActivityManager;)V
    .locals 0

    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iput-wide p2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$startTime:J

    iput-object p4, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_AM:Z

    if-eqz v0, :cond_0

    const-string v0, "BroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueuedWork<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, v2, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    return-void
.end method
