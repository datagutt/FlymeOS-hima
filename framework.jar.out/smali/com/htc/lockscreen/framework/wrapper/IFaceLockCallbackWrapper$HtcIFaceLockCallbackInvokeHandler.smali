.class public interface abstract Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper$HtcIFaceLockCallbackInvokeHandler;
.super Ljava/lang/Object;
.source "IFaceLockCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/framework/wrapper/IFaceLockCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HtcIFaceLockCallbackInvokeHandler"
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract pokeWakelock(I)V
.end method

.method public abstract reportFailedAttempt()V
.end method

.method public abstract unlock()V
.end method
