.class public Lcom/htc/lockscreen/framework/wrapper/ViewWrapper;
.super Ljava/lang/Object;
.source "ViewWrapper.java"


# static fields
.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_SEARCH:I = 0x2000000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAccessibilityFocus(Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_0
    return-void
.end method
