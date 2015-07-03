.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$4;,
        Landroid/widget/RemoteViews$MemoryUsageCounter;,
        Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MutablePair;
    }
.end annotation


# static fields
.field private static final ACTION_COUNTER:I = 0xc8

.field private static final ACTION_TIMEOUT:I = 0x320

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final DEBUG_COMBINE:Z = false

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LOG_COMBINE:Ljava/lang/String; = "ActionCombine"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I

.field private static REPLACE_METHOD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static final sInvokeArgsTls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMethodsLock:[Ljava/lang/Object;


# instance fields
.field private mActionCombineEnable:Z

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/content/pm/ApplicationInfo;

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private mForceTimeout:Z

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

.field private final mPair:Landroid/widget/RemoteViews$MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mPortrait:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/widget/RemoteViews;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/widget/RemoteViews$3;

    invoke-direct {v0}, Landroid/widget/RemoteViews$3;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mActionCombineEnable:Z

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v1, v1}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mForceTimeout:Z

    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iput-object v7, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-boolean v6, p0, Landroid/widget/RemoteViews;->mActionCombineEnable:Z

    iput-boolean v6, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v4, v7, v7}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-boolean v6, p0, Landroid/widget/RemoteViews;->mForceTimeout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez p2, :cond_0

    new-instance v4, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetDrawableParameters;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_3
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_4
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewGroupAction;

    iget-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v5, p0, p1, v6}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_5
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_6
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_7
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_8
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_9
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_a
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_b
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_c
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_d
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_e
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_f
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v4, v4, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    :cond_3
    new-instance v4, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v4, p0, v7}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mActionCombineEnable:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v2, v2}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mForceTimeout:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-static {p1, p2}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/RemoteViews;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/widget/RemoteViews;->initReplaceList()V

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Landroid/widget/RemoteViews$Action;->validToReplace:Z

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    goto :goto_0
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->assimilate(Landroid/widget/RemoteViews$BitmapCache;)V

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    return-void
.end method

.method private static getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 7

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot create remote views out of an aplication."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p0, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getContextForResources(Landroid/content/Context;)Landroid/content/Context;
    .locals 5

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setHTCTheme(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->setHTCTheme(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteViews"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v5, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_0

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p2, v4, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p3, v4, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    if-nez p3, :cond_1

    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    :try_start_2
    const-class v4, Landroid/view/RemotableViewMethod;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can\'t use method with RemoteViews: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_1
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v4, p2, p3}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, "()"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method private static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v3, 0x2

    new-array v1, v3, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    aget v3, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    return-object v2
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initReplaceList()V
    .locals 4

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid/widget/RemoteViews;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setMax"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setProgress"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setTextSize"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setTextColor"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setVisibility"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setImageLevel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setAlpha"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setScaleX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setScaleY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setRotation"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setRotationX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setRotationY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setElevation"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setTranslationX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setTranslationY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setBase"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setTime"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setEnabled"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setStarted"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setAllCaps"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setClickable"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setFocusable"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setIndeterminate"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setText"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setContentDescription"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setFormat"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setViewPaddingInternal"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setTextViewTextSizeInternal"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setTextViewCompoundDrawablesInternal"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    const-string v2, "setTextViewCompoundDrawablesRelativeInternal"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ActionCombine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/widget/RemoteViews;->REPLACE_METHOD:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isHTCItem(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.htc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.browser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 10

    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    if-nez p3, :cond_0

    sget-object p3, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    :cond_0
    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mForceTimeout:Z

    if-eqz v5, :cond_2

    const-wide/16 v8, 0x320

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    const/16 v5, 0xc8

    if-le v1, v5, :cond_2

    const-string v5, "RemoteViews"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " actions="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private recalculateMemoryUsage()V
    .locals 4

    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->clear()V

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    goto :goto_1
.end method

.method private scanRedundantActions()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/RemoteViews;->mActionCombineEnable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    :goto_1
    if-ltz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    iget-boolean v0, v3, Landroid/widget/RemoteViews$Action;->validToReplace:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    iget-boolean v0, v3, Landroid/widget/RemoteViews$Action;->validToRemove:Z

    move/from16 v16, v0

    if-nez v16, :cond_3

    invoke-virtual {v3}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v9, v5, -0x1

    :goto_2
    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$Action;

    iget-boolean v0, v4, Landroid/widget/RemoteViews$Action;->validToReplace:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    iget-boolean v0, v4, Landroid/widget/RemoteViews$Action;->validToRemove:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    invoke-virtual {v4}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v4, Landroid/widget/RemoteViews$Action;->validToRemove:Z

    add-int/lit8 v12, v12, 0x1

    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    if-lez v12, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    sub-int v16, v16, v12

    move/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    iget-boolean v0, v2, Landroid/widget/RemoteViews$Action;->validToRemove:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v6, v16, v14

    const-string v16, "ActionCombine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove redundant actions "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3

    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    :cond_1
    return-void
.end method

.method private setHTCTheme(Landroid/content/Context;)V
    .locals 9

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/RemoteViews;->isHTCItem(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    const-string v5, "com.htc.configuration.HtcWrapConfiguration"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getHtcThemeId"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, "BASELINE"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1, v4}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v5, "RemoteViews"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setHTCTheme("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "RemoteViews"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reflection fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    sget-object v1, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .locals 18

    invoke-direct/range {p0 .. p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {p0 .. p1}, Landroid/widget/RemoteViews;->getContextForResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    new-instance v4, Landroid/widget/RemoteViews$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/RemoteViews$2;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;)V

    const-string v7, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v7, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v6, v5, v0, v1}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    const-string v14, "RemoteViews"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "apply : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v16, v10, v8

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v16, v12, v10

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_0
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public clone()Landroid/widget/RemoteViews;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_2
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, v1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v6

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v6, :cond_5

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    :cond_5
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    new-instance v8, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v8}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    goto/16 :goto_0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    if-eq v1, v4, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    const-string v4, "RemoteViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reapply : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAllViews(I)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setActionCombineEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mActionCombineEnable:Z

    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 2

    const-string v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1

    const-string v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1

    const-string v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 7

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 8

    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setEmptyView(II)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setForceTimeout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mForceTimeout:Z

    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1

    const-string v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1

    const-string v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return-void
.end method

.method public setLabelFor(II)V
    .locals 1

    const-string v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 7

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method setNotRoot()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1

    const-string v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-nez p4, :cond_0

    const-string v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1

    const-string v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1

    const-string v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(II)V
    .locals 1

    const-string v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .locals 8

    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    const-string v1, "setTextViewCompoundDrawablesInternal"

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 8

    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    const-string v1, "setTextViewCompoundDrawablesRelativeInternal"

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setTextViewCompoundDrawablesRelativeColorFilter(IIILandroid/graphics/PorterDuff$Mode;)V
    .locals 7

    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be in range [0, 3]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1

    const-string v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    const-string v1, "setTextViewTextSizeInternal"

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewPadding(IIIII)V
    .locals 7

    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    const-string v1, "setViewPaddingInternal"

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;Ljava/lang/String;)V

    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1

    const-string v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public showNext(I)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string v1, "showNext"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public showPrevious(I)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string v1, "showPrevious"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Landroid/widget/RemoteViews;->scanRedundantActions()V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v5, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_0
    iget-object v5, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v5, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    if-eqz v5, :cond_1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v0, p1, v4}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_5
    return-void
.end method
