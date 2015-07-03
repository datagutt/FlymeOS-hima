.class public Lcom/htc/dialog/HtcAlertController$AlertParams;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoLinkMask:I

.field public mCancelable:Z

.field public mCheckBoxDefault:Z

.field public mCheckBoxEnabled:Z

.field public mCheckBoxLabel:Ljava/lang/CharSequence;

.field public mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsAutoMotive:Z

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonDisabled:Z

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonDisabled:Z

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonDisabled:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCenter:Z

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I

.field private methodSetText:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    iput-boolean v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    iput v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    iput-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->methodSetText:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/dialog/HtcAlertController$AlertParams;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/dialog/HtcAlertController$AlertParams;->text_setText(Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method

.method private createListView(Lcom/htc/dialog/HtcAlertController;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/htc/dialog/HtcAlertController;->mListLayout:I
    invoke-static/range {p1 .. p1}, Lcom/htc/dialog/HtcAlertController;->access$1000(Lcom/htc/dialog/HtcAlertController;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_4

    new-instance v2, Lcom/htc/dialog/HtcAlertController$AlertParams$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/htc/dialog/HtcAlertController$AlertParams$1;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v3, v9}, Lcom/htc/dialog/HtcAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_0
    move-object/from16 v0, p1

    # setter for: Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0, v2}, Lcom/htc/dialog/HtcAlertController;->access$1502(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    move-object/from16 v0, p1

    # setter for: Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I
    invoke-static {v0, v3}, Lcom/htc/dialog/HtcAlertController;->access$1602(Lcom/htc/dialog/HtcAlertController;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_9

    new-instance v3, Lcom/htc/dialog/HtcAlertController$AlertParams$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/htc/dialog/HtcAlertController$AlertParams$5;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_3
    :goto_2
    move-object/from16 v0, p1

    # setter for: Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {v0, v9}, Lcom/htc/dialog/HtcAlertController;->access$1702(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void

    :cond_4
    new-instance v2, Lcom/htc/dialog/HtcAlertController$AlertParams$2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v7, v9

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/dialog/HtcAlertController$AlertParams$2;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/htc/dialog/HtcAlertController;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v3, :cond_6

    # getter for: Lcom/htc/dialog/HtcAlertController;->mSingleChoiceItemLayout:I
    invoke-static/range {p1 .. p1}, Lcom/htc/dialog/HtcAlertController;->access$1300(Lcom/htc/dialog/HtcAlertController;)I

    move-result v16

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    :goto_4
    goto :goto_0

    :cond_6
    # getter for: Lcom/htc/dialog/HtcAlertController;->mListItemLayout:I
    invoke-static/range {p1 .. p1}, Lcom/htc/dialog/HtcAlertController;->access$1400(Lcom/htc/dialog/HtcAlertController;)I

    move-result v16

    goto :goto_3

    :cond_7
    new-instance v10, Lcom/htc/dialog/HtcAlertController$AlertParams$3;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Lcom/htc/dialog/HtcAlertController$AlertParams$3;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;I)V

    move-object v2, v10

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/htc/dialog/HtcAlertController$AlertParams$4;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/htc/dialog/HtcAlertController$AlertParams$4;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZI)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/htc/dialog/HtcAlertController$AlertParams$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v9, v1}, Lcom/htc/dialog/HtcAlertController$AlertParams$6;-><init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/dialog/HtcAlertController;)V

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method

.method private text_setText(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->methodSetText:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->methodSetText:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->methodSetText:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "HtcAlertController@Tie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "text_setText: view.class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "HtcAlertController@Tie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "text_setText: view.class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "HtcAlertController@Tie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "text_setText: view.class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public apply(Lcom/htc/dialog/HtcAlertController;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIsAutoMotive(Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_4
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_5
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    :cond_6
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    :cond_7
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/htc/dialog/HtcAlertController;->setButtonDisabled(IZ)V

    :cond_8
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V

    :cond_a
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitleCenterEnabled(Z)V

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckBoxLabel:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckBoxDefault:Z

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckBoxEnabled:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/htc/dialog/HtcAlertController;->setCheckBox(Ljava/lang/CharSequence;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAutoLinkMask:I

    invoke-virtual {p1, v0, v1}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    goto :goto_2
.end method
