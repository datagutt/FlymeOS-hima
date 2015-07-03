.class public final Landroid/provider/Telephony$Sms$Inbox;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Inbox"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 922
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .locals 10
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z

    .prologue
    .line 964
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;
    .locals 14
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "nIndexOnSim"    # I

    .prologue
    .line 978
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-wide v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v12, p8

    invoke-static/range {v0 .. v12}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Landroid/net/Uri;
    .locals 14
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "sIndexes"    # Ljava/lang/String;

    .prologue
    .line 992
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-wide v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v12, p8

    invoke-static/range {v0 .. v12}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;I)Landroid/net/Uri;
    .locals 14
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "sIndexes"    # Ljava/lang/String;
    .param p9, "phonetype"    # I

    .prologue
    .line 1007
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-wide v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z

    .prologue
    .line 945
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z
    .param p6, "nIndexOnSim"    # I

    .prologue
    .line 972
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v12, p6

    invoke-static/range {v0 .. v12}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z
    .param p6, "sIndexes"    # Ljava/lang/String;

    .prologue
    .line 986
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-static/range {v0 .. v12}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;I)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z
    .param p6, "sIndexes"    # Ljava/lang/String;
    .param p7, "phonetype"    # I

    .prologue
    .line 1001
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-static/range {v0 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addSIMMessage(JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIII)Landroid/net/Uri;
    .locals 16
    .param p0, "subId"    # J
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z
    .param p8, "threadId"    # J
    .param p10, "simsms"    # I
    .param p11, "simindex"    # I
    .param p12, "phoneType"    # I

    .prologue
    .line 1039
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-static/range {v0 .. v14}, Landroid/provider/Telephony$Sms;->addSIMMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIII)Landroid/net/Uri;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z
    .param p6, "threadId"    # J
    .param p8, "simsms"    # I
    .param p9, "simindex"    # I
    .param p10, "phoneType"    # I

    .prologue
    .line 1033
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v0 .. v14}, Landroid/provider/Telephony$Sms;->addSIMMessageToUri(JLandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
