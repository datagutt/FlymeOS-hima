.class Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;
.super Ljava/lang/Object;
.source "HtcApplicationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HtcApplicationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcApplicationInfoRetriever"
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/HtcApplicationHelper;


# direct methods
.method private constructor <init>(Landroid/media/HtcApplicationHelper;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->this$0:Landroid/media/HtcApplicationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/HtcApplicationHelper;Landroid/media/HtcApplicationHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;-><init>(Landroid/media/HtcApplicationHelper;)V

    return-void
.end method


# virtual methods
.method public currentApplication()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->mPackageName:Ljava/lang/String;

    # getter for: Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/HtcApplicationHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Package Name from Application in main looper :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
