.class public interface abstract Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper$OnPatternListenerIf;
.super Ljava/lang/Object;
.source "OnPatternListenerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/framework/wrapper/OnPatternListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPatternListenerIf"
.end annotation


# virtual methods
.method public abstract onPatternCellAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPatternCleared()V
.end method

.method public abstract onPatternDetected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPatternStart()V
.end method
