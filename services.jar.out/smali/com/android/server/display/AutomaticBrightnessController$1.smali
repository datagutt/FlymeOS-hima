.class Lcom/android/server/display/AutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EBI value = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$200()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    move-result-object v1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    float-to-int v4, v4

    invoke-interface {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->setLightSensorLevel(I)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v6

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$700(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADC value = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
