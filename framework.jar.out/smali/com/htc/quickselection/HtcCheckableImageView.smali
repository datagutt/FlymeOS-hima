.class public Lcom/htc/quickselection/HtcCheckableImageView;
.super Landroid/widget/CheckedTextView;
.source "HtcCheckableImageView.java"


# static fields
.field private static final ANIMATION_STYLE:I = 0x2

.field private static final NO_ANIMATION:I = 0x2

.field private static final SCREEN_ANIMATION:I = 0x1


# instance fields
.field private final animDuration:I

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field private mScreenPaint:Landroid/graphics/Paint;

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->animDuration:I

    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    iput-boolean v2, p0, Lcom/htc/quickselection/HtcCheckableImageView;->forceMultiply:Z

    iput-boolean v2, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->setupAnimationEnv()V

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->initPadding()V

    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 3

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method initPadding()V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30a0129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingTop()I

    move-result v4

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setPadding(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->forceMultiply:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected setCategoryColor(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setScaleX(F)V

    invoke-virtual {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setScaleY(F)V

    return-void
.end method
