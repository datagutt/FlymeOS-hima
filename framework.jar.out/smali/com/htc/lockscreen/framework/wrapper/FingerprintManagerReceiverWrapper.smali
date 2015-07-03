.class public Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;
.super Landroid/service/fingerprint/FingerprintManagerReceiver;
.source "FingerprintManagerReceiverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManagerReceiver;-><init>()V

    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;

    return-void
.end method


# virtual methods
.method public onAcquired(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;->onAcquired(I)V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;->onError(I)V

    :cond_0
    return-void
.end method

.method public onProcessed(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;->mHandler:Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper$HtcFingerprintManagerReceiverInvokeHandler;->onProcessed(I)V

    :cond_0
    return-void
.end method
