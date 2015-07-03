.class Lcom/android/server/display/HtcAngleDetector$1;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAngleDetector;


# direct methods
.method constructor <init>(Lcom/android/server/display/HtcAngleDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v11, v17, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v13, v17, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v15, v17, v18

    mul-float v17, v11, v11

    mul-float v18, v13, v13

    add-float v17, v17, v18

    mul-float v18, v15, v15

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$900(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$900(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0xc8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    div-float v18, v11, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1102(Lcom/android/server/display/HtcAngleDetector;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    div-float v18, v13, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1202(Lcom/android/server/display/HtcAngleDetector;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    div-float v18, v15, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1302(Lcom/android/server/display/HtcAngleDetector;I)I

    move-result v16

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1400()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    aput v4, v17, v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1600()[I

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    aput v12, v17, v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1700()[I

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    aput v14, v17, v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1800()[I

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    aput v16, v17, v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    mul-float v19, v11, v11

    mul-float v20, v15, v15

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, angleBuffer: xAngle, yAngle, zAngle, gravity, pointer = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_1
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v17

    sub-int v9, v17, v8

    if-ltz v9, :cond_2

    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1600()[I

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1700()[I

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1800()[I

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1400()[F

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_2
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1600()[I

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1700()[I

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1800()[I

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1400()[F

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    rem-int/lit8 v17, v17, 0xa

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1502(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2300(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v18

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$2502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$2700(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$2700(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2300(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "HtcAngleDetector"

    const-string v18, "mGSL.onSC: screen off in reading at start."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$3200(Lcom/android/server/display/HtcAngleDetector;III)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$2302(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isShaking(F)Z
    invoke-static {v0, v4}, Lcom/android/server/display/HtcAngleDetector;->access$3300(Lcom/android/server/display/HtcAngleDetector;F)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3602(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3900(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4000(Lcom/android/server/display/HtcAngleDetector;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4300(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4300(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$3200(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3600(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mGSL.onSC: x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v12}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v14}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", z="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", gravity="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # operator++ for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4608(Lcom/android/server/display/HtcAngleDetector;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4600(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4700(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isSameZAngle(I)Z
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAngleDetector;->access$4800(Lcom/android/server/display/HtcAngleDetector;I)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "HtcAngleDetector"

    const-string v18, "mGSL.onSC: reading detected. turning on."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3900(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4000(Lcom/android/server/display/HtcAngleDetector;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getType()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v5, v17, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v6, v17, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v7, v17, v18

    mul-float v17, v5, v5

    mul-float v18, v6, v6

    add-float v17, v17, v18

    mul-float v18, v7, v7

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5300()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v18

    aput v10, v17, v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5500()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v18

    aput v5, v17, v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5600()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v18

    aput v6, v17, v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5700()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v18

    aput v7, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech,  gyroBuffer: gyroX, gyroY, gyroZ, omegaMagnitude, pointer = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_4
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v8, v0, :cond_16

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v17

    sub-int v9, v17, v8

    if-ltz v9, :cond_15

    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5500()[F

    move-result-object v19

    aget v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5600()[F

    move-result-object v19

    aget v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5700()[F

    move-result-object v19

    aget v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5300()[F

    move-result-object v19

    aget v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4900(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # operator++ for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4508(Lcom/android/server/display/HtcAngleDetector;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4500(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5000(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_11

    const-string v17, "HtcAngleDetector"

    const-string v18, "mGSL.onSC: talking detected. turning off."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4600(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4500(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_14

    :cond_13
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGSL.onSC: reset talking/reading counter and flag."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    goto/16 :goto_3

    :cond_15
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5500()[F

    move-result-object v19

    add-int/lit8 v20, v9, 0xa

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5600()[F

    move-result-object v19

    add-int/lit8 v20, v9, 0xa

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5700()[F

    move-result-object v19

    add-int/lit8 v20, v9, 0xa

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5300()[F

    move-result-object v19

    add-int/lit8 v20, v9, 0xa

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_16
    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    rem-int/lit8 v17, v17, 0xa

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5402(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5100(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2300(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_17

    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mGyro.onSC:, M="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", z="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", GyroAwake="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$4900(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", screen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", PickupInTalking="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isGyroShakeAwake()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5900(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_18

    const-string v17, "HtcAngleDetector"

    const-string v18, "mGyro.onSC: Gyro shaking detected. turning on."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3900(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4000(Lcom/android/server/display/HtcAngleDetector;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isGyroAwakeMove()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$6000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v20

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isSameAngle(III)Z
    invoke-static/range {v17 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$6100(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const-string v17, "HtcAngleDetector"

    const-string v18, "mGyro.onSC: Gyro awake. turning on."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3900(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4000(Lcom/android/server/display/HtcAngleDetector;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->sendDelayScreenOnStateAfterEndCall(I)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4900(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isGyroTalkingMove()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$6200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v20

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z
    invoke-static/range {v17 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_20

    const-string v17, "HtcAngleDetector"

    const-string v18, "mGyro.onSC: Gyro talking. turning off."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isGyroTalkingMove()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$6200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v20

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z
    invoke-static/range {v17 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v20

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z
    invoke-static/range {v17 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_24

    const-string v17, "HtcAngleDetector"

    const-string v18, "mGyro.onSC: Gyro talking. turning off.(mIsPickupInTalking)"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
