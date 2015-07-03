.class public interface abstract Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayPowerCallbacks"
.end annotation


# virtual methods
.method public abstract acquireSuspendBlocker()V
.end method

.method public abstract clearDelayScreenOn()V
.end method

.method public abstract enableDongleMode(Z)V
.end method

.method public abstract enableMiracastMode(Z)V
.end method

.method public abstract enableMirrorMode(Z)V
.end method

.method public abstract forceEnterSleepMode()V
.end method

.method public abstract getActualScreenOn()Z
.end method

.method public abstract isOOBEDone()Z
.end method

.method public abstract isUsingNewBacklightAlgorithm()Z
.end method

.method public abstract lockType(I)Ljava/lang/String;
.end method

.method public abstract nativeAcquireCpuMode(I)V
.end method

.method public abstract onAngleDetectorReadingDetected()V
.end method

.method public abstract onAngleDetectorTalkingDetected()V
.end method

.method public abstract onDisplayStateChange(I)V
.end method

.method public abstract onProximityNegative()V
.end method

.method public abstract onProximityPositive()V
.end method

.method public abstract onStateChanged()V
.end method

.method public abstract releaseSuspendBlocker()V
.end method

.method public abstract setProximityStateWithScreenOff(Z)V
.end method

.method public abstract setScreenBrightnessMode(I)V
.end method
