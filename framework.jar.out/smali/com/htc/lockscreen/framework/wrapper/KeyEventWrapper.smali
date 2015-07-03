.class public Lcom/htc/lockscreen/framework/wrapper/KeyEventWrapper;
.super Ljava/lang/Object;
.source "KeyEventWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConfirmKey(Landroid/view/KeyEvent;I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    :cond_0
    return v0
.end method
