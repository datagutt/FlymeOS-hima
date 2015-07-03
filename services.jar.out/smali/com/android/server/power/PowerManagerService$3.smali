.class Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    return-void
.end method

.method public clearDelayScreenOn()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->delayScreenOn:Z

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "clear flag dso"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1502(Lcom/android/server/power/PowerManagerService;Z)Z

    return-void
.end method

.method public enableDongleMode(Z)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isScreenBright()Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcDongleMode;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcDongleMode;

    move-result-object v2

    const-string v3, "enableDongleMode"

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)I

    move-result v5

    const/16 v6, 0xa

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/power/HtcDongleMode;->getCtrlWakeLockState(Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$4602(Lcom/android/server/power/PowerManagerService;I)I

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v6, 0x3e8

    move v5, v4

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;JIII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enableMiracastMode(Z)V
    .locals 3

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableMiracastMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updateUserActivityEventLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4102(Z)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableMirrorMode(Z)V
    .locals 3

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableMirrorMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updateUserActivityEventLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4102(Z)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forceEnterSleepMode()V
    .locals 7

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "force ESM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;JIII)V

    return-void
.end method

.method public getActualScreenOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isActualScreenOnInternal()Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public isOOBEDone()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "persist.sys.pms.oobe.done"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isOOBEDoneInternal()Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    goto :goto_0
.end method

.method public isUsingNewBacklightAlgorithm()Z
    .locals 1

    # getter for: Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$3600()Z

    move-result v0

    return v0
.end method

.method public lockType(I)Ljava/lang/String;
    .locals 1

    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$3500()Lcom/android/server/power/HtcPMSExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$3500()Lcom/android/server/power/HtcPMSExtension;

    invoke-static {p1}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "???"

    goto :goto_0
.end method

.method public nativeAcquireCpuMode(I)V
    .locals 3

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquire CM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuMode(I)V
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$4800(I)V

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PMS"

    const-string v1, "Acquire CM end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onAngleDetectorReadingDetected()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mADTalkingDetected:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3402(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "onADRD:disable force screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;JI)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v7

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAngleDetectorTalkingDetected()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mADTalkingDetected:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$3402(Lcom/android/server/power/PowerManagerService;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayStateChange(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisplayStateChange to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    if-eq v3, p1, :cond_2

    iput p1, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    if-ne p1, v0, :cond_3

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2302(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;Z)V

    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_5

    :goto_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->screenStateNotifier(Z)V
    invoke-static {v2, v0}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;Z)V

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->checkIfOOBEStatusFinished(Z)Z
    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->startMonitorOOBEStatus()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)V

    :goto_2
    return-void

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsActualScreenOn:Z
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2302(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;Z)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->clearMonitorOOBEStatus()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->clearMonitorOOBEStatus()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->clearTurnOnScreenOnceFlag()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_2
.end method

.method public onProximityNegative()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1502(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->cancelPsensorNearMonitorMsg()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "onPN:disable force screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;JI)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setForceScreenOnWhenNear(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;Z)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v7

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProximityPositive()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1502(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSuspendBlocker()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public setProximityStateWithScreenOff(Z)V
    .locals 3

    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proximity With ScreenOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetProximityStateWithScreenOff(Z)V
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$3800(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->clearForceScreenOnFlag()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->clearTurnOnScreenOnceFlag()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)V

    :cond_1
    return-void
.end method

.method public setScreenBrightnessMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$3702(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x20

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
