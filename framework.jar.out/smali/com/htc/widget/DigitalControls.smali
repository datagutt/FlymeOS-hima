.class public Lcom/htc/widget/DigitalControls;
.super Ljava/lang/Object;
.source "DigitalControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DigitalControls$1;,
        Lcom/htc/widget/DigitalControls$HourMinRes;,
        Lcom/htc/widget/DigitalControls$DigitalRes;,
        Lcom/htc/widget/DigitalControls$MaskDrawable;
    }
.end annotation


# static fields
.field private static final DEBUG_FLAG:Z

.field private static final RES_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field private static final TAG:Ljava/lang/String; = "com.htc.widget.DigitalControls"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmPmOfDay:[Ljava/lang/CharSequence;

.field private mAppendAmPm:Ljava/lang/String;

.field private mBckground:Landroid/widget/ImageView;

.field private mBoldDate:Z

.field private mCityName:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

.field private mDigitalType:I

.field private mDivider:Landroid/widget/ImageView;

.field private mErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasUpperCaseKey:Z

.field private mHourMin:Lcom/htc/widget/DigitalControls$HourMinRes;

.field private mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

.field private mNumberRes:Landroid/content/res/Resources;

.field private mPoint:Landroid/widget/ImageView;

.field private mRes:Landroid/content/res/Resources;

.field private mResContext:Landroid/content/Context;

.field private mShiftHour:Z

.field private mTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeSunRise:I

.field private mTimeSunSet:I

.field private mUpperCase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/widget/DigitalControls;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/DigitalControls;->mDigitalType:I

    iput v1, p0, Lcom/htc/widget/DigitalControls;->mTimeSunRise:I

    iput v1, p0, Lcom/htc/widget/DigitalControls;->mTimeSunSet:I

    iput-boolean v2, p0, Lcom/htc/widget/DigitalControls;->mUpperCase:Z

    iput-boolean v2, p0, Lcom/htc/widget/DigitalControls;->mBoldDate:Z

    return-void
.end method

.method private formatDateBold(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 13

    invoke-static {p2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/widget/DigitalControls;->mHasUpperCaseKey:Z

    iget-boolean v12, p0, Lcom/htc/widget/DigitalControls;->mUpperCase:Z

    invoke-static {v10, v11, v12}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v5, -0x1

    const/4 v3, -0x1

    const/16 v10, 0x64

    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v10, 0x64

    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v3, v10, 0x1

    const/4 v10, -0x1

    if-eq v5, v10, :cond_1

    const/4 v10, -0x1

    if-eq v3, v10, :cond_1

    if-eqz v6, :cond_1

    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v8, v9, v5, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/SpannableString;

    invoke-static {v8, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v7, v9}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    const/4 v10, -0x1

    if-eq v1, v10, :cond_1

    const/4 v10, -0x1

    if-eq v0, v10, :cond_1

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const/16 v11, 0x21

    invoke-virtual {v10, v9, v1, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    return-object v2
.end method

.method private getAmPmString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/DigitalControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/DigitalControls;->mAppendAmPm:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/widget/DigitalControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/DigitalControls;->mAppendAmPm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/DigitalControls;->mAmPmOfDay:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/widget/DigitalControls;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getControls(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/DigitalControls;->getDigitalControls(Landroid/os/Bundle;Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/DigitalControls;->getRemainControls(Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method private getDayNightRes(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/htc/widget/DigitalConsts;->DIGITAL_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/DigitalControls;->mDigitalType:I

    iget v0, p0, Lcom/htc/widget/DigitalControls;->mDigitalType:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/htc/widget/DigitalControls;->getNightRes(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/DigitalControls;->getNightRes(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/widget/DigitalControls;->getDayRes(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/widget/DigitalControls;->getNightRes(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/DigitalControls;->getDayRes(Landroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDayRes(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/DigitalControls$DigitalRes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;-><init>(Lcom/htc/widget/DigitalControls$1;)V

    iput-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->DRAWABLE_NUBER_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->number:[I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$602(Lcom/htc/widget/DigitalControls$DigitalRes;[I)[I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    const-string/jumbo v1, "number_mask"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->mask:[I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$702(Lcom/htc/widget/DigitalControls$DigitalRes;[I)[I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->DRAWABLE_BACKGROUND_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->background:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$802(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->DRAWABLE_DIVIDER_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->divider:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$902(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->DRAWABLE_POINT_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->point:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1002(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->COLOR_TEXT_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->textColor:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1102(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->COLOR_ERROR_DAY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->errorColor:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1202(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    return-void
.end method

.method private getDigitalControls(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/DigitalControls;->getHourMinute(Landroid/os/Bundle;Landroid/view/View;)V

    sget-object v4, Lcom/htc/widget/DigitalConsts;->THEME_APK_NAME:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/htc/widget/DigitalConsts;->THEME_APK_PATH:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/DigitalControls;->mResContext:Landroid/content/Context;

    sget-object v5, Lcom/htc/widget/DigitalConsts;->THEME_APK_NAME:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/widget/DigitalConsts;->THEME_APK_PATH:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/widget/DigitalControls;->getResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/DigitalControls;->mNumberRes:Landroid/content/res/Resources;

    :goto_0
    sget-object v4, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_AM_PM:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/DigitalControls;->mAmPm:Landroid/widget/TextView;

    :cond_0
    sget-object v4, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_POINT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/DigitalControls;->mPoint:Landroid/widget/ImageView;

    :cond_1
    return-void

    :cond_2
    sget-object v4, Lcom/htc/widget/DigitalConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/htc/widget/DigitalConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/DigitalControls;->mNumberRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/htc/widget/DigitalControls;->mRes:Landroid/content/res/Resources;

    iput-object v4, p0, Lcom/htc/widget/DigitalControls;->mNumberRes:Landroid/content/res/Resources;

    const-string v4, "com.htc.widget.DigitalControls"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDigitalControls: Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/DigitalControls;->mRes:Landroid/content/res/Resources;

    iput-object v4, p0, Lcom/htc/widget/DigitalControls;->mNumberRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method private getDigitalRes(III)Lcom/htc/widget/DigitalControls$DigitalRes;
    .locals 1

    iget v0, p0, Lcom/htc/widget/DigitalControls;->mDigitalType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/DigitalControls;->getIsDay(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mDayRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DigitalControls;->mNumberRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/htc/widget/DigitalControls;->DEBUG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "com.htc.widget.DigitalControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get mNumberRes fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/widget/DigitalControls;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/htc/widget/DigitalControls;->DEBUG_FLAG:Z

    if-eqz v1, :cond_1

    const-string v1, "com.htc.widget.DigitalControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get mRes fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getHourMinute(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 6

    new-instance v4, Lcom/htc/widget/DigitalControls$HourMinRes;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/htc/widget/DigitalControls$HourMinRes;-><init>(Lcom/htc/widget/DigitalControls$1;)V

    iput-object v4, p0, Lcom/htc/widget/DigitalControls;->mHourMin:Lcom/htc/widget/DigitalControls$HourMinRes;

    sget-object v4, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_HOUR_TEN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DigitalControls;->mHourMin:Lcom/htc/widget/DigitalControls$HourMinRes;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    # setter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;
    invoke-static {v5, v4}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$102(Lcom/htc/widget/DigitalControls$HourMinRes;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_0
    sget-object v4, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_HOUR_UNIT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/htc/widget/DigitalControls;->mHourMin:Lcom/htc/widget/DigitalControls$HourMinRes;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    # setter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourUnit:Landroid/widget/ImageView;
    invoke-static {v5, v4}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$202(Lcom/htc/widget/DigitalControls$HourMinRes;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1
    sget-object v4, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_MINUTE_TEN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/htc/widget/DigitalControls;->mHourMin:Lcom/htc/widget/DigitalControls$HourMinRes;

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    # setter for: Lcom/htc/widget/DigitalControls$HourMinRes;->minuteTen:Landroid/widget/ImageView;
    invoke-static {v5, v4}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$302(Lcom/htc/widget/DigitalControls$HourMinRes;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_2
    sget-object v4, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_MINUTE_UNIT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/htc/widget/DigitalControls;->mHourMin:Lcom/htc/widget/DigitalControls$HourMinRes;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    # setter for: Lcom/htc/widget/DigitalControls$HourMinRes;->minuteUnit:Landroid/widget/ImageView;
    invoke-static {v5, v4}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$402(Lcom/htc/widget/DigitalControls$HourMinRes;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_3
    return-void
.end method

.method private getIsDay(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v2, p0, Lcom/htc/widget/DigitalControls;->mTimeSunRise:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/DigitalControls;->mTimeSunSet:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/DigitalControls;->mTimeSunRise:I

    if-lt p2, v2, :cond_1

    iget v2, p0, Lcom/htc/widget/DigitalControls;->mTimeSunSet:I

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

.method private getListControls([ILandroid/view/View;Landroid/view/View;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v5, 0x0

    :cond_0
    return-object v5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    if-eqz v2, :cond_4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v4, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    :cond_2
    if-nez v4, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getNightRes(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/DigitalControls$DigitalRes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;-><init>(Lcom/htc/widget/DigitalControls$1;)V

    iput-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->DRAWABLE_NUBER_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->number:[I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$602(Lcom/htc/widget/DigitalControls$DigitalRes;[I)[I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    const-string/jumbo v1, "number_mask"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->mask:[I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$702(Lcom/htc/widget/DigitalControls$DigitalRes;[I)[I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->DRAWABLE_BACKGROUND_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->background:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$802(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->DRAWABLE_DIVIDER_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->divider:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$902(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->DRAWABLE_POINT_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->point:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1002(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->COLOR_TEXT_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->textColor:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1102(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls;->mNightRes:Lcom/htc/widget/DigitalControls$DigitalRes;

    sget-object v1, Lcom/htc/widget/DigitalConsts;->COLOR_ERROR_NIGHT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/htc/widget/DigitalControls$DigitalRes;->errorColor:I
    invoke-static {v0, v1}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1202(Lcom/htc/widget/DigitalControls$DigitalRes;I)I

    return-void
.end method

.method private getNumber(II[I[I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mNumberRes:Landroid/content/res/Resources;

    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    array-length v6, p3

    if-lt p2, v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    aget v4, p3, v8

    array-length v6, p3

    const/16 v7, 0x14

    if-ne v6, v7, :cond_2

    div-int/lit8 v3, p1, 0x2

    :goto_1
    mul-int/lit8 v6, v3, 0xa

    add-int v5, v6, p2

    array-length v6, p3

    if-lt v5, v6, :cond_3

    aget v4, p3, p2

    :goto_2
    if-eqz p4, :cond_5

    array-length v6, p4

    if-lez v6, :cond_5

    aget v2, p4, v8

    array-length v6, p4

    if-lt p1, v6, :cond_4

    aget v2, p4, v8

    :goto_3
    if-lez v2, :cond_5

    invoke-direct {p0, v4}, Lcom/htc/widget/DigitalControls;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/htc/widget/DigitalControls;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Lcom/htc/widget/DigitalControls$MaskDrawable;

    invoke-direct {v6, v0, v1}, Lcom/htc/widget/DigitalControls$MaskDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    move v3, p1

    goto :goto_1

    :cond_3
    aget v4, p3, v5

    goto :goto_2

    :cond_4
    aget v2, p4, p1

    goto :goto_3

    :cond_5
    invoke-direct {p0, v4}, Lcom/htc/widget/DigitalControls;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0
.end method

.method private getRemainControls(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    sget-object v6, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_DATE:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    if-nez v6, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    :cond_1
    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    :cond_2
    sget-object v6, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_BACKGROUND:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mBckground:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mBckground:Landroid/widget/ImageView;

    if-nez v6, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mBckground:Landroid/widget/ImageView;

    :cond_3
    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mBckground:Landroid/widget/ImageView;

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mBckground:Landroid/widget/ImageView;

    :cond_4
    sget-object v6, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_DIVIDER:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mDivider:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mDivider:Landroid/widget/ImageView;

    if-nez v6, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mDivider:Landroid/widget/ImageView;

    :cond_5
    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mDivider:Landroid/widget/ImageView;

    if-nez v6, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mDivider:Landroid/widget/ImageView;

    :cond_6
    sget-object v6, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_CITY_NAME:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mCityName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mCityName:Landroid/widget/TextView;

    if-nez v6, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mCityName:Landroid/widget/TextView;

    :cond_7
    iget-object v6, p0, Lcom/htc/widget/DigitalControls;->mCityName:Landroid/widget/TextView;

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mCityName:Landroid/widget/TextView;

    :cond_8
    sget-object v6, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_TEXT_CONTROLS:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-direct {p0, v6, p2, v4, v5}, Lcom/htc/widget/DigitalControls;->getListControls([ILandroid/view/View;Landroid/view/View;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mTextList:Ljava/util/ArrayList;

    sget-object v6, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_ERROR_CONTROLS:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-direct {p0, v6, p2, v4, v5}, Lcom/htc/widget/DigitalControls;->getListControls([ILandroid/view/View;Landroid/view/View;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mErrorList:Ljava/util/ArrayList;

    sget-object v6, Lcom/htc/widget/DigitalConsts;->BOOLEAN_SHIFT_HOUR:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/widget/DigitalControls;->mShiftHour:Z

    sget-object v6, Lcom/htc/widget/DigitalConsts;->INT_SUN_RISE:Ljava/lang/String;

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/widget/DigitalControls;->mTimeSunRise:I

    sget-object v6, Lcom/htc/widget/DigitalConsts;->INT_SUN_SET:Ljava/lang/String;

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/widget/DigitalControls;->mTimeSunSet:I

    sget-object v6, Lcom/htc/widget/DigitalConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/htc/widget/DigitalConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/widget/DigitalControls;->mUpperCase:Z

    iput-boolean v8, p0, Lcom/htc/widget/DigitalControls;->mHasUpperCaseKey:Z

    :cond_9
    sget-object v6, Lcom/htc/widget/DigitalConsts;->BOOLEAN_BOLD_DATE:Ljava/lang/String;

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/widget/DigitalControls;->mBoldDate:Z

    const-string v6, "append_am_pm"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/DigitalControls;->mAppendAmPm:Ljava/lang/String;

    sget-boolean v6, Lcom/htc/widget/DigitalControls;->DEBUG_FLAG:Z

    if-eqz v6, :cond_a

    const-string v6, "com.htc.widget.DigitalControls"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sun rise="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/widget/DigitalControls;->mTimeSunRise:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,sun set="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/widget/DigitalControls;->mTimeSunSet:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private getResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".apk"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :try_start_0
    const-string v12, "android.content.res.AssetManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v12, "addAssetPath"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v4, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v12, v6, Ljava/lang/Integer;

    if-eqz v12, :cond_1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    sget-boolean v12, Lcom/htc/widget/DigitalControls;->DEBUG_FLAG:Z

    if-eqz v12, :cond_0

    const-string v12, "com.htc.widget.DigitalControls"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AssetMaanger addAssetPath "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " fail!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v9, v8

    :goto_0
    return-object v9

    :cond_1
    const-class v12, Landroid/content/res/Resources;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/content/res/Resources;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v9, v8

    goto :goto_0

    :catch_0
    move-exception v7

    sget-boolean v12, Lcom/htc/widget/DigitalControls;->DEBUG_FLAG:Z

    if-eqz v12, :cond_2

    const-string v12, "com.htc.widget.DigitalControls"

    const-string v13, "Something wrong within HtcThemeUtils.getResources(context, String), please check stack trace above!!!"

    invoke-static {v12, v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setHourMinute(IILcom/htc/widget/DigitalControls$HourMinRes;[I[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    div-int/lit8 v0, p1, 0xa

    if-ge v0, v3, :cond_4

    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$100(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$100(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/htc/widget/DigitalControls;->mShiftHour:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$100(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourUnit:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$200(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourUnit:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$200(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v3, v1, p4, p5}, Lcom/htc/widget/DigitalControls;->getNumber(II[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->minuteTen:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$300(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->minuteTen:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$300(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    div-int/lit8 v2, p2, 0xa

    invoke-direct {p0, v1, v2, p4, p5}, Lcom/htc/widget/DigitalControls;->getNumber(II[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->minuteUnit:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$400(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->minuteUnit:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$400(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x3

    rem-int/lit8 v2, p2, 0xa

    invoke-direct {p0, v1, v2, p4, p5}, Lcom/htc/widget/DigitalControls;->getNumber(II[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$100(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$100(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    div-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v2, v1, p4, p5}, Lcom/htc/widget/DigitalControls;->getNumber(II[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/htc/widget/DigitalControls;->mShiftHour:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/htc/widget/DigitalControls$HourMinRes;->hourTen:Landroid/widget/ImageView;
    invoke-static {p3}, Lcom/htc/widget/DigitalControls$HourMinRes;->access$100(Lcom/htc/widget/DigitalControls$HourMinRes;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public setControls(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 5

    :try_start_0
    sget-object v2, Lcom/htc/widget/DigitalConsts;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/DigitalControls;->mResContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/DigitalControls;->mResContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DigitalControls;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/DigitalControls;->mRes:Landroid/content/res/Resources;

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/htc/widget/DigitalControls;->getControls(Landroid/os/Bundle;Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/htc/widget/DigitalControls;->getDayNightRes(Landroid/os/Bundle;)V

    sget-object v2, Lcom/htc/widget/DigitalConsts;->ARRAY_AM_PM_OF_DAY:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/DigitalControls;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/DigitalControls;->mAmPmOfDay:[Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "com.htc.widget.DigitalControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set analog controls: Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTextDate(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/htc/widget/DigitalControls;->mBoldDate:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/DigitalControls;->formatDateBold(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/widget/DigitalControls;->mHasUpperCaseKey:Z

    iget-boolean v4, p0, Lcom/htc/widget/DigitalControls;->mUpperCase:Z

    invoke-static {v2, v3, v4}, Lcom/htc/widget/ResUtils;->toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateTime(Ljava/util/Calendar;Z)V
    .locals 16

    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v1, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move v11, v2

    const/4 v1, 0x1

    if-ne v7, v1, :cond_0

    add-int/lit8 v11, v11, 0xc

    :cond_0
    mul-int/lit8 v1, v11, 0x3c

    add-int v15, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DigitalControls;->mDigitalType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15, v1}, Lcom/htc/widget/DigitalControls;->getDigitalRes(III)Lcom/htc/widget/DigitalControls$DigitalRes;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_a

    const/4 v1, 0x1

    if-ne v7, v1, :cond_3

    add-int/lit8 v2, v2, 0xc

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/DigitalControls;->mHourMin:Lcom/htc/widget/DigitalControls$HourMinRes;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->number:[I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$600(Lcom/htc/widget/DigitalControls$DigitalRes;)[I

    move-result-object v5

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->mask:[I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$700(Lcom/htc/widget/DigitalControls$DigitalRes;)[I

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/widget/DigitalControls;->setHourMinute(IILcom/htc/widget/DigitalControls$HourMinRes;[I[I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mBckground:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mBckground:Landroid/widget/ImageView;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->background:I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$800(Lcom/htc/widget/DigitalControls$DigitalRes;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/widget/DigitalControls;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mPoint:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mPoint:Landroid/widget/ImageView;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->point:I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1000(Lcom/htc/widget/DigitalControls$DigitalRes;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/widget/DigitalControls;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mDivider:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mDivider:Landroid/widget/ImageView;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->divider:I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$900(Lcom/htc/widget/DigitalControls$DigitalRes;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/widget/DigitalControls;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mDate:Landroid/widget/TextView;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->textColor:I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1100(Lcom/htc/widget/DigitalControls$DigitalRes;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mCityName:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mCityName:Landroid/widget/TextView;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->textColor:I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1100(Lcom/htc/widget/DigitalControls$DigitalRes;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mTextList:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->textColor:I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1100(Lcom/htc/widget/DigitalControls$DigitalRes;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_a
    if-nez v2, :cond_b

    const/16 v2, 0xc

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mAmPm:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mAmPm:Landroid/widget/TextView;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->textColor:I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1100(Lcom/htc/widget/DigitalControls$DigitalRes;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mAmPm:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/DigitalControls;->getAmPmString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mErrorList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DigitalControls;->mErrorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    # getter for: Lcom/htc/widget/DigitalControls$DigitalRes;->errorColor:I
    invoke-static {v8}, Lcom/htc/widget/DigitalControls$DigitalRes;->access$1200(Lcom/htc/widget/DigitalControls$DigitalRes;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method
