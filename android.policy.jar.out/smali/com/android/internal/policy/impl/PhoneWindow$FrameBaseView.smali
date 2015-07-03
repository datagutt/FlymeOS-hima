.class Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameBaseView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneWindow"

    const-string v1, "generateLayout: thumbnailDrawable:draw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
