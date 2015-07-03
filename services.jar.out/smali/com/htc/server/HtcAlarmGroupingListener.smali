.class public Lcom/htc/server/HtcAlarmGroupingListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAlarmGroupingListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;,
        Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;,
        Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;
    }
.end annotation


# static fields
.field private static final GROUP_ALARM:I = 0x2

.field private static final GROUP_NONE:I = 0x0

.field private static final GROUP_NORMAL:I = 0x1

.field private static final MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final MSG_ATTACH_APPLICATION:I = 0x1

.field private static final MSG_GOING_TO_SLEEP:I = 0x3

.field private static final MSG_TOP_APP_CHANGED:I = 0x2

.field private static final MSG_WAKING_UP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HtcAlarmGroupingListener"


# instance fields
.field private mAlarmGroupPids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

.field private mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

.field mInterestingProcesses:[Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

.field private mIsSleeping:Z

.field private mWorkingThread:Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    iput-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mWorkingThread:Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;

    iput-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    new-instance v1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    const-string v2, "com.skype.raider"

    invoke-direct {v1, v2}, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    const-string v3, "jp.naver.line.android"

    invoke-direct {v2, v3}, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mInterestingProcesses:[Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mAlarmGroupPids:Ljava/util/HashSet;

    iput-boolean v5, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mIsSleeping:Z

    iput-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    new-instance v0, Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;

    const-string v1, "HtcAlarmGroupingListener"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;-><init>(Lcom/htc/server/HtcAlarmGroupingListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mWorkingThread:Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mWorkingThread:Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;

    invoke-virtual {v0}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;->start()V

    new-instance v0, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mWorkingThread:Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;

    invoke-virtual {v1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;-><init>(Lcom/htc/server/HtcAlarmGroupingListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    return-void
.end method


# virtual methods
.method doAttachApplication(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 9

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mInterestingProcesses:[Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    iget-object v6, v5, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mProcName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v5

    :cond_2
    iget v6, v5, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    iget v7, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    if-ne v6, v7, :cond_3

    move-object v2, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_7

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_5

    iget v6, v1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    iget v7, v2, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    if-eq v6, v7, :cond_6

    :cond_5
    const-string v6, "PID reused"

    invoke-virtual {p0, v2, v8, v8, v6}, Lcom/htc/server/HtcAlarmGroupingListener;->updateEntryStatus(Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;IILjava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_0

    iget v6, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    const/4 v7, 0x2

    const-string v8, "process attached"

    invoke-virtual {p0, v1, v6, v7, v8}, Lcom/htc/server/HtcAlarmGroupingListener;->updateEntryStatus(Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;IILjava/lang/String;)V

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_6

    iget v6, v1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    if-eqz v6, :cond_6

    iget v6, v1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    iget v7, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    if-eq v6, v7, :cond_6

    const-string v6, "new process attached"

    invoke-virtual {p0, v1, v8, v8, v6}, Lcom/htc/server/HtcAlarmGroupingListener;->updateEntryStatus(Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;IILjava/lang/String;)V

    goto :goto_2
.end method

.method doGoingToSleep()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mIsSleeping:Z

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    iget-object v1, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    iget v1, v1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    const/4 v2, 0x2

    const-string v3, "sleeping"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/server/HtcAlarmGroupingListener;->updateEntryStatus(Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method doTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mInterestingProcesses:[Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mProcName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v5

    :cond_0
    iget v6, v5, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mGroup:I

    if-ne v6, v9, :cond_1

    move-object v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_3

    iget v6, v2, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    const/4 v7, 0x2

    const-string v8, "background"

    invoke-virtual {p0, v2, v6, v7, v8}, Lcom/htc/server/HtcAlarmGroupingListener;->updateEntryStatus(Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;IILjava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v6, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mIsSleeping:Z

    if-nez v6, :cond_4

    iget v6, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    const-string v7, "foreground"

    invoke-virtual {p0, v1, v6, v9, v7}, Lcom/htc/server/HtcAlarmGroupingListener;->updateEntryStatus(Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;IILjava/lang/String;)V

    :cond_4
    iput-object v1, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    return-void
.end method

.method doWakingUp()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mIsSleeping:Z

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    iget-object v1, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mCurTopEntry:Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;

    iget v1, v1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    const/4 v2, 0x1

    const-string v3, "waking up"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/server/HtcAlarmGroupingListener;->updateEntryStatus(Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGoingToSleep()V
    .locals 3

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onWakingUp()V
    .locals 3

    iget-object v0, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mHandler:Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateEntryStatus(Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;IILjava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :goto_0
    iput p3, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mGroup:I

    if-eqz v0, :cond_6

    if-ne p3, v5, :cond_7

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcAlarmGroupingListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mProcName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to timer group for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mAlarmGroupPids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "HtcAlarmGroupingListener"

    const-string v5, "Timer group list size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mAlarmGroupPids:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mAlarmGroupPids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "  Timer group:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mAlarmGroupPids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    iget v4, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mGroup:I

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget p2, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    iput v7, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    goto/16 :goto_0

    :pswitch_1
    iget v4, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mGroup:I

    if-eq v4, v8, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput p2, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    goto/16 :goto_0

    :pswitch_2
    iget v4, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mGroup:I

    if-eq v4, v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput p2, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    goto/16 :goto_0

    :cond_4
    const-string v4, "HtcAlarmGroupingListener"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v7, p2, v8}, Lcom/htc/utils/HtcCGroupUtil;->setCgroupPolicy(III)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_8

    const-string v4, "HtcAlarmGroupingListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mProcName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from timer group for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener;->mAlarmGroupPids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v7, p2, v7}, Lcom/htc/utils/HtcCGroupUtil;->setCgroupPolicy(III)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
