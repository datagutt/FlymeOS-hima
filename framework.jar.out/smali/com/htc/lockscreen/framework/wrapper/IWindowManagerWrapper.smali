.class public Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;
.super Ljava/lang/Object;
.source "IWindowManagerWrapper.java"


# static fields
.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5


# instance fields
.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->getService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    return-void
.end method

.method public static getService()Landroid/view/IWindowManager;
    .locals 1

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public static keyguardGoingAway(Landroid/view/IWindowManager;ZZ)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/IWindowManager;->keyguardGoingAway(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static lockNow(Landroid/view/IWindowManager;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static removeRotationWatcher(Landroid/view/IWindowManager;Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    :cond_0
    return-void
.end method

.method public static watchRotation(Landroid/view/IWindowManager;Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public keyguardGoingAway(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->keyguardGoingAway(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .locals 3

    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeRotationWatcher(Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    :cond_0
    return-void
.end method

.method public watchRotation(Lcom/htc/lockscreen/framework/wrapper/IRotationWatcherWrapper;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/IWindowManagerWrapper;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    :cond_0
    return v0
.end method
