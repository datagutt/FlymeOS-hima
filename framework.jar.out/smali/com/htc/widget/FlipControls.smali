.class public Lcom/htc/widget/FlipControls;
.super Ljava/lang/Object;
.source "FlipControls.java"


# static fields
.field private static final DEBUG_FLAG:Z

.field private static final TAG:Ljava/lang/String; = "com.htc.widget.FlipControls"


# instance fields
.field private final ANIMATION_DURATION:I

.field private mAmPm:I

.field private mAmPmRes:[I

.field private mContext:Landroid/content/Context;

.field private mFlipRes:Landroid/content/res/Resources;

.field private mFlipTabHour:Lcom/htc/widget/FlipTabView;

.field private mFlipTabMinute:Lcom/htc/widget/FlipTabView;

.field private mHasUpperCaseKey:Z

.field private mHour:I

.field private mMinute:I

.field private mNumberRes:[I

.field private mOldAmPm:I

.field private mOldHour:I

.field private mOldMinute:I

.field private mRes:Landroid/content/res/Resources;

.field private mRoot:Landroid/view/ViewGroup;

.field private mTabMarginTop:F

.field private mUpCenterX:F

.field private mUpCenterY:F

.field private mUpperCase:Z

.field private mWeekDate:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/widget/FlipControls;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/htc/widget/FlipControls;->ANIMATION_DURATION:I

    iput v1, p0, Lcom/htc/widget/FlipControls;->mHour:I

    iput v1, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    iput v2, p0, Lcom/htc/widget/FlipControls;->mAmPm:I

    iput v1, p0, Lcom/htc/widget/FlipControls;->mOldHour:I

    iput v1, p0, Lcom/htc/widget/FlipControls;->mOldMinute:I

    iput v2, p0, Lcom/htc/widget/FlipControls;->mOldAmPm:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FlipControls;->mUpperCase:Z

    return-void
.end method

.method private applyRotation()V
    .locals 8

    const/4 v2, 0x0

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget v0, p0, Lcom/htc/widget/FlipControls;->mUpCenterY:F

    neg-float v0, v0

    iget v1, p0, Lcom/htc/widget/FlipControls;->mTabMarginTop:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v7, v2, v2, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0xaf

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v7, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    sget-boolean v0, Lcom/htc/widget/FlipControls;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.FlipControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRotation~ mHour:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/FlipControls;->mHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOldHour:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/FlipControls;->mOldHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/htc/widget/FlipControls;->DEBUG_FLAG:Z

    if-eqz v0, :cond_1

    const-string v0, "com.htc.widget.FlipControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRotation~ mMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOldMinute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/FlipControls;->mOldMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/htc/widget/FlipControls;->mOldHour:I

    iget v1, p0, Lcom/htc/widget/FlipControls;->mHour:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/htc/widget/FlipControls;->mOldAmPm:I

    iget v1, p0, Lcom/htc/widget/FlipControls;->mAmPm:I

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/FlipControls;->mFlipTabHour:Lcom/htc/widget/FlipTabView;

    iget v1, p0, Lcom/htc/widget/FlipControls;->mOldHour:I

    iget v2, p0, Lcom/htc/widget/FlipControls;->mHour:I

    iget v3, p0, Lcom/htc/widget/FlipControls;->mAmPm:I

    iget v4, p0, Lcom/htc/widget/FlipControls;->mUpCenterX:F

    iget v5, p0, Lcom/htc/widget/FlipControls;->mUpCenterY:F

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/FlipTabView;->applyRotation(IIIFFLandroid/view/animation/Interpolator;Landroid/view/animation/TranslateAnimation;)V

    iget v0, p0, Lcom/htc/widget/FlipControls;->mHour:I

    iput v0, p0, Lcom/htc/widget/FlipControls;->mOldHour:I

    iget v0, p0, Lcom/htc/widget/FlipControls;->mAmPm:I

    iput v0, p0, Lcom/htc/widget/FlipControls;->mOldAmPm:I

    :cond_3
    iget v0, p0, Lcom/htc/widget/FlipControls;->mOldMinute:I

    iget v1, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/FlipControls;->mFlipTabMinute:Lcom/htc/widget/FlipTabView;

    iget v2, p0, Lcom/htc/widget/FlipControls;->mOldMinute:I

    iget v3, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    iget v4, p0, Lcom/htc/widget/FlipControls;->mUpCenterX:F

    iget v5, p0, Lcom/htc/widget/FlipControls;->mUpCenterY:F

    invoke-virtual/range {v1 .. v7}, Lcom/htc/widget/FlipTabView;->applyRotation(IIFFLandroid/view/animation/Interpolator;Landroid/view/animation/TranslateAnimation;)V

    iget v0, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    iput v0, p0, Lcom/htc/widget/FlipControls;->mOldMinute:I

    :cond_4
    return-void
.end method

.method private clearAnimations(III)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipControls;->mFlipTabHour:Lcom/htc/widget/FlipTabView;

    invoke-virtual {v0, p1, p3}, Lcom/htc/widget/FlipTabView;->clearAnimation(II)V

    iget-object v0, p0, Lcom/htc/widget/FlipControls;->mFlipTabMinute:Lcom/htc/widget/FlipTabView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/FlipTabView;->clearAnimation(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipControls;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FlipControls;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_0
    return-void
.end method

.method private getDigitControls(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    sget-object v4, Lcom/htc/widget/FlipConsts;->DRAWABLE_NUMBER_RESOURCE:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/FlipControls;->mNumberRes:[I

    sget-object v4, Lcom/htc/widget/FlipConsts;->DRAWABLE_AM_PM_RESOURCE:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/FlipControls;->mAmPmRes:[I

    sget-object v4, Lcom/htc/widget/FlipConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/htc/widget/FlipConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v4, Lcom/htc/widget/FlipTabView;

    iget-object v5, p0, Lcom/htc/widget/FlipControls;->mNumberRes:[I

    iget-object v6, p0, Lcom/htc/widget/FlipControls;->mAmPmRes:[I

    iget-object v7, p0, Lcom/htc/widget/FlipControls;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/htc/widget/FlipTabView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipTabHour:Lcom/htc/widget/FlipTabView;

    iget-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipTabHour:Lcom/htc/widget/FlipTabView;

    invoke-virtual {v4, p2}, Lcom/htc/widget/FlipTabView;->setHourControls(Landroid/os/Bundle;)V

    new-instance v4, Lcom/htc/widget/FlipTabView;

    iget-object v5, p0, Lcom/htc/widget/FlipControls;->mNumberRes:[I

    iget-object v6, p0, Lcom/htc/widget/FlipControls;->mAmPmRes:[I

    iget-object v7, p0, Lcom/htc/widget/FlipControls;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/htc/widget/FlipTabView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipTabMinute:Lcom/htc/widget/FlipTabView;

    iget-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipTabMinute:Lcom/htc/widget/FlipTabView;

    invoke-virtual {v4, p2}, Lcom/htc/widget/FlipTabView;->setMinuteControls(Landroid/os/Bundle;)V

    sget-object v4, Lcom/htc/widget/FlipConsts;->BUNDLE_DIMENS_PORT:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/htc/widget/FlipConsts;->BUNDLE_DIMENS_LAND:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v10, :cond_2

    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_CONTAINER_UP_WIDTH:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    div-float/2addr v4, v9

    iput v4, p0, Lcom/htc/widget/FlipControls;->mUpCenterX:F

    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_CONTAINER_UP_HEIGHT:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/FlipControls;->mUpCenterY:F

    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_TAB_UP_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/FlipControls;->mTabMarginTop:F

    :goto_1
    sget-object v4, Lcom/htc/widget/FlipConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/widget/FlipConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    invoke-virtual {p2, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/widget/FlipControls;->mUpperCase:Z

    iput-boolean v10, p0, Lcom/htc/widget/FlipControls;->mHasUpperCaseKey:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/htc/widget/FlipControls;->mRes:Landroid/content/res/Resources;

    iput-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipRes:Landroid/content/res/Resources;

    const-string v4, "com.htc.widget.FlipControls"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDigitControls: Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/FlipControls;->mRes:Landroid/content/res/Resources;

    iput-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipRes:Landroid/content/res/Resources;

    goto/16 :goto_0

    :cond_2
    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_CONTAINER_UP_WIDTH:Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    div-float/2addr v4, v9

    iput v4, p0, Lcom/htc/widget/FlipControls;->mUpCenterX:F

    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_CONTAINER_UP_HEIGHT:Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/FlipControls;->mUpCenterY:F

    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_TAB_UP_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/FlipControls;->mTabMarginTop:F

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_CONTAINER_UP_WIDTH:Ljava/lang/String;

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    div-float/2addr v4, v9

    iput v4, p0, Lcom/htc/widget/FlipControls;->mUpCenterX:F

    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_CONTAINER_UP_HEIGHT:Ljava/lang/String;

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/FlipControls;->mUpCenterY:F

    sget-object v4, Lcom/htc/widget/FlipConsts;->DIMEN_TAB_UP_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p2, v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/FlipControls;->mTabMarginTop:F

    goto :goto_1
.end method


# virtual methods
.method public setControls(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/ViewGroup;)V
    .locals 5

    iput-object p3, p0, Lcom/htc/widget/FlipControls;->mRoot:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/htc/widget/FlipControls;->mContext:Landroid/content/Context;

    :try_start_0
    sget-object v2, Lcom/htc/widget/FlipConsts;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/FlipControls;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, p3, p2}, Lcom/htc/widget/FlipControls;->getDigitControls(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcom/htc/widget/FlipConsts;->ID_WEEK_DATE:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/widget/FlipControls;->mWeekDate:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "com.htc.widget.FlipControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setControls: Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImageDrawable(Ljava/util/Calendar;ZLjava/lang/String;Z)V
    .locals 7

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move v3, v0

    if-eqz p2, :cond_4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    add-int/lit8 v1, v1, 0xc

    :cond_0
    const/4 v3, -0x1

    :cond_1
    :goto_0
    iput v1, p0, Lcom/htc/widget/FlipControls;->mHour:I

    iput v2, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    iput v3, p0, Lcom/htc/widget/FlipControls;->mAmPm:I

    iget v4, p0, Lcom/htc/widget/FlipControls;->mHour:I

    iget v5, p0, Lcom/htc/widget/FlipControls;->mOldHour:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    iget v5, p0, Lcom/htc/widget/FlipControls;->mOldMinute:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/htc/widget/FlipControls;->mAmPm:I

    iget v5, p0, Lcom/htc/widget/FlipControls;->mOldAmPm:I

    if-eq v4, v5, :cond_3

    :cond_2
    iget v4, p0, Lcom/htc/widget/FlipControls;->mOldHour:I

    iget v5, p0, Lcom/htc/widget/FlipControls;->mOldMinute:I

    iget v6, p0, Lcom/htc/widget/FlipControls;->mOldAmPm:I

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/widget/FlipControls;->clearAnimations(III)V

    :cond_3
    if-eqz p4, :cond_5

    invoke-direct {p0}, Lcom/htc/widget/FlipControls;->applyRotation()V

    :goto_1
    invoke-virtual {p0, p3, p1}, Lcom/htc/widget/FlipControls;->setWeekDateText(Ljava/lang/String;Ljava/util/Calendar;)V

    return-void

    :cond_4
    if-nez v1, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipTabHour:Lcom/htc/widget/FlipTabView;

    invoke-virtual {v4, v3}, Lcom/htc/widget/FlipTabView;->setAmPm(I)V

    iget-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipTabHour:Lcom/htc/widget/FlipTabView;

    iget v5, p0, Lcom/htc/widget/FlipControls;->mHour:I

    invoke-virtual {v4, v5}, Lcom/htc/widget/FlipTabView;->setValue(I)V

    iget-object v4, p0, Lcom/htc/widget/FlipControls;->mFlipTabMinute:Lcom/htc/widget/FlipTabView;

    iget v5, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    invoke-virtual {v4, v5}, Lcom/htc/widget/FlipTabView;->setValue(I)V

    iget v4, p0, Lcom/htc/widget/FlipControls;->mHour:I

    iput v4, p0, Lcom/htc/widget/FlipControls;->mOldHour:I

    iget v4, p0, Lcom/htc/widget/FlipControls;->mMinute:I

    iput v4, p0, Lcom/htc/widget/FlipControls;->mOldMinute:I

    iget v4, p0, Lcom/htc/widget/FlipControls;->mAmPm:I

    iput v4, p0, Lcom/htc/widget/FlipControls;->mOldAmPm:I

    goto :goto_1
.end method

.method public setWeekDateText(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 5

    iget-object v1, p0, Lcom/htc/widget/FlipControls;->mWeekDate:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/FlipControls;->mWeekDate:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/widget/FlipControls;->mHasUpperCaseKey:Z

    iget-boolean v4, p0, Lcom/htc/widget/FlipControls;->mUpperCase:Z

    invoke-static {v2, v3, v4}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
