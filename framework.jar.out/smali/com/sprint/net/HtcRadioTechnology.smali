.class public final enum Lcom/sprint/net/HtcRadioTechnology;
.super Ljava/lang/Enum;
.source "HtcRadioTechnology.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/HtcRadioTechnology;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_EDGE:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_EHRPD:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_EVDO_0:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_EVDO_B:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_GPRS:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_GSM:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_HSDPA:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_HSPA:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_HSPAP:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_HSUPA:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_IS95A:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_IS95B:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_LTE:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_UMTS:Lcom/sprint/net/HtcRadioTechnology;

.field public static final enum RADIO_TECH_UNKNOWN:Lcom/sprint/net/HtcRadioTechnology;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_GPRS"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_GPRS:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_EDGE"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EDGE:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_UMTS"

    invoke-direct {v0, v1, v6}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_UMTS:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_IS95A"

    invoke-direct {v0, v1, v7}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_IS95A:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_IS95B"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_IS95B:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_1xRTT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_0"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_0:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_A"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_HSDPA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_HSDPA:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_HSUPA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_HSUPA:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_HSPA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_HSPA:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_B"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_B:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_EHRPD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EHRPD:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_LTE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_LTE:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_HSPAP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_HSPAP:Lcom/sprint/net/HtcRadioTechnology;

    new-instance v0, Lcom/sprint/net/HtcRadioTechnology;

    const-string v1, "RADIO_TECH_GSM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/HtcRadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_GSM:Lcom/sprint/net/HtcRadioTechnology;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/sprint/net/HtcRadioTechnology;

    sget-object v1, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_GPRS:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EDGE:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_UMTS:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_IS95A:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_IS95B:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_0:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_HSDPA:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_HSUPA:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_HSPA:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_B:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EHRPD:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_LTE:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_HSPAP:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_GSM:Lcom/sprint/net/HtcRadioTechnology;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/net/HtcRadioTechnology;->$VALUES:[Lcom/sprint/net/HtcRadioTechnology;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/HtcRadioTechnology;
    .locals 1

    const-class v0, Lcom/sprint/net/HtcRadioTechnology;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/HtcRadioTechnology;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/HtcRadioTechnology;
    .locals 1

    sget-object v0, Lcom/sprint/net/HtcRadioTechnology;->$VALUES:[Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v0}, [Lcom/sprint/net/HtcRadioTechnology;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/HtcRadioTechnology;

    return-object v0
.end method
