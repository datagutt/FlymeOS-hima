.class public Lcom/htc/lockscreen/framework/wrapper/ServiceManagerWrapper;
.super Ljava/lang/Object;
.source "ServiceManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
