.class Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcCpuCtrl"
.end annotation


# instance fields
.field public mFlags:I

.field private mLevel:I

.field public final mLock:Landroid/os/IBinder;

.field public mNotifiedAcquired:Z

.field public mOwnerPid:I

.field public mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;III)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mPackageName:Ljava/lang/String;

    # invokes: Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    invoke-static {p6}, Lcom/android/server/power/PowerManagerService;->access$7100(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    iput p7, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerUid:I

    iput p8, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerPid:I

    iput p9, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLevel:I

    return-void
.end method

.method private dumpLevelIfExist()Ljava/lang/String;
    .locals 4

    const v2, 0xf000

    iget v1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    :sswitch_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->cpuFreqLevelToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->cpuNumLevelToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpLevelIfExist: Skip. mFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getLockLevelString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "CPU_PERF_WAKE_LOCK            "

    goto :goto_0

    :sswitch_1
    const-string v0, "CPU_MAX_FREQ                  "

    goto :goto_0

    :sswitch_2
    const-string v0, "CPU_MIN_FREQ                  "

    goto :goto_0

    :sswitch_3
    const-string v0, "CPU_MAX_NUM                   "

    goto :goto_0

    :sswitch_4
    const-string v0, "CPU_MIN_NUM                   "

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_3
        0x8000 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "PMS"

    const-string v1, "binderDied HCC"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->releaseHtcCpuCtrlInternal(Landroid/os/IBinder;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->access$7300(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V

    return-void
.end method

.method public cpuFreqLevelToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLevel:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown cpu freq level"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CPU_FREQ_LOWEST"

    goto :goto_0

    :pswitch_1
    const-string v0, "CPU_FREQ_LOW"

    goto :goto_0

    :pswitch_2
    const-string v0, "CPU_FREQ_MEDIUM"

    goto :goto_0

    :pswitch_3
    const-string v0, "CPU_FREQ_HIGH"

    goto :goto_0

    :pswitch_4
    const-string v0, "CPU_FREQ_HIGHEST"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public cpuNumLevelToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLevel:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown cpu number level"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CPU_NUM_SINGLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "CPU_NUM_DUAL"

    goto :goto_0

    :pswitch_2
    const-string v0, "CPU_NUM_TRIPLE"

    goto :goto_0

    :pswitch_3
    const-string v0, "CPU_NUM_QUAD"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLevel:I

    return v0
.end method

.method public hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z
    .locals 1

    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerUid:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerPid:I

    if-ne v0, p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSameWorkSource(Landroid/os/WorkSource;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->getLockLevelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->dumpLevelIfExist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ws="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing wake lock package name changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerUid:I

    if-eq v0, p5, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing wake lock uid changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerPid:I

    if-eq v0, p6, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing wake lock pid changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->updateWorkSource(Landroid/os/WorkSource;)V

    iput p5, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerUid:I

    iput p6, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerPid:I

    return-void
.end method

.method public updateWorkSource(Landroid/os/WorkSource;)V
    .locals 1

    # invokes: Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$7100(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method
