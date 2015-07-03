.class Lcom/android/server/display/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

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

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v1

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$1200(Lcom/android/server/display/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v5, "XAN-DPC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mProximityListener.onSensorChanged: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    const-string v4, "NEAR"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;JZ)V

    :cond_1
    return-void

    :cond_2
    const-string v4, "FAR"

    goto :goto_0
.end method
