.class public Lcom/htc/dialog/HtcAlertController;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams;,
        Lcom/htc/dialog/HtcAlertController$ButtonHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAlertController@Tie"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAutoLinkMask:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckBoxCheckBox:Landroid/view/View;

.field private mCheckBoxDefault:Z

.field private mCheckBoxEnabled:Z

.field private mCheckBoxLabel:Ljava/lang/CharSequence;

.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckBoxPanel:Landroid/view/View;

.field private mCheckBoxTextView:Landroid/widget/TextView;

.field private mCheckPanelLayout:I

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsAutoMotive:Z

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mPadding1:Landroid/view/View;

.field private mPadding3:Landroid/view/View;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    iput v1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    iput v1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    iput v2, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    iput-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    iput-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    new-instance v0, Lcom/htc/dialog/HtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/htc/dialog/HtcAlertController$1;-><init>(Lcom/htc/dialog/HtcAlertController;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    new-instance v0, Lcom/htc/dialog/HtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/htc/dialog/HtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    const v0, 0x209000c

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mAlertDialogLayout:I

    const v0, 0x2090066

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mListLayout:I

    const v0, 0x209001f

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mMultiChoiceItemLayout:I

    const v0, 0x2090021

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mSingleChoiceItemLayout:I

    const v0, 0x209001d

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mListItemLayout:I

    const v0, 0x209001b

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckPanelLayout:I

    return-void
.end method

.method private HtcIconButton_useSelectorWhenPressed(ZLandroid/widget/Button;)V
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "useSelectorWhenPressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcIconButton_useSelectorWhenPressed: btn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcIconButton_useSelectorWhenPressed: btn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcIconButton_useSelectorWhenPressed: btn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private HtcResUtil_isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 9

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "com.htc.util.res.HtcResUtil"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "isInAllCapsLocale"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcResUtil_isInAllCapsLocale: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcResUtil_isInAllCapsLocale: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcResUtil_isInAllCapsLocale: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcResUtil_isInAllCapsLocale: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/dialog/HtcAlertController;)I
    .locals 1

    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/dialog/HtcAlertController;)I
    .locals 1

    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/dialog/HtcAlertController;)I
    .locals 1

    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/dialog/HtcAlertController;)I
    .locals 1

    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/htc/dialog/HtcAlertController;I)I
    .locals 0

    iput p1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1702(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dialog/HtcAlertController;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/dialog/HtcAlertController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/htc/dialog/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/high16 v6, 0x2020000

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x2020001

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private mCheckBoxCheckBox_isChecked()Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "isChecked"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCheckBoxCheckBox_isChecked: mCheckBoxCheckBox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCheckBoxCheckBox_isChecked: mCheckBoxCheckBox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v5, "HtcAlertController@Tie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCheckBoxCheckBox_isChecked: mCheckBoxCheckBox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mCheckBoxCheckBox_setChecked(Z)V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "setChecked"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setChecked: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setChecked: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setChecked: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mCheckBoxCheckBox_setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 7

    :try_start_0
    const-string v3, "com.htc.app.HtcAlertController"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "setOnCheckedChangeListener"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setOnCheckedChangeListener: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setOnCheckedChangeListener: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setOnCheckedChangeListener: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_setOnCheckedChangeListener: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mCheckBoxCheckBox_toggle()V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "toggle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_toggle: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_toggle: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "HtcAlertController@Tie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckBoxCheckBox_toggle: mCheckBoxCheckBox="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 26

    const/16 v23, 0x0

    const v24, 0x208005b

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/16 v23, 0x1

    const v24, 0x208005d

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    const/16 v23, 0x2

    const v24, 0x2080058

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/16 v23, 0x3

    const v24, 0x2080050

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/16 v23, 0x4

    const v24, 0x208005a

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    const/16 v23, 0x5

    const v24, 0x208005c

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    const/16 v23, 0x6

    const v24, 0x2080057

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/16 v23, 0x7

    const v24, 0x2080046

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v23, 0x8

    const v24, 0x2080052

    move-object/from16 v0, p5

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    const v6, 0x2080014

    const v5, 0x2080013

    const v20, 0x2080016

    const v10, 0x2080015

    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v7, v0, [I

    const/16 v23, 0x0

    const v24, 0x2010047

    aput v24, v7, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const-string v23, "HtcAlertController"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setBackground: fullDark="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " topDark="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " centerDark="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bottomDark="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " fullBright="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " topBright="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " centerBright="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bottomBright="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bottomMedium="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mForceInverseBackground="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mIsAutoMotive="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " hasTitle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " hasButtons="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " categoryColor="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v15, v0, [Z

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    if-eqz p6, :cond_1

    aput-object p1, v22, v16

    const/16 v23, 0x0

    aput-boolean v23, v15, v16

    add-int/lit8 v16, v16, 0x1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 p2, 0x0

    :cond_2
    aput-object p2, v22, v16

    const/16 v23, 0x1

    aput-boolean v23, v15, v16

    add-int/lit8 v16, v16, 0x1

    if-eqz p3, :cond_3

    aput-object p3, v22, v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v23, v0

    aput-boolean v23, v15, v16

    add-int/lit8 v16, v16, 0x1

    :cond_3
    if-nez p4, :cond_4

    if-eqz p6, :cond_5

    :cond_4
    aput-object p7, v22, v16

    const/16 v23, 0x0

    aput-boolean v23, v15, v16

    :cond_5
    const/16 v17, 0x0

    const/16 v16, 0x0

    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    aget-object v21, v22, v16

    if-nez v21, :cond_6

    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_6
    if-eqz v14, :cond_8

    if-nez v17, :cond_a

    if-eqz v13, :cond_9

    move/from16 v23, v19

    :goto_2
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p6, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_3
    const/16 v17, 0x1

    :cond_8
    move-object/from16 v14, v21

    aget-boolean v13, v15, v16

    goto :goto_1

    :cond_9
    move/from16 v23, v20

    goto :goto_2

    :cond_a
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    move/from16 v23, v9

    :goto_4
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_b
    move/from16 v23, v10

    goto :goto_4

    :cond_c
    if-eqz v14, :cond_d

    if-eqz v17, :cond_12

    if-eqz p4, :cond_10

    :goto_5
    invoke-virtual {v14, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p4

    invoke-direct {v0, v1, v14, v2}, Lcom/htc/dialog/HtcAlertController;->setupButtonsHeight(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setSelection(I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v24, v0

    if-nez v24, :cond_14

    :goto_7
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_f
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    move v6, v5

    goto/16 :goto_5

    :cond_11
    move v6, v4

    goto/16 :goto_5

    :cond_12
    if-eqz v13, :cond_13

    :goto_8
    invoke-virtual {v14, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_13
    move v11, v12

    goto :goto_8

    :cond_14
    move v9, v10

    goto :goto_7
.end method

.method private setupButtonTextLayout()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x3

    new-array v2, v8, [Landroid/widget/Button;

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    aput-object v8, v2, v10

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    aput-object v8, v2, v9

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    aput-object v8, v2, v11

    move-object v0, v2

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v1, v0, v5

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setSingleLine(Z)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setMaxLines(I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setSingleLine(Z)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setMaxLines(I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setupButtons()Z
    .locals 13

    const/4 v2, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x202006a

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020066

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020068

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-boolean v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-boolean v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-boolean v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralDisabled:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    if-ne v10, v2, :cond_9

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v11}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020067

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020069

    invoke-virtual {v11, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    iget-boolean v11, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v11, :cond_4

    const v3, 0x2030134

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v11, v4, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v11, v4, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v11, v4, v3}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const v12, 0x2080041

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const v12, 0x2080041

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x20501ba

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x2050001

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    sub-int v5, v11, v12

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    const/4 v8, 0x0

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_4
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v11, v12}, Lcom/htc/dialog/HtcAlertController;->HtcIconButton_useSelectorWhenPressed(ZLandroid/widget/Button;)V

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v11, v12}, Lcom/htc/dialog/HtcAlertController;->HtcIconButton_useSelectorWhenPressed(ZLandroid/widget/Button;)V

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v11, v12}, Lcom/htc/dialog/HtcAlertController;->HtcIconButton_useSelectorWhenPressed(ZLandroid/widget/Button;)V

    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupButtonTextLayout()V

    invoke-direct {p0, v4}, Lcom/htc/dialog/HtcAlertController;->HtcResUtil_isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v7

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setAllCaps(Z)V

    if-eqz v10, :cond_e

    const/4 v11, 0x1

    :goto_5
    return v11

    :cond_6
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v10, v2

    goto/16 :goto_0

    :cond_7
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v10, v0

    goto/16 :goto_1

    :cond_8
    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v12, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v10, v1

    goto/16 :goto_2

    :cond_9
    if-ne v10, v0, :cond_a

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v11}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    :cond_a
    if-ne v10, v1, :cond_3

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v11}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    :cond_b
    const/4 v11, 0x5

    if-ne v10, v11, :cond_c

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_c
    const/4 v11, 0x6

    if-ne v10, v11, :cond_d

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_d
    const/4 v11, 0x7

    if-ne v10, v11, :cond_5

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v11, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_5
.end method

.method private setupButtonsHeight(Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 2

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020061    # 9.551E-38f

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ScrollView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020062

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    invoke-static {v13, v14}, Lcom/htc/dialog/HtcAlertDialog;->getDefaultListItemHeight(Landroid/content/Context;Z)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const v15, 0x203013f

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v13, 0x2050000

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v12

    move v11, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13, v7, v12, v11, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020065

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckPanelLayout:I

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    const v14, 0x1020001

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxDefault:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox_setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox_setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    const v14, 0x1020014

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v13, Lcom/htc/dialog/HtcAlertController$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/dialog/HtcAlertController$2;-><init>(Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxEnabled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/dialog/HtcAlertController;->setCheckBoxEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v12, v11, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x2050006

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v13, v7, v1, v11, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v14, 0x2020061    # 9.551E-38f

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_6
    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxPanel:Landroid/view/View;

    const v14, 0x202007f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    iput v13, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10

    const v6, 0x202005d

    const/4 v0, 0x0

    const/16 v9, 0x8

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x2020055

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x202005e

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    iget-boolean v4, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const v6, 0x2030131

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 13

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020060

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/htc/dialog/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupButtons()Z

    move-result v4

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x202005c

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/htc/internal/R$styleable;->AlertDialog:[I

    const v11, 0x2010039

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/htc/dialog/HtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020065

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v4, :cond_0

    if-nez v6, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020063

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020064

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingLeft:I

    iget v9, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingTop:I

    iget v10, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingRight:I

    iget v11, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/dialog/HtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020063

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPadding1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    return-object v0
.end method

.method public getPadding3()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    const/high16 v2, 0x20000

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/htc/dialog/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupView()V

    return-void
.end method

.method public isCheckBoxChecked()Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox_isChecked()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_1
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveDisabled:Z

    :goto_0
    return-void

    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckBox(Ljava/lang/CharSequence;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxLabel:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxDefault:Z

    iput-object p3, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-boolean p4, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxEnabled:Z

    return-void
.end method

.method public setCheckBoxChecked(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox_setChecked(Z)V

    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxEnabled:Z

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public setIsAutoMotive(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v0, :cond_0

    const v0, 0x209000d

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mAlertDialogLayout:I

    const v0, 0x2090020

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mMultiChoiceItemLayout:I

    const v0, 0x2090022

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mSingleChoiceItemLayout:I

    const v0, 0x209001e

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mListItemLayout:I

    const v0, 0x2090067

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mListLayout:I

    const v0, 0x209001c

    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mCheckPanelLayout:I

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingLeft:I

    iput p3, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingTop:I

    iput p4, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingRight:I

    iput p5, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingBottom:I

    return-void
.end method
