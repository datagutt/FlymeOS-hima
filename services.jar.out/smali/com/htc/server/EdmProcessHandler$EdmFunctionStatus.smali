.class Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
.super Ljava/lang/Object;
.source "EdmProcessHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/EdmProcessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmFunctionStatus"
.end annotation


# instance fields
.field private mFinishedTime:J

.field private mLastDuration:J

.field private mLastDurationAfterTimeout:J

.field private final mRequestCode:I

.field private mStartTime:J

.field private mStatus:I

.field final synthetic this$0:Lcom/htc/server/EdmProcessHandler;


# direct methods
.method constructor <init>(Lcom/htc/server/EdmProcessHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->this$0:Lcom/htc/server/EdmProcessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->reset()V

    return-void
.end method

.method private computeDuration()J
    .locals 4

    iget-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    iget-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDuration:J

    iget-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDuration:J

    return-wide v0
.end method

.method private reset()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    iput-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    iput-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    iput-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDuration:J

    iput-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDurationAfterTimeout:J

    return-void
.end method

.method private timeout()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->computeDuration()J

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    return-void
.end method


# virtual methods
.method public executing()Ljava/lang/Runnable;
    .locals 2

    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->reset()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    return-object p0
.end method

.method public finished()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->computeDuration()J

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    return-void
.end method

.method public finishedAfterTimeout()V
    .locals 4

    # getter for: Lcom/htc/server/EdmProcessHandler;->HTC_DEBUG_PROCESSHANDLER:Z
    invoke-static {}, Lcom/htc/server/EdmProcessHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EdmProcessHandler"

    const-string v1, "Internal component attempts to send response after timeout happened!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    iget-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    iget-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDurationAfterTimeout:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    return-void
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    return v0
.end method

.method public run()V
    .locals 4

    # getter for: Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;
    invoke-static {}, Lcom/htc/server/EdmProcessHandler;->access$000()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    # getter for: Lcom/htc/server/EdmProcessHandler;->HTC_DEBUG_PROCESSHANDLER:Z
    invoke-static {}, Lcom/htc/server/EdmProcessHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EdmProcessHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout happened for request code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->timeout()V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    # getter for: Lcom/htc/server/EdmProcessHandler;->HTC_DEBUG_PROCESSHANDLER:Z
    invoke-static {}, Lcom/htc/server/EdmProcessHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EdmProcessHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout for request code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " triggered but it\'s not executing!! Do nothing......"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->this$0:Lcom/htc/server/EdmProcessHandler;

    iget v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    # invokes: Lcom/htc/server/EdmProcessHandler;->getRequestCodeString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/server/EdmProcessHandler;->access$200(Lcom/htc/server/EdmProcessHandler;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->this$0:Lcom/htc/server/EdmProcessHandler;

    iget v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    # invokes: Lcom/htc/server/EdmProcessHandler;->getStatusString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/server/EdmProcessHandler;->access$300(Lcom/htc/server/EdmProcessHandler;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", StartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FinishedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastDurationAfterTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDurationAfterTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
