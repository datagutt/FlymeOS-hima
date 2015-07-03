.class final Landroid/app/ContextImpl$50;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    const-string v4, "cdma"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "ContextImpl"

    const-string v5, "Unable to create Sprint CDMA Connection Service due to IBinder b is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprint/net/cdma/ICdmaConnectionManager;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v4, "ContextImpl"

    const-string v5, "Unable to create Sprint CDMA Connection Service due to IConnectionService s is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sprint/net/cdma/ConnectionManager;

    invoke-direct {v1, v2}, Lcom/sprint/net/cdma/ConnectionManager;-><init>(Lcom/sprint/net/cdma/ICdmaConnectionManager;)V

    if-nez v1, :cond_0

    const-string v4, "ContextImpl"

    const-string v5, "Unable to create Sprint CDMA Connection Service due to ConnectionManager m is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_0
.end method
