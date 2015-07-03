.class public final Landroid/provider/Telephony$Sms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Sms$Intents;,
        Landroid/provider/Telephony$Sms$Conversations;,
        Landroid/provider/Telephony$Sms$Outbox;,
        Landroid/provider/Telephony$Sms$Draft;,
        Landroid/provider/Telephony$Sms$Sent;,
        Landroid/provider/Telephony$Sms$Inbox;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field private static final PHONE_NUMBER_SEPARATORS:Ljava/lang/String; = " ()-./"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 414
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    return-void
.end method

.method public static addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 12
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z

    .prologue
    .line 461
    const-wide/16 v10, -0x1

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 14
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z
    .param p10, "threadId"    # J

    .prologue
    .line 507
    const-string v12, ""

    const/4 v13, 0x0

    move-wide v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;
    .locals 16
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z
    .param p10, "threadId"    # J
    .param p12, "nIndexOnSim"    # I

    .prologue
    .line 526
    const/4 v2, 0x1

    move/from16 v0, p12

    if-ge v0, v2, :cond_0

    const-string v14, ""

    :goto_0
    const/4 v15, 0x0

    move-wide/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v15}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0
.end method

.method public static addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;)Landroid/net/Uri;
    .locals 14
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z
    .param p10, "threadId"    # J
    .param p12, "sIndexes"    # Ljava/lang/String;

    .prologue
    .line 541
    const/4 v13, 0x0

    move-wide v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;I)Landroid/net/Uri;
    .locals 8
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z
    .param p10, "threadId"    # J
    .param p12, "sIndexes"    # Ljava/lang/String;
    .param p13, "phoneType"    # I

    .prologue
    .line 557
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 558
    .local v4, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    if-lez p13, :cond_0

    .line 560
    new-instance v4, Landroid/content/ContentValues;

    .end local v4    # "values":Landroid/content/ContentValues;
    const/16 v5, 0xb

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 563
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v5, "sub_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    const-string v5, "address"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    if-eqz p7, :cond_1

    .line 566
    const-string v5, "date"

    invoke-virtual {v4, v5, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    :cond_1
    const-string v6, "read"

    if-eqz p8, :cond_6

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string v5, "subject"

    invoke-virtual {v4, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v5, "body"

    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v5, ""

    move-object/from16 v0, p12

    if-eq v0, v5, :cond_2

    .line 572
    const-string v5, "index_on_sim"

    move-object/from16 v0, p12

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_2
    if-eqz p9, :cond_3

    .line 574
    const-string v5, "status"

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v5, p10, v6

    if-eqz v5, :cond_4

    .line 577
    const-string v5, "thread_id"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    :cond_4
    const/4 v5, 0x2

    move/from16 v0, p13

    if-ne v0, v5, :cond_7

    .line 581
    const-string v5, "is_cdma_format"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 587
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 588
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v2

    .line 589
    .local v2, "slotId":I
    if-nez v2, :cond_8

    .line 590
    const-string v5, "sim_slot"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    .end local v2    # "slotId":I
    :cond_5
    :goto_2
    invoke-virtual {p2, p3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 568
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 583
    :cond_7
    const-string v5, "is_cdma_format"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 591
    .restart local v2    # "slotId":I
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 592
    const-string v5, "sim_slot"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method public static addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z
    .param p10, "threadId"    # J
    .param p12, "sIndexes"    # Ljava/lang/String;
    .param p13, "other"    # Landroid/content/ContentValues;

    .prologue
    .line 612
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 614
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "sub_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 615
    const-string v3, "address"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    if-eqz p7, :cond_0

    .line 617
    const-string v3, "date"

    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    :cond_0
    const-string v4, "read"

    if-eqz p8, :cond_5

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string v3, "subject"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v3, "body"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v3, ""

    move-object/from16 v0, p12

    if-eq v0, v3, :cond_1

    .line 623
    const-string v3, "index_on_sim"

    move-object/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_1
    if-eqz p9, :cond_2

    .line 625
    const-string v3, "status"

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    :cond_2
    const-wide/16 v4, -0x1

    cmp-long v3, p10, v4

    if-eqz v3, :cond_3

    .line 628
    const-string v3, "thread_id"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    :cond_3
    if-eqz p13, :cond_4

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 631
    :cond_4
    invoke-virtual {p2, p3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 619
    :cond_5
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method public static addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 8
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z
    .param p10, "threadId"    # J
    .param p12, "sIndexes"    # Ljava/lang/String;
    .param p13, "other"    # Landroid/content/ContentValues;
    .param p14, "phoneType"    # I

    .prologue
    .line 649
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 650
    .local v4, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 651
    new-instance v4, Landroid/content/ContentValues;

    .end local v4    # "values":Landroid/content/ContentValues;
    const/16 v5, 0xc

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 654
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v5, "sub_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 655
    const-string v5, "address"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    if-eqz p7, :cond_1

    .line 657
    const-string v5, "date"

    invoke-virtual {v4, v5, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 659
    :cond_1
    const-string v6, "read"

    if-eqz p8, :cond_7

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    const-string v5, "subject"

    invoke-virtual {v4, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v5, "body"

    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v5, ""

    move-object/from16 v0, p12

    if-eq v0, v5, :cond_2

    .line 663
    const-string v5, "index_on_sim"

    move-object/from16 v0, p12

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_2
    if-eqz p9, :cond_3

    .line 665
    const-string v5, "status"

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v5, p10, v6

    if-eqz v5, :cond_4

    .line 668
    const-string v5, "thread_id"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 672
    :cond_4
    const/4 v5, 0x2

    move/from16 v0, p14

    if-ne v0, v5, :cond_8

    .line 673
    const-string v5, "is_cdma_format"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 679
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 680
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v2

    .line 681
    .local v2, "slotId":I
    if-nez v2, :cond_9

    .line 682
    const-string v5, "sim_slot"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    .end local v2    # "slotId":I
    :cond_5
    :goto_2
    if-eqz p13, :cond_6

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 690
    :cond_6
    invoke-virtual {p2, p3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 659
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 675
    :cond_8
    const-string v5, "is_cdma_format"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 683
    .restart local v2    # "slotId":I
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 684
    const-string v5, "sim_slot"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z

    .prologue
    .line 439
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    const-wide/16 v10, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J

    .prologue
    .line 483
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    const-string v12, ""

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "nIndexOnSim"    # I

    .prologue
    .line 517
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    const/4 v4, 0x1

    move/from16 v0, p10

    if-ge v0, v4, :cond_0

    const-string v14, ""

    :goto_0
    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    invoke-static/range {v2 .. v15}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "sIndexes"    # Ljava/lang/String;

    .prologue
    .line 534
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;I)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "sIndexes"    # Ljava/lang/String;
    .param p11, "phoneType"    # I

    .prologue
    .line 550
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "sIndexes"    # Ljava/lang/String;
    .param p11, "other"    # Landroid/content/ContentValues;

    .prologue
    .line 605
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "sIndexes"    # Ljava/lang/String;
    .param p11, "other"    # Landroid/content/ContentValues;
    .param p12, "phoneType"    # I

    .prologue
    .line 641
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-static/range {v0 .. v14}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addSIMMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIII)Landroid/net/Uri;
    .locals 8
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/Long;
    .param p8, "read"    # Z
    .param p9, "deliveryReport"    # Z
    .param p10, "threadId"    # J
    .param p12, "simsms"    # I
    .param p13, "simindex"    # I
    .param p14, "phoneType"    # I

    .prologue
    .line 734
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 735
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "sub_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 736
    const-string v5, "address"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    if-eqz p7, :cond_0

    .line 738
    const-string v5, "date"

    invoke-virtual {v4, v5, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 740
    :cond_0
    const-string v6, "read"

    if-eqz p8, :cond_5

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    const-string v5, "subject"

    invoke-virtual {v4, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v5, "body"

    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    if-eqz p9, :cond_1

    .line 744
    const-string v5, "status"

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v5, p10, v6

    if-eqz v5, :cond_2

    .line 747
    const-string v5, "thread_id"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 753
    :cond_2
    if-lez p13, :cond_3

    .line 754
    const-string v5, "index_on_sim"

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_3
    const/4 v5, 0x2

    move/from16 v0, p14

    if-ne v0, v5, :cond_6

    .line 759
    const-string v5, "is_cdma_format"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 765
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 766
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 767
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v2

    .line 768
    .local v2, "slotId":I
    if-nez v2, :cond_7

    .line 769
    const-string v5, "sim_slot"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    .end local v2    # "slotId":I
    :cond_4
    :goto_2
    invoke-virtual {p2, p3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 740
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 761
    :cond_6
    const-string v5, "is_cdma_format"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 770
    .restart local v2    # "slotId":I
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 771
    const-string v5, "sim_slot"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method public static addSIMMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIII)Landroid/net/Uri;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "deliveryReport"    # Z
    .param p8, "threadId"    # J
    .param p10, "simsms"    # I
    .param p11, "simindex"    # I
    .param p12, "phoneType"    # I

    .prologue
    .line 727
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-static/range {v0 .. v14}, Landroid/provider/Telephony$Sms;->addSIMMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 395
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 398
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 864
    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOutgoingFolder(I)Z
    .locals 6
    .param p0, "messageType"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 833
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintRoamingGuard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 834
    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    const/16 v2, 0xc8

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 842
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_3

    const/4 v2, 0x6

    if-ne p0, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "recipient"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 883
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 884
    .local v3, "len":I
    const/4 v1, 0x0

    .line 886
    .local v1, "digits":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 887
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 889
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 890
    add-int/lit8 v1, v1, 0x1

    .line 886
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 893
    :cond_1
    const-string v5, " ()-./"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    .line 896
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    if-eqz v2, :cond_0

    .line 910
    .end local v0    # "c":C
    :cond_2
    :goto_1
    return v4

    .line 903
    :cond_3
    if-eqz v1, :cond_2

    .line 907
    const/16 v5, 0x14

    if-gt v3, v5, :cond_2

    .line 910
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "folder"    # I
    .param p3, "error"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 790
    if-nez p1, :cond_0

    .line 822
    :goto_0
    return v9

    .line 794
    :cond_0
    const/4 v7, 0x0

    .line 795
    .local v7, "markAsUnread":Z
    const/4 v6, 0x0

    .line 796
    .local v6, "markAsRead":Z
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 812
    :goto_1
    :pswitch_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 814
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    if-eqz v7, :cond_2

    .line 816
    const-string v0, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    :cond_1
    :goto_2
    const-string v0, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_3

    move v0, v8

    :goto_3
    move v9, v0

    goto :goto_0

    .line 802
    .end local v3    # "values":Landroid/content/ContentValues;
    :pswitch_1
    const/4 v6, 0x1

    .line 803
    goto :goto_1

    .line 806
    :pswitch_2
    const/4 v7, 0x1

    .line 807
    goto :goto_1

    .line 817
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    if-eqz v6, :cond_1

    .line 818
    const-string v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    move v0, v9

    .line 822
    goto :goto_3

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 402
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 407
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v5, "date DESC"

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method
