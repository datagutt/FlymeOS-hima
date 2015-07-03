.class public Lcom/htc/widget/FlipDigitalView;
.super Ljava/lang/Object;
.source "FlipDigitalView.java"


# instance fields
.field private mAmPmRes:[I

.field private mAmPmView:Landroid/widget/ImageView;

.field private mCenter:Landroid/widget/ImageView;

.field private mFlipRes:Landroid/content/res/Resources;

.field private mNumberRes:[I

.field private mRoot:Landroid/view/View;

.field private mTens:Landroid/widget/ImageView;

.field private mUnits:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/widget/FlipDigitalView;->mNumberRes:[I

    iput-object p3, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmRes:[I

    iput-object p4, p0, Lcom/htc/widget/FlipDigitalView;->mFlipRes:Landroid/content/res/Resources;

    return-void
.end method

.method private getAmPmDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/FlipDigitalView;->mFlipRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmRes:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getNumberDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0x9

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/FlipDigitalView;->mFlipRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/htc/widget/FlipDigitalView;->mNumberRes:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setAmPm(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/htc/widget/FlipDigitalView;->getAmPmDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHourControls(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_TEN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_UNIT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_CENTER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_AM_PM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    return-void
.end method

.method public setHourDownControls(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_TEN_DOWN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_UNIT_DOWN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_CENTER_DOWN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_AM_PM_DOWN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mAmPmView:Landroid/widget/ImageView;

    return-void
.end method

.method public setHourUpControls(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_TEN_UP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_UNIT_UP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_CENTER_UP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    return-void
.end method

.method public setHourUpNextControls(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_TEN_UP_NEXT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_INIT_UP_NEXT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_HOUR_CENTER_UP_NEXT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    return-void
.end method

.method public setMinuteControls(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_MINUTE_TEN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_MINUTE_UNIT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    return-void
.end method

.method public setMinuteDownControls(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_MINUTE_TEN_DOWN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_MINUTE_UNIT_DOWN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    return-void
.end method

.method public setMinuteUpControls(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_MINUTE_TEN_UP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_MINUTE_UNIT_UP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    return-void
.end method

.method public setMinuteUpNextControls(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_MINUTE_TEN_UP_NEXT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mRoot:Landroid/view/View;

    sget-object v1, Lcom/htc/widget/FlipConsts;->ID_DIGITAL_MINUTE_UNIT_UP_NEXT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    return-void
.end method

.method public setValue(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/htc/widget/FlipDigitalView;->getNumberDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    div-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v1}, Lcom/htc/widget/FlipDigitalView;->getNumberDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    rem-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v1}, Lcom/htc/widget/FlipDigitalView;->getNumberDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mTens:Landroid/widget/ImageView;

    div-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v1}, Lcom/htc/widget/FlipDigitalView;->getNumberDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipDigitalView;->mUnits:Landroid/widget/ImageView;

    rem-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v1}, Lcom/htc/widget/FlipDigitalView;->getNumberDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
