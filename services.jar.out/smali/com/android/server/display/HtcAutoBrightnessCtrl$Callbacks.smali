.class interface abstract Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract cancelAnimation()V
.end method

.method public abstract forceBrightnessUpdate(I)V
.end method

.method public abstract getCurrentBrightness()I
.end method

.method public abstract getManualDisplayBrightness(I)I
.end method

.method public abstract getTargetBrightness()I
.end method

.method public abstract setScreenBrightnessMode(I)V
.end method

.method public abstract setSmoothBacklight(II)V
.end method

.method public abstract setSmoothBacklightForCamera(II)V
.end method
