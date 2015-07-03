.class public Lcom/android/internal/widget/NotificationActionButton;
.super Landroid/widget/Button;
.source "NotificationActionButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionButton;->isInAllCapsLocale()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionButton;->setAllCaps(Z)V

    return-void
.end method

.method private isInAllCapsLocale()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/utils/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionButton;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionButton;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionButton;->mLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionButton;->isInAllCapsLocale()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionButton;->setAllCaps(Z)V

    :cond_1
    return-void
.end method
