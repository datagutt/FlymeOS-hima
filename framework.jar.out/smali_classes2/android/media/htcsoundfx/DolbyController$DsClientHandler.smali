.class Landroid/media/htcsoundfx/DolbyController$DsClientHandler;
.super Landroid/os/Handler;
.source "DolbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/htcsoundfx/DolbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DsClientHandler"
.end annotation


# static fields
.field public static final DS_CLIENT_CREATE:I = 0x1


# instance fields
.field private mOwner:Landroid/media/htcsoundfx/DolbyController;

.field final synthetic this$0:Landroid/media/htcsoundfx/DolbyController;


# direct methods
.method public constructor <init>(Landroid/media/htcsoundfx/DolbyController;Landroid/media/htcsoundfx/DolbyController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;->this$0:Landroid/media/htcsoundfx/DolbyController;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "DolbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/htcsoundfx/DolbyController;->access$000(Landroid/media/htcsoundfx/DolbyController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # invokes: Landroid/media/htcsoundfx/DolbyController;->prepare()V
    invoke-static {v0}, Landroid/media/htcsoundfx/DolbyController;->access$100(Landroid/media/htcsoundfx/DolbyController;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
