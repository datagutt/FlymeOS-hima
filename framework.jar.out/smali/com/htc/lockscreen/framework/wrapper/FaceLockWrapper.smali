.class public Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;
.super Ljava/lang/Object;
.source "FaceLockWrapper.java"


# instance fields
.field private mService:Lcom/android/internal/policy/IFaceLockInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/internal/policy/IFaceLockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IFaceLockInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    :cond_0
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerCallback(Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V

    :cond_0
    return-void
.end method

.method public startUi(Landroid/os/IBinder;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V

    :cond_0
    return-void
.end method

.method public stopUi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FaceLockWrapper;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V

    :cond_0
    return-void
.end method
