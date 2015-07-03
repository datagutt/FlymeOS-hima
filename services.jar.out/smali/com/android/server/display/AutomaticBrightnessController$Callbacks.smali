.class interface abstract Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract clampScreenDisplayBrightness(I)I
.end method

.method public abstract debounceButtonLight(F)V
.end method

.method public abstract getBrightnessBaseOnAlgorithm(ILandroid/util/Spline;)F
.end method

.method public abstract getButtonValue(I)I
.end method

.method public abstract getCurrentBrightness()I
.end method

.method public abstract getMappedValue_Hybrid(I[I)I
.end method

.method public abstract isUsingNewBacklightAlgorithm()Z
.end method

.method public abstract setButtonValue(I)V
.end method

.method public abstract setLightSensorLevel(I)V
.end method

.method public abstract updateBrightness(I)V
.end method
