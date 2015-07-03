.class Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;
.super Landroid/os/Handler;
.source "HtcEffectManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/htcsoundfx/HtcEffectManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/htcsoundfx/HtcEffectManagerBase;


# direct methods
.method constructor <init>(Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Landroid/media/htcsoundfx/HtcEffectManagerBase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Landroid/media/htcsoundfx/HtcEffectManagerBase;

    invoke-virtual {v0}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->onMessageBeatsNotify()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->this$0:Landroid/media/htcsoundfx/HtcEffectManagerBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->onPersistProperty(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
