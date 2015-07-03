.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_0

    const-string v0, "CpuWake"

    const-string v1, ">> cpu perf release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuPerfWakeLock()V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_1

    const-string v0, "CpuWake"

    const-string v1, "<< cpu perf release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAdjustCpuRef:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCpuPerfNum:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_2

    const-string v0, "CpuWake"

    const-string v1, ">> cpu count release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCpuPerfNum:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_3

    const-string v0, "CpuWake"

    const-string v1, "<< cpu count release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCpuPerfFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_4

    const-string v0, "CpuWake"

    const-string v1, ">> cpu freq release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCpuPerfFreq:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_5

    const-string v0, "CpuWake"

    const-string v1, "<< cpu freq release"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAdjustCpuRef:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAdjustCpuRef:I

    :cond_6
    return-void
.end method
