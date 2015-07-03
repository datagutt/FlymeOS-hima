.class public Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;
.super Ljava/lang/Object;
.source "OnPatternListenerWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;
    }
.end annotation


# instance fields
.field private LOG_PREFIX:Ljava/lang/String;

.field private mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OnPatternListenerWrapper"

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->LOG_PREFIX:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onPatternCleared()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    invoke-interface {v0}, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onPatternStart()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;

    invoke-interface {v0}, Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;->onPatternStart()V

    :cond_0
    return-void
.end method
