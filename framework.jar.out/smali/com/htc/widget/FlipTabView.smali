.class public Lcom/htc/widget/FlipTabView;
.super Ljava/lang/Object;
.source "FlipTabView.java"


# instance fields
.field private final ANIMATION_DURATION:I

.field private mAmPm:I

.field private mAmPmRes:[I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mClearRunnable:Ljava/lang/Runnable;

.field private mClockWeatherClockTabDownRes:I

.field private mClockWeatherClockTabShadow:I

.field private mClockWeatherClockTabUpRes:I

.field private mDigital:Lcom/htc/widget/FlipDigitalView;

.field private mDigitalDown:Lcom/htc/widget/FlipDigitalView;

.field private mDigitalNext:Lcom/htc/widget/FlipDigitalView;

.field private mDigitalUp:Lcom/htc/widget/FlipDigitalView;

.field private mDownContainer:Landroid/view/ViewGroup;

.field private mDownTab:Landroid/widget/ImageView;

.field private mFlipClock:Landroid/view/View;

.field private mFlipRes:Landroid/content/res/Resources;

.field private mHandler:Landroid/os/Handler;

.field private mHour:I

.field private mMask:Landroid/widget/ImageView;

.field private mNumberRes:[I

.field private mTab:Landroid/widget/ImageView;

.field private mUpContainer:Landroid/view/ViewGroup;

.field private mUpNext:Landroid/view/ViewGroup;

.field private mUpTab:Landroid/widget/ImageView;

.field private mUpTabContainer:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/htc/widget/FlipTabView;->ANIMATION_DURATION:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/FlipTabView;->mHour:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/FlipTabView;->mAmPm:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/widget/FlipTabView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/FlipTabView$1;-><init>(Lcom/htc/widget/FlipTabView;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/htc/widget/FlipTabView$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/FlipTabView$2;-><init>(Lcom/htc/widget/FlipTabView;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mClearRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iput-object p3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iput-object p4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/FlipTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/FlipTabView;->endAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/FlipTabView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    return-object v0
.end method

.method private endAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    iget v1, p0, Lcom/htc/widget/FlipTabView;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    iget v1, p0, Lcom/htc/widget/FlipTabView;->mAmPm:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/FlipDigitalView;->setAmPm(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mClearRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getRotationDown(FLandroid/view/animation/Interpolator;)Lcom/htc/widget/Rotate3dAnimation;
    .locals 10

    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/widget/Rotate3dAnimation;

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v5, 0x439b0000    # 310.0f

    move v3, p1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    invoke-virtual {v0, v8, v9}, Lcom/htc/widget/Rotate3dAnimation;->setStartOffset(J)V

    invoke-virtual {v0, v8, v9}, Lcom/htc/widget/Rotate3dAnimation;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/Rotate3dAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, p2}, Lcom/htc/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private getRotationUp(FFLandroid/view/animation/Interpolator;)Lcom/htc/widget/Rotate3dAnimation;
    .locals 7

    new-instance v0, Lcom/htc/widget/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x439b0000    # 310.0f

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/Rotate3dAnimation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/Rotate3dAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, p3}, Lcom/htc/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private setHourDigitControls(Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setHourControls(Landroid/os/Bundle;)V

    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setHourUpControls(Landroid/os/Bundle;)V

    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setHourDownControls(Landroid/os/Bundle;)V

    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setHourUpNextControls(Landroid/os/Bundle;)V

    return-void
.end method

.method private setHourTabControls(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "left_up_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "left_down_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mDownContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "left_up_next"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "hour_mask"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "left_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "left_up_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "left_up_tab_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpTabContainer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "left_down_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    const-string v1, "clock_weather_clock_tab_up_left"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabUpRes:I

    const-string v1, "clock_weather_clock_tab_down_left"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabDownRes:I

    return-void
.end method

.method private setMinuteTabControls(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_up_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_down_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mDownContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_up_next"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "minute_mask"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_up_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_up_tab_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpTabContainer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_down_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    const-string v1, "clock_weather_clock_tab_up_right"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabUpRes:I

    const-string v1, "clock_weather_clock_tab_down_right"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabDownRes:I

    return-void
.end method

.method private startAimation()V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabShadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpTabContainer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabUpRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabUpRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabDownRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public applyRotation(IIFFLandroid/view/animation/Interpolator;Landroid/view/animation/TranslateAnimation;)V
    .locals 8

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/FlipTabView;->applyRotation(IIIFFLandroid/view/animation/Interpolator;Landroid/view/animation/TranslateAnimation;)V

    return-void
.end method

.method public applyRotation(IIIFFLandroid/view/animation/Interpolator;Landroid/view/animation/TranslateAnimation;)V
    .locals 2

    iput p2, p0, Lcom/htc/widget/FlipTabView;->mHour:I

    iput p3, p0, Lcom/htc/widget/FlipTabView;->mAmPm:I

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p3}, Lcom/htc/widget/FlipDigitalView;->setAmPm(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    invoke-direct {p0}, Lcom/htc/widget/FlipTabView;->startAimation()V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p4, p5, p6}, Lcom/htc/widget/FlipTabView;->getRotationUp(FFLandroid/view/animation/Interpolator;)Lcom/htc/widget/Rotate3dAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDownContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p4, p6}, Lcom/htc/widget/FlipTabView;->getRotationDown(FLandroid/view/animation/Interpolator;)Lcom/htc/widget/Rotate3dAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    invoke-virtual {v0, p7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public clearAnimation(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/FlipTabView;->clearAnimation(II)V

    return-void
.end method

.method public clearAnimation(II)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDownContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/FlipDigitalView;->setAmPm(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setAmPm(I)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/FlipTabView;->mAmPm:I

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setAmPm(I)V

    return-void
.end method

.method public setHourControls(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "clock_weather_clock_tab_shadow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabShadow:I

    invoke-direct {p0, p1}, Lcom/htc/widget/FlipTabView;->setHourDigitControls(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/FlipTabView;->setHourTabControls(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMinuteControls(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "clock_weather_clock_tab_shadow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabShadow:I

    invoke-virtual {p0, p1}, Lcom/htc/widget/FlipTabView;->setMinuteDigitControls(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/FlipTabView;->setMinuteTabControls(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMinuteDigitControls(Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setMinuteControls(Landroid/os/Bundle;)V

    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setMinuteUpControls(Landroid/os/Bundle;)V

    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setMinuteDownControls(Landroid/os/Bundle;)V

    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setMinuteUpNextControls(Landroid/os/Bundle;)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/FlipTabView;->mHour:I

    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    return-void
.end method
