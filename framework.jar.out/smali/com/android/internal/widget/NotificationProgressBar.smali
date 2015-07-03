.class public Lcom/android/internal/widget/NotificationProgressBar;
.super Landroid/widget/ProgressBar;
.source "NotificationProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationProgressBar"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized setIndeterminate(Z)V
    .locals 7
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mOnlyIndeterminate:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminate:Z

    if-nez v3, :cond_3

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminate:Z

    if-eq p1, v3, :cond_3

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "progress_indeterminate_horizontal_material"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const-string v3, "NotificationProgressBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "re-generate indeterminate drawalbe back:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/NotificationProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
