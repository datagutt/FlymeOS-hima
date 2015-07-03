.class public Lcom/htc/widget/AnalogControls;
.super Ljava/lang/Object;
.source "AnalogControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/AnalogControls$1;,
        Lcom/htc/widget/AnalogControls$AnalogRes;
    }
.end annotation


# static fields
.field private static final DEBUG_FLAG:Z

.field private static final TAG:Ljava/lang/String; = "com.htc.widget.AnalogControls"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmPmColorDay:I

.field private mAmPmColorNight:I

.field private mAmPmOfDay:[Ljava/lang/CharSequence;

.field private mAnalogRes:Landroid/content/res/Resources;

.field private mAnaloglType:I

.field private mCellSizeHeight:I

.field private mCenterLine:Landroid/widget/TextView;

.field private mCenterLineSplit:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field public mCoverHandDay:Landroid/graphics/drawable/Drawable;

.field public mCoverHandNight:Landroid/graphics/drawable/Drawable;

.field private mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

.field public mDialDay:Landroid/graphics/drawable/Drawable;

.field public mDialNight:Landroid/graphics/drawable/Drawable;

.field private mDialPanel:Landroid/widget/ImageView;

.field private mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

.field private mFullThreshold:I

.field private mFullThresholdLand:I

.field private mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

.field private mHasUpperCaseKey:Z

.field public mHourHandDay:Landroid/graphics/drawable/Drawable;

.field public mHourHandNight:Landroid/graphics/drawable/Drawable;

.field public mMinuteHandDay:Landroid/graphics/drawable/Drawable;

.field public mMinuteHandNight:Landroid/graphics/drawable/Drawable;

.field private mMixDateColorDay:I

.field private mMixDateColorNight:I

.field private mRes:Landroid/content/res/Resources;

.field private mRoot:Landroid/view/View;

.field public mSecondHandDay:Landroid/graphics/drawable/Drawable;

.field public mSecondHandNight:Landroid/graphics/drawable/Drawable;

.field private mSeperator:Ljava/lang/String;

.field private mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

.field private mSmallThreshold:I

.field private mSmallThresholdLand:I

.field private mSupportLand:Z

.field private mTimeSunRise:I

.field private mTimeSunSet:I

.field private mUpperCase:Z

.field private mWeekDate:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/AnalogControls;->mAnaloglType:I

    iput v1, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    iput v1, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    iput v1, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    return-void
.end method

.method private getAmPmString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getAnalogRes(III)Lcom/htc/widget/AnalogControls$AnalogRes;
    .locals 3

    sget-boolean v0, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.AnalogControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnalogRes: small ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,full="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-le p1, p3, :cond_3

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDateString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    const-string v1, "MMM d"

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/AnalogControls;->mHasUpperCaseKey:Z

    iget-boolean v3, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    invoke-static {v1, v2, v3}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    invoke-static {p2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getFullRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/AnalogControls$AnalogRes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;-><init>(Lcom/htc/widget/AnalogControls$1;)V

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_HOUR_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_MINUTE_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_SECOND_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_COVER_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_HOUR_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_MINUTE_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_SECOND_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_COVER_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_DIAL_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_FULL_DIAL_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mFullRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    goto :goto_0
.end method

.method private getHalfRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/AnalogControls$AnalogRes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;-><init>(Lcom/htc/widget/AnalogControls$1;)V

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_HOUR_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_MINUTE_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SECOND_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_COVER_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_HOUR_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_MINUTE_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SECOND_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_COVER_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_DIAL_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_DIAL_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mHalfRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    goto :goto_0
.end method

.method private getParentControls(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 12

    sget-object v9, Lcom/htc/widget/AnalogConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :try_start_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/htc/widget/AnalogConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_DIAL_PANEL:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    :cond_0
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_WEEK_DATE:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mWeekDate:Landroid/widget/TextView;

    :cond_1
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_CENTER_LINE:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    :cond_2
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_CENTER_LINE_SPLIT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    :cond_3
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ID_AM_PM:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    :cond_4
    sget-object v9, Lcom/htc/widget/AnalogConsts;->ARRAY_AM_PM_OF_DAY:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    :cond_5
    sget-object v9, Lcom/htc/widget/AnalogConsts;->STRING_SEPERATOR:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/widget/AnalogControls;->mSeperator:Ljava/lang/String;

    sget-object v9, Lcom/htc/widget/AnalogConsts;->COLOR_AM_PM_DAY:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mAmPmColorDay:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->COLOR_AM_PM_NIGHT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mAmPmColorNight:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->COLOR_MIX_DATE_DAY:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mMixDateColorDay:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->COLOR_MIX_DATE_NIGHT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mMixDateColorNight:I

    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_THRESHOLD:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mSmallThreshold:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_THRESHOLD:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mFullThreshold:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_THRESHOLD:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mSmallThresholdLand:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_THRESHOLD:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mFullThresholdLand:I

    :goto_1
    sget-object v9, Lcom/htc/widget/AnalogConsts;->INT_SUN_RISE:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->INT_SUN_SET:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->INT_CELL_SIZE_HEIGHT:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    sget-boolean v9, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    if-eqz v9, :cond_6

    const-string v9, "com.htc.widget.AnalogControls"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sun rise="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,sun set="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cell size height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/AnalogControls;->mCellSizeHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :catch_0
    move-exception v6

    iput-object p1, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    const-string v9, "com.htc.widget.AnalogControls"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getParentControls: Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iput-object p1, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    goto/16 :goto_0

    :cond_8
    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_THRESHOLD:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mSmallThreshold:I

    sget-object v9, Lcom/htc/widget/AnalogConsts;->DIMEN_FULL_THRESHOLD:Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/AnalogControls;->mFullThreshold:I

    goto/16 :goto_1
.end method

.method private getSmallRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/AnalogControls$AnalogRes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;-><init>(Lcom/htc/widget/AnalogControls$1;)V

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_HOUR_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_MINUTE_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_SECOND_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_COVER_HAND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_HOUR_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_MINUTE_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_SECOND_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_COVER_HAND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1602(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1702(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1802(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_DIAL_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DRAWABLE_SMALL_DIAL_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$902(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_SMALL_MARGIN_BOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1002(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1102(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_TOP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1202(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_PADDING_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1302(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_AMPM_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1402(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mSmallRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    sget-object v1, Lcom/htc/widget/AnalogConsts;->DIMEN_HALF_CENTER_LINE_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v0, v1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1502(Lcom/htc/widget/AnalogControls$AnalogRes;I)I

    goto :goto_0
.end method

.method private getWeekString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    const-string v1, "EE"

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/AnalogControls;->mHasUpperCaseKey:Z

    iget-boolean v3, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    invoke-static {v1, v2, v3}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPanelRes(Lcom/htc/widget/AnalogControls$AnalogRes;Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$100(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mHourHandDay:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mMinuteHandDay:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$300(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mSecondHandDay:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$400(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mCoverHandDay:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->hourHandNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$500(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mHourHandNight:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->minuteHandNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$600(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mMinuteHandNight:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->secondHandNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$700(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mSecondHandNight:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->coverHandNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$800(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mCoverHandNight:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialDay:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2300(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAnalogRes:Landroid/content/res/Resources;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->dialNight:I
    invoke-static {p1}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2400(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mDialNight:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    goto :goto_0
.end method

.method private setPanelTextVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getIsDay(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v2, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/AnalogControls;->mTimeSunRise:I

    if-lt p2, v2, :cond_1

    iget v2, p0, Lcom/htc/widget/AnalogControls;->mTimeSunSet:I

    if-ge p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    if-lt p1, v2, :cond_3

    const/16 v2, 0x12

    if-lt p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setControls(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 8

    iput-object p1, p0, Lcom/htc/widget/AnalogControls;->mContext:Landroid/content/Context;

    :try_start_0
    sget-object v0, Lcom/htc/widget/AnalogConsts;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mRes:Landroid/content/res/Resources;

    sget-object v0, Lcom/htc/widget/AnalogConsts;->BUNDLE_DIMENS_PORT:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    sget-object v0, Lcom/htc/widget/AnalogConsts;->BUNDLE_DIMENS_LAND:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogControls;->mSupportLand:Z

    :cond_0
    sget-object v0, Lcom/htc/widget/AnalogConsts;->ANALOG_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/AnalogControls;->mAnaloglType:I

    sget-object v0, Lcom/htc/widget/AnalogConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/widget/AnalogConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogControls;->mHasUpperCaseKey:Z

    :cond_1
    iget v0, p0, Lcom/htc/widget/AnalogControls;->mAnaloglType:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getHalfRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/AnalogControls;->getParentControls(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getHalfRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "com.htc.widget.AnalogControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set analog controls: Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getSmallRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getFullRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/widget/AnalogControls;->mRoot:Landroid/view/View;

    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getHalfRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getSmallRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {p0, p2, v4, v5}, Lcom/htc/widget/AnalogControls;->getFullRes(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setPanelSize(II)V
    .locals 18

    sget-boolean v14, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    if-eqz v14, :cond_0

    const-string v14, "com.htc.widget.AnalogControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setPanelSize: w ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", h="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v9, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/AnalogControls;->mSupportLand:Z

    if-eqz v14, :cond_5

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/AnalogControls;->mSmallThreshold:I

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/AnalogControls;->mSupportLand:Z

    if-eqz v14, :cond_7

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/AnalogControls;->mFullThreshold:I

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12, v8}, Lcom/htc/widget/AnalogControls;->getAnalogRes(III)Lcom/htc/widget/AnalogControls$AnalogRes;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/htc/widget/AnalogControls;->setPanelRes(Lcom/htc/widget/AnalogControls$AnalogRes;Z)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_8

    :cond_1
    sget-boolean v14, Lcom/htc/widget/AnalogControls;->DEBUG_FLAG:Z

    if-eqz v14, :cond_2

    const-string v14, "com.htc.widget.AnalogControls"

    const-string/jumbo v15, "no mesaure to set, return"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/AnalogControls;->mSmallThresholdLand:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/AnalogControls;->mSmallThreshold:I

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/AnalogControls;->mFullThresholdLand:I

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/AnalogControls;->mFullThreshold:I

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/AnalogControls;->mSupportLand:Z

    if-eqz v14, :cond_e

    if-nez v9, :cond_e

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mRoot:Landroid/view/View;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mRoot:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    instance-of v14, v10, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v14, :cond_9

    move-object v11, v10

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottomLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1700(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v14

    :goto_5
    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTopLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1600(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v14

    :goto_6
    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mRoot:Landroid/view/View;

    invoke-virtual {v14, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v14, :cond_a

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTopLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1800(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v2

    :goto_7
    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSizeLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2100(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v14, -0x1

    if-eq v3, v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    const/4 v15, 0x0

    int-to-float v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v14, :cond_b

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1900(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v6

    :goto_9
    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v7

    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v6, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v14, -0x1

    if-eq v7, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    const/4 v15, 0x0

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    if-eqz v14, :cond_c

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTopLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1900(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v6

    :goto_b
    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRightLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2000(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v5

    :goto_c
    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSizeLand:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$2200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v7

    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v6, v5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v14, -0x1

    if-eq v7, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    const/4 v15, 0x0

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    move/from16 v0, p1

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p2

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    if-eqz v12, :cond_2

    move/from16 v0, p1

    if-ge v0, v12, :cond_18

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/widget/AnalogControls;->setPanelTextVisibility(I)V

    goto/16 :goto_3

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginBottom:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1000(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v14

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->marginTop:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$900(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v14

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmPaddingTop:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1100(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v2

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->ampmTextSize:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1400(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v3

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v6

    goto/16 :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1500(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v7

    goto/16 :goto_a

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingTop:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1200(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v6

    goto/16 :goto_b

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLinePaddingRight:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1300(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v5

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AnalogControls;->mCurrRes:Lcom/htc/widget/AnalogControls$AnalogRes;

    # getter for: Lcom/htc/widget/AnalogControls$AnalogRes;->centerLineTextSize:I
    invoke-static {v14}, Lcom/htc/widget/AnalogControls$AnalogRes;->access$1500(Lcom/htc/widget/AnalogControls$AnalogRes;)I

    move-result v7

    goto/16 :goto_d

    :cond_18
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/widget/AnalogControls;->setPanelTextVisibility(I)V

    goto/16 :goto_3
.end method

.method public updatePanel(Z)V
    .locals 4

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/htc/widget/AnalogControls;->mAmPmColorDay:I

    :goto_0
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/htc/widget/AnalogControls;->mMixDateColorDay:I

    :goto_1
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialNight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/htc/widget/AnalogControls;->mAmPmColorNight:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/htc/widget/AnalogControls;->mMixDateColorNight:I

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/htc/widget/AnalogControls;->mDialPanel:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/widget/AnalogControls;->mDialNight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public updateWeekDate(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mWeekDate:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mWeekDate:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/widget/AnalogControls;->mHasUpperCaseKey:Z

    iget-boolean v4, p0, Lcom/htc/widget/AnalogControls;->mUpperCase:Z

    invoke-static {v2, v3, v4}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mCenterLine:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/htc/widget/AnalogControls;->getWeekString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/AnalogControls;->mSeperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/AnalogControls;->getDateString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mCenterLineSplit:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/AnalogControls;->getDateString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/htc/widget/AnalogControls;->getWeekString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/AnalogControls;->mAmPm:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/htc/widget/AnalogControls;->getAmPmString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
