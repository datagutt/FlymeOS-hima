.class public interface abstract Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper$UserSwitchObserverIf;
.super Ljava/lang/Object;
.source "UserSwitchObserverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/framework/wrapper/UserSwitchObserverWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserSwitchObserverIf"
.end annotation


# virtual methods
.method public abstract onUserSwitchComplete(I)V
.end method

.method public abstract onUserSwitching(ILandroid/os/IRemoteCallback;)V
.end method
