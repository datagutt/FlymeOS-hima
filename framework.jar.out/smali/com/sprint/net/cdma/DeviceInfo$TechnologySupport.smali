.class final enum Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/cdma/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TechnologySupport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

.field public static final enum CDMA2000_1X:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

.field public static final enum CDMA2000_HRPD:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

.field public static final enum GSM:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

.field public static final enum INITIAL:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

.field public static final enum LTE:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

.field public static final enum TDS:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

.field public static final enum UMTS:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    const-string v1, "INITIAL"

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->INITIAL:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    const-string v1, "CDMA2000_1X"

    const-string v2, "CDMA2000_1X"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->CDMA2000_1X:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    const-string v1, "CDMA2000_HRPD"

    const-string v2, "CDMA2000_HRPD"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->CDMA2000_HRPD:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    const-string v1, "GSM"

    const/4 v2, 0x3

    const-string v3, "GSM"

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->GSM:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    const-string v1, "UMTS"

    const-string v2, "UMTS"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->UMTS:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    const-string v1, "LTE"

    const/16 v2, 0x8

    const-string v3, "LTE"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->LTE:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    const-string v1, "TDS"

    const/4 v2, 0x6

    const/16 v3, 0x9

    const-string v4, "TDS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->TDS:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    sget-object v1, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->INITIAL:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->CDMA2000_1X:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->CDMA2000_HRPD:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->GSM:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->UMTS:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->LTE:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->TDS:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->$VALUES:[Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->value:I

    iput-object p4, p0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(I)Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;
    .locals 5

    invoke-static {}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->values()[Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->value:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->INITIAL:Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;
    .locals 1

    const-class v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;
    .locals 1

    sget-object v0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->$VALUES:[Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    invoke-virtual {v0}, [Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->name:Ljava/lang/String;

    return-object v0
.end method
