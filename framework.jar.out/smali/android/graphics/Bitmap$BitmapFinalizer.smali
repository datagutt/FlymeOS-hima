.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private mBitmapSize:I

.field private final mNativeAllocationByteCount:I

.field private final mNativeBitmap:J

.field private mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;


# direct methods
.method constructor <init>(JI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    iput-wide p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    iput p3, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/graphics/Bitmap$BitmapFinalizer;Landroid/graphics/Bitmap$BitmapStackTrace;)Landroid/graphics/Bitmap$BitmapStackTrace;
    .locals 0

    iput-object p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    return-object p1
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap$BitmapFinalizer;)I
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/Bitmap$BitmapFinalizer;I)I
    .locals 0

    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    return p1
.end method


# virtual methods
.method public finalize()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Landroid/graphics/Bitmap;->sLockStackTraces:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    const/4 v2, 0x1

    # invokes: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->access$400(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getDumpAllBitmapStackTrace()Z

    move-result v0

    if-eqz v0, :cond_3

    # getter for: Landroid/graphics/Bitmap;->sLockStackTraces:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_2

    # getter for: Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;
    invoke-static {}, Landroid/graphics/Bitmap;->access$500()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;
    invoke-static {}, Landroid/graphics/Bitmap;->access$500()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    # getter for: Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    # -= operator for: Landroid/graphics/Bitmap;->sBitmapSize:I
    invoke-static {v0}, Landroid/graphics/Bitmap;->access$720(I)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_4

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    :cond_4
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->access$800(J)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v0

    if-eqz v0, :cond_6

    # getter for: Landroid/graphics/Bitmap;->sLockStackTraces:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    const/4 v2, 0x1

    # invokes: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->access$400(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    :cond_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_6
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getDumpAllBitmapStackTrace()Z

    move-result v0

    if-eqz v0, :cond_8

    # getter for: Landroid/graphics/Bitmap;->sLockStackTraces:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_7

    # getter for: Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;
    invoke-static {}, Landroid/graphics/Bitmap;->access$500()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_7

    # getter for: Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;
    invoke-static {}, Landroid/graphics/Bitmap;->access$500()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_8
    # getter for: Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    # -= operator for: Landroid/graphics/Bitmap;->sBitmapSize:I
    invoke-static {v0}, Landroid/graphics/Bitmap;->access$720(I)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_9

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    :cond_9
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->access$800(J)V

    goto :goto_0

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v1

    if-eqz v1, :cond_b

    # getter for: Landroid/graphics/Bitmap;->sLockStackTraces:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    const/4 v3, 0x1

    # invokes: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->access$400(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    :cond_a
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :cond_b
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getDumpAllBitmapStackTrace()Z

    move-result v1

    if-eqz v1, :cond_d

    # getter for: Landroid/graphics/Bitmap;->sLockStackTraces:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v2, :cond_c

    # getter for: Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;
    invoke-static {}, Landroid/graphics/Bitmap;->access$500()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_c

    # getter for: Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;
    invoke-static {}, Landroid/graphics/Bitmap;->access$500()Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_c
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :cond_d
    # getter for: Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/graphics/Bitmap;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    # -= operator for: Landroid/graphics/Bitmap;->sBitmapSize:I
    invoke-static {v2}, Landroid/graphics/Bitmap;->access$720(I)I

    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v1, :cond_e

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    :cond_e
    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->access$800(J)V

    throw v0

    :catchall_7
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    :catchall_8
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v0

    :catchall_9
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    throw v0
.end method
