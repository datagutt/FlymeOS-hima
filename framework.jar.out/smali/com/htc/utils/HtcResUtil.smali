.class public Lcom/htc/utils/HtcResUtil;
.super Ljava/lang/Object;
.source "HtcResUtil.java"


# static fields
.field private static final ALL_CAPS_LOCALE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HtcResUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "da"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "nb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "sv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/utils/HtcResUtil;->ALL_CAPS_LOCALE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/htc/utils/HtcResUtil;->ALL_CAPS_LOCALE:[Ljava/lang/String;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v7, v0, v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get language."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get locale."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get configuration."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v8, "HtcResUtil"

    const-string v9, "Fail to get res."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v8, "HtcResUtil"

    const-string v9, "Context is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
