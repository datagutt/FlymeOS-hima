.class public Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "IFaceLockCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    invoke-interface {v0}, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;->cancel()V

    :cond_0
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;->pokeWakelock(I)V

    :cond_0
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    invoke-interface {v0}, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;->reportFailedAttempt()V

    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;->mCallback:Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;

    invoke-interface {v0}, Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;->unlock()V

    :cond_0
    return-void
.end method
