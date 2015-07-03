.class final Lcom/android/server/display/MLHDAdapter$MLHDDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "MLHDAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MLHDAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MLHDDevice"
.end annotation


# instance fields
.field private mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I

.field final synthetic this$0:Lcom/android/server/display/MLHDAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MLHDAdapter;Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->this$0:Lcom/android/server/display/MLHDAdapter;

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    iput-object p3, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    iput p4, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mWidth:I

    iput p5, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mHeight:I

    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    const-string v0, "MLHDAdapter"

    const-string v1, "destroyLocked to release surface and native display"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const-string v1, "MLHD"

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0xa0

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
