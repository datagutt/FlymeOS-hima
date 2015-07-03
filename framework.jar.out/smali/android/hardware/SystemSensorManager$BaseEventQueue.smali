.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final mFirstEvent:Landroid/util/SparseBooleanArray;

.field protected final mManager:Landroid/hardware/SystemSensorManager;

.field private final mScratch:[F

.field protected final mSensorAccuracies:Landroid/util/SparseIntArray;

.field private nSensorEventQueue:J


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    invoke-direct {p0, p0, v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    return-void
.end method

.method private disableSensor(Landroid/hardware/Sensor;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(JI)I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    const-string v2, "SensorManager"

    const-string v3, "BaseEventQueue::disableSensor: Significant Motion"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_2
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const/4 v4, 0x0

    invoke-static {v2, v3, p2, v4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeListenerSensor(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method private dispose(Z)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(J)V

    iput-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    :cond_2
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;IIILjava/lang/String;)I
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(JIIII)I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    const/16 v0, 0x11

    if-ne v7, v0, :cond_2

    const-string v0, "SensorManager"

    const-string v1, "BaseEventQueue::enableSensor: Significant Motion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_2
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p5, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeListenerSensor(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method private static native nativeDestroySensorEventQueue(J)V
.end method

.method private static native nativeDisableSensor(JI)I
.end method

.method private static native nativeEnableSensor(JIIII)I
.end method

.method private static native nativeFlushSensor(J)I
.end method

.method private native nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)J
.end method

.method private static native nativeListenerSensor(JLjava/lang/String;I)V
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;IIILjava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    invoke-direct/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;IIILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    if-lez p3, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;IIILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, v3, p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;ZLjava/lang/String;)Z

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_0
.end method

.method protected abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected abstract dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()I
    .locals 4

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(J)I

    move-result v0

    return v0
.end method

.method public hasSensors()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllSensors(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    # getter for: Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public removeSensor(Landroid/hardware/Sensor;ZLjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method
