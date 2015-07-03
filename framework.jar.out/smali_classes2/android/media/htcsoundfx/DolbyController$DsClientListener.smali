.class final Landroid/media/htcsoundfx/DolbyController$DsClientListener;
.super Ljava/lang/Object;
.source "DolbyController.java"

# interfaces
.implements Landroid/media/htcsoundfx/dolby/IDsClientEvents;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/htcsoundfx/DolbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DsClientListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyController.DsClientListener"


# instance fields
.field private mOwner:Landroid/media/htcsoundfx/DolbyController;

.field final synthetic this$0:Landroid/media/htcsoundfx/DolbyController;


# direct methods
.method public constructor <init>(Landroid/media/htcsoundfx/DolbyController;Landroid/media/htcsoundfx/DolbyController;)V
    .locals 0

    iput-object p1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->this$0:Landroid/media/htcsoundfx/DolbyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    return-void
.end method


# virtual methods
.method public getProxeyInstance()Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v3, "android.dolby.IDsClientEvents"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "DolbyController.DsClientListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/media/htcutil/HtcMethod;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/media/htcutil/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    const/4 v4, 0x1

    new-array v1, v4, [Landroid/media/htcutil/HtcMethod;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-class v4, Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    invoke-static {v1, v4}, Landroid/media/htcutil/HtcMethod;->initMethods([Landroid/media/htcutil/HtcMethod;Ljava/lang/Class;)V

    invoke-static {p0, v2, p3}, Landroid/media/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Landroid/media/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v4}, Landroid/media/htcsoundfx/DolbyController;->access$200(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v4}, Landroid/media/htcsoundfx/DolbyController;->access$200(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v4

    invoke-static {v4, v2, p3}, Landroid/media/htcutil/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Landroid/media/htcutil/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 6

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/htcsoundfx/DolbyController;->access$000(Landroid/media/htcsoundfx/DolbyController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;
    invoke-static {v2}, Landroid/media/htcsoundfx/DolbyController;->access$300(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/DsClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/htcsoundfx/dolby/DsClient;->getDsVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    const/4 v4, 0x1

    # setter for: Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z
    invoke-static {v2, v4}, Landroid/media/htcsoundfx/DolbyController;->access$402(Landroid/media/htcsoundfx/DolbyController;Z)Z

    const-string v2, "DolbyController.DsClientListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onClientConnected] Ds connected, version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "DolbyController.DsClientListener"

    const-string v4, "[onClientConnected] Ds connected failed, release DsClient"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # invokes: Landroid/media/htcsoundfx/DolbyController;->release()V
    invoke-static {v2}, Landroid/media/htcsoundfx/DolbyController;->access$500(Landroid/media/htcsoundfx/DolbyController;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onClientDisconnected()V
    .locals 3

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/htcsoundfx/DolbyController;->access$000(Landroid/media/htcsoundfx/DolbyController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "DolbyController.DsClientListener"

    const-string v2, "onClientDisconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    const/4 v2, 0x0

    # setter for: Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z
    invoke-static {v0, v2}, Landroid/media/htcsoundfx/DolbyController;->access$402(Landroid/media/htcsoundfx/DolbyController;Z)Z

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z
    invoke-static {v0}, Landroid/media/htcsoundfx/DolbyController;->access$600(Landroid/media/htcsoundfx/DolbyController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DolbyController.DsClientListener"

    const-string v2, "DsClient disconnected unexpectly, DsClient should auto reconnect later"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDsOn(Z)V
    .locals 3

    const-string v0, "DolbyController.DsClientListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDsOn]+ on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0

    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0

    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0

    return-void
.end method
