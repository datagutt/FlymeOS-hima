.class Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedSetting"
.end annotation


# static fields
.field private static final DEBUG_CACHED_SETTING:Z = false

.field private static final seperator:Ljava/lang/String; = ":"


# instance fields
.field private cachedTime:Ljava/lang/Long;

.field private setting:Ljava/lang/Object;

.field private slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/content/SharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 4451
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/util/LinkedList;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "x2"    # Ljava/lang/Class;

    .prologue
    .line 4451
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .locals 1
    .param p0, "x0"    # Ljava/util/LinkedList;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "x2"    # Ljava/lang/Long;

    .prologue
    .line 4451
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->isUpdateCacheRequired(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .prologue
    .line 4451
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/internal/telephony/MobileNetwork$CachedSetting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4451
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4000(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/LinkedList;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .prologue
    .line 4451
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->updateCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 4451
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->logCacheUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .locals 3
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Lcom/android/internal/telephony/MobileNetwork$Selection;",
            ")",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;"
        }
    .end annotation

    .prologue
    .line 4706
    .local p0, "allStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    if-eqz p0, :cond_1

    .line 4707
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .line 4708
    .local v0, "current":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    invoke-static {v2, p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3500(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4713
    .end local v0    # "current":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Lcom/android/internal/telephony/MobileNetwork$Selection;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 4717
    .local p0, "allStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/4 v1, 0x0

    .line 4718
    .local v1, "result":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    move-result-object v0

    .line 4719
    .local v0, "cache":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v0, :cond_0

    .line 4720
    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    .line 4721
    if-eqz v1, :cond_0

    .line 4722
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p2, :cond_0

    .line 4723
    const/4 v1, 0x0

    .line 4727
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method private static isUpdateCacheRequired(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Long;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .locals 8
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "requestTime"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Lcom/android/internal/telephony/MobileNetwork$Selection;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;"
        }
    .end annotation

    .prologue
    .line 4561
    .local p0, "allStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/4 v2, 0x0

    .line 4566
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    invoke-direct {v1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;-><init>()V

    .line 4567
    .local v1, "result":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz p2, :cond_6

    .line 4568
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    move-result-object v0

    .line 4569
    .local v0, "cachedStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 4570
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 4571
    const/4 v1, 0x0

    .line 4574
    :cond_0
    if-eqz v2, :cond_1

    .line 4575
    if-eqz v0, :cond_5

    .line 4576
    if-eqz v1, :cond_4

    const-string v4, "new update"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4586
    .end local v0    # "cachedStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 4587
    const-string v4, " slot"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4588
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v3

    .line 4589
    .local v3, "slotNphoneString":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 4590
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4595
    :goto_2
    const-string v4, "LibMobileNetwork"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    .end local v3    # "slotNphoneString":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 4598
    iput-object p1, v1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 4599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    .line 4601
    :cond_3
    return-object v1

    .line 4576
    .restart local v0    # "cachedStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_4
    const-string v4, "has updated"

    goto :goto_0

    .line 4579
    :cond_5
    const-string v4, "empty query"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4583
    .end local v0    # "cachedStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_6
    if-eqz v2, :cond_1

    .line 4584
    const-string v4, "force refresh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4593
    .restart local v3    # "slotNphoneString":Ljava/lang/String;
    :cond_7
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 19
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/Class;
    .param p3, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4461
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 4462
    .local v12, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4557
    :cond_0
    :goto_0
    return-object v12

    .line 4465
    :cond_1
    const/4 v11, 0x0

    .line 4466
    .local v11, "rawValues":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4468
    .local v6, "exception":Ljava/lang/Throwable;
    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4469
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 4470
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4471
    .local v3, "cacheLines":[Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 4472
    const/4 v7, 0x0

    .line 4473
    .local v7, "indexLine":I
    const/4 v4, 0x0

    .line 4474
    .local v4, "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    :cond_2
    :goto_1
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    .line 4475
    rem-int/lit8 v17, v7, 0x3

    packed-switch v17, :pswitch_data_0

    .line 4493
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 4494
    rem-int/lit8 v17, v7, 0x3

    if-eqz v17, :cond_4

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    .line 4495
    :cond_4
    iget-object v15, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 4496
    .local v15, "value":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 4497
    new-instance v16, Ljava/io/CharArrayReader;

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/CharArrayReader;-><init>([C)V

    .line 4498
    .local v16, "valueReader":Ljava/io/CharArrayReader;
    const-class v17, Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 4499
    const/16 v17, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$500(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    .line 4535
    .end local v16    # "valueReader":Ljava/io/CharArrayReader;
    :cond_5
    :goto_3
    invoke-virtual {v12, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4540
    .end local v3    # "cacheLines":[Ljava/lang/String;
    .end local v4    # "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v7    # "indexLine":I
    .end local v15    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 4541
    .local v5, "exLoad":Ljava/lang/Throwable;
    move-object v6, v5

    .line 4543
    .end local v5    # "exLoad":Ljava/lang/Throwable;
    :cond_6
    if-nez v6, :cond_7

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2100()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 4544
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 4545
    .local v13, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_8

    .line 4546
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4548
    :cond_8
    const-string v17, "load "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4549
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4550
    if-eqz v11, :cond_9

    .line 4551
    const-string v17, " ["

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4552
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4553
    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4555
    :cond_9
    const-string v17, "LibMobileNetwork"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4477
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "cacheLines":[Ljava/lang/String;
    .restart local v4    # "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .restart local v7    # "indexLine":I
    :pswitch_0
    :try_start_1
    new-instance v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .end local v4    # "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    invoke-direct {v4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;-><init>()V

    .line 4478
    .restart local v4    # "cachedLine":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    aget-object v17, v3, v7

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 4479
    aget-object v17, v3, v7

    const/16 v18, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3200(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    goto/16 :goto_2

    .line 4483
    :pswitch_1
    aget-object v17, v3, v7

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_2

    .line 4486
    :pswitch_2
    aget-object v17, v3, v7

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    if-nez v17, :cond_3

    .line 4488
    :try_start_2
    aget-object v17, v3, v7

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 4489
    :catch_1
    move-exception v17

    goto/16 :goto_2

    .line 4501
    .restart local v15    # "value":Ljava/lang/String;
    .restart local v16    # "valueReader":Ljava/io/CharArrayReader;
    :cond_a
    :try_start_3
    const-class v17, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 4502
    const/16 v17, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$3300(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_3

    .line 4504
    :cond_b
    const-class v17, Lcom/android/internal/telephony/MobileNetwork$Menu;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 4505
    new-instance v10, Lcom/android/internal/telephony/MobileNetwork$Menu;

    invoke-direct {v10}, Lcom/android/internal/telephony/MobileNetwork$Menu;-><init>()V

    .line 4506
    .local v10, "menu":Lcom/android/internal/telephony/MobileNetwork$Menu;
    iput-object v15, v10, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 4508
    iput-object v10, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_3

    .line 4510
    .end local v10    # "menu":Lcom/android/internal/telephony/MobileNetwork$Menu;
    :cond_c
    const-class v17, Ljava/lang/Long;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 4511
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4512
    .local v9, "longSb":Ljava/lang/StringBuilder;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->ready()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 4513
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->read()I

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4515
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_3

    .line 4517
    .end local v9    # "longSb":Ljava/lang/StringBuilder;
    :cond_e
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 4518
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4519
    .restart local v9    # "longSb":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->ready()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 4520
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->read()I

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4522
    :cond_f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    goto/16 :goto_3

    .line 4524
    .end local v9    # "longSb":Ljava/lang/StringBuilder;
    :cond_10
    const-class v17, Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 4525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 4526
    .local v8, "intSb":Ljava/lang/StringBuilder;
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->ready()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 4527
    invoke-virtual/range {v16 .. v16}, Ljava/io/CharArrayReader;->read()I

    move-result v17

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 4529
    :cond_11
    new-instance v14, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v14}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    .line 4530
    .local v14, "selection":Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 4532
    iput-object v14, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 4475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static logCacheUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "update"    # Ljava/lang/String;

    .prologue
    .line 4731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4732
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4733
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4734
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4735
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4736
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4737
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4738
    const-string v1, "LibMobileNetwork"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    return-void
.end method

.method private static updateCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$CachedSetting;)Ljava/lang/String;
    .locals 18
    .param p1, "update"    # Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ">;",
            "Lcom/android/internal/telephony/MobileNetwork$CachedSetting;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4605
    .local p0, "allStatus":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    const/4 v5, 0x0

    .line 4606
    .local v5, "encodedLine":Ljava/lang/String;
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 4607
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    move-result-object v3

    .line 4608
    .local v3, "current":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v3, :cond_6

    .line 4609
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    iput-object v13, v3, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    .line 4610
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    iput-object v13, v3, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    .line 4662
    :cond_0
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4663
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .line 4664
    .local v4, "eachStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v4, :cond_1

    .line 4665
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 4666
    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4668
    :cond_2
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    if-eqz v13, :cond_3

    .line 4669
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    invoke-static {v13}, Lcom/android/internal/telephony/MobileNetwork$Selection;->access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    :cond_3
    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4672
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    if-eqz v13, :cond_5

    .line 4673
    new-instance v12, Ljava/io/CharArrayWriter;

    invoke-direct {v12}, Ljava/io/CharArrayWriter;-><init>()V

    .line 4674
    .local v12, "writer":Ljava/io/CharArrayWriter;
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v13, :cond_12

    .line 4675
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 4690
    :cond_4
    :goto_2
    invoke-virtual {v12}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4692
    .end local v12    # "writer":Ljava/io/CharArrayWriter;
    :cond_5
    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4693
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    if-eqz v13, :cond_1

    .line 4694
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->cachedTime:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4616
    .end local v4    # "eachStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    if-nez v13, :cond_7

    .line 4617
    invoke-virtual/range {p0 .. p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 4620
    :cond_7
    const/4 v7, 0x0

    .line 4621
    .local v7, "index":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-ge v7, v13, :cond_0

    .line 4622
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "current":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    check-cast v3, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;

    .line 4623
    .restart local v3    # "current":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    if-eqz v3, :cond_a

    iget-object v13, v3, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    if-eqz v13, :cond_a

    .line 4624
    const/4 v8, 0x0

    .line 4625
    .local v8, "performInsert":Z
    const/4 v2, 0x0

    .line 4626
    .local v2, "comparePhoneType":Z
    iget-object v13, v3, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-nez v13, :cond_c

    .line 4627
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-nez v13, :cond_b

    const/4 v2, 0x1

    .line 4642
    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 4644
    iget-object v13, v3, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v13, :cond_9

    .line 4645
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-nez v13, :cond_10

    const/4 v8, 0x1

    .line 4646
    :goto_5
    if-nez v8, :cond_9

    .line 4647
    iget-object v13, v3, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v14, v14, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v13, v14, :cond_11

    const/4 v8, 0x1

    .line 4652
    :cond_9
    :goto_6
    if-eqz v8, :cond_a

    .line 4653
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 4654
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->size()I

    move-result v7

    .line 4657
    .end local v2    # "comparePhoneType":Z
    .end local v8    # "performInsert":Z
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4627
    .restart local v2    # "comparePhoneType":Z
    .restart local v8    # "performInsert":Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 4630
    :cond_c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-nez v13, :cond_d

    const/4 v8, 0x1

    .line 4631
    :goto_7
    if-nez v8, :cond_8

    .line 4632
    iget-object v13, v3, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v10, v14, v16

    .line 4634
    .local v10, "slotOffset":J
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_e

    .line 4635
    const/4 v8, 0x1

    goto :goto_4

    .line 4630
    .end local v10    # "slotOffset":J
    :cond_d
    const/4 v8, 0x0

    goto :goto_7

    .line 4638
    .restart local v10    # "slotOffset":J
    :cond_e
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-nez v13, :cond_f

    const/4 v2, 0x1

    :goto_8
    goto :goto_4

    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    .line 4645
    .end local v10    # "slotOffset":J
    :cond_10
    const/4 v8, 0x0

    goto :goto_5

    .line 4647
    :cond_11
    const/4 v8, 0x0

    goto :goto_6

    .line 4677
    .end local v2    # "comparePhoneType":Z
    .end local v7    # "index":I
    .end local v8    # "performInsert":Z
    .restart local v4    # "eachStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "writer":Ljava/io/CharArrayWriter;
    :cond_12
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v13, :cond_13

    .line 4678
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$2600(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    goto/16 :goto_2

    .line 4680
    :cond_13
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v13, :cond_14

    .line 4681
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/MobileNetwork$Menu;

    iget-object v13, v13, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    goto/16 :goto_2

    .line 4684
    :cond_14
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/Long;

    if-eqz v13, :cond_15

    .line 4685
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    goto/16 :goto_2

    .line 4687
    :cond_15
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 4688
    iget-object v13, v4, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->setting:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    goto/16 :goto_2

    .line 4698
    .end local v4    # "eachStatus":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v12    # "writer":Ljava/io/CharArrayWriter;
    :cond_16
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_17

    .line 4699
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4702
    .end local v3    # "current":Lcom/android/internal/telephony/MobileNetwork$CachedSetting;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_17
    return-object v5
.end method
