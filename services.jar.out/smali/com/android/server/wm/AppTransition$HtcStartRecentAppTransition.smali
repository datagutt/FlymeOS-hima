.class Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcStartRecentAppTransition"
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0x96

.field private static final SCALE_DOWN_DURATION:I = 0xc8


# instance fields
.field private mExcludeFromRecent:Z

.field private mIsHack:Z

.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mIsHack:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mExcludeFromRecent:Z

    return-void
.end method


# virtual methods
.method applyTransition(ZII)Landroid/view/animation/Animation;
    .locals 12

    const/4 v9, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mExcludeFromRecent:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->this$0:Lcom/android/server/wm/AppTransition;

    # getter for: Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wm/AppTransition;->access$000(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;

    move-result-object v5

    if-le p3, p2, :cond_0

    const/16 v3, 0x3e9

    :goto_0
    invoke-static {v5, v3}, Lcom/android/internal/util/RecentAnimationUtil;->getScaleRegion(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, p2

    div-float v2, v3, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, p3

    div-float v4, v3, v5

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/android/server/wm/AppTransition;->computePivot(IF)F
    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->access$100(IF)F

    move-result v5

    iget v3, v8, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/android/server/wm/AppTransition;->computePivot(IF)F
    invoke-static {v3, v4}, Lcom/android/server/wm/AppTransition;->access$100(IF)F

    move-result v6

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->this$0:Lcom/android/server/wm/AppTransition;

    # getter for: Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->access$000(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x10c000b

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    invoke-virtual {v0, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_1
    return-object v0

    :cond_0
    const/16 v3, 0x3ea

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v7, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v10, 0x96

    invoke-virtual {v7, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v0, v7

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method cleanAnimParams()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mIsHack:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mExcludeFromRecent:Z

    return-void
.end method

.method isHack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mIsHack:Z

    return v0
.end method

.method public prepareTransition(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mExcludeFromRecent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mIsHack:Z

    return-void
.end method
