.class public Lcom/htc/lockscreen/framework/wrapper/IRemoteCallbackWrapper;
.super Ljava/lang/Object;
.source "IRemoteCallbackWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/lockscreen/framework/wrapper/IRemoteCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/IRemoteCallbackWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendResult(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/IRemoteCallback;

    invoke-interface {p0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/lockscreen/framework/wrapper/IRemoteCallbackWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendResult fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
