.class public final enum Lcom/sprint/net/MethodEnum;
.super Ljava/lang/Enum;
.source "MethodEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/MethodEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/MethodEnum;

.field public static final enum GET_AUTH_STATE:Lcom/sprint/net/MethodEnum;

.field public static final enum GET_CELL_LOCATION_INFO:Lcom/sprint/net/MethodEnum;

.field public static final enum GET_COLOR_CODE:Lcom/sprint/net/MethodEnum;

.field public static final enum GET_ERROR_RATE:Lcom/sprint/net/MethodEnum;

.field public static final enum GET_LTE_BAND_SUPPORT:Lcom/sprint/net/MethodEnum;

.field public static final enum GET_RADIO_INTERFACE:Lcom/sprint/net/MethodEnum;

.field public static final enum GET_RF_BAND_INFO:Lcom/sprint/net/MethodEnum;

.field public static final enum GET_SYS_INFO:Lcom/sprint/net/MethodEnum;

.field public static final enum GET_TX_RX_INFO:Lcom/sprint/net/MethodEnum;

.field public static final enum REQUEST_HTC_DM_CMD:Lcom/sprint/net/MethodEnum;

.field private static final TAG:Ljava/lang/String; = "MethodEnum"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_CELL_LOCATION_INFO"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_CELL_LOCATION_INFO:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_RF_BAND_INFO"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_RF_BAND_INFO:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_ERROR_RATE"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_ERROR_RATE:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_COLOR_CODE"

    invoke-direct {v0, v1, v6}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_COLOR_CODE:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "REQUEST_HTC_DM_CMD"

    invoke-direct {v0, v1, v7}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->REQUEST_HTC_DM_CMD:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_SYS_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_SYS_INFO:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_TX_RX_INFO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_TX_RX_INFO:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_AUTH_STATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_AUTH_STATE:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_RADIO_INTERFACE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_RADIO_INTERFACE:Lcom/sprint/net/MethodEnum;

    new-instance v0, Lcom/sprint/net/MethodEnum;

    const-string v1, "GET_LTE_BAND_SUPPORT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/MethodEnum;->GET_LTE_BAND_SUPPORT:Lcom/sprint/net/MethodEnum;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sprint/net/MethodEnum;

    sget-object v1, Lcom/sprint/net/MethodEnum;->GET_CELL_LOCATION_INFO:Lcom/sprint/net/MethodEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/MethodEnum;->GET_RF_BAND_INFO:Lcom/sprint/net/MethodEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/MethodEnum;->GET_ERROR_RATE:Lcom/sprint/net/MethodEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/net/MethodEnum;->GET_COLOR_CODE:Lcom/sprint/net/MethodEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sprint/net/MethodEnum;->REQUEST_HTC_DM_CMD:Lcom/sprint/net/MethodEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sprint/net/MethodEnum;->GET_SYS_INFO:Lcom/sprint/net/MethodEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sprint/net/MethodEnum;->GET_TX_RX_INFO:Lcom/sprint/net/MethodEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sprint/net/MethodEnum;->GET_AUTH_STATE:Lcom/sprint/net/MethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sprint/net/MethodEnum;->GET_RADIO_INTERFACE:Lcom/sprint/net/MethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sprint/net/MethodEnum;->GET_LTE_BAND_SUPPORT:Lcom/sprint/net/MethodEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/net/MethodEnum;->$VALUES:[Lcom/sprint/net/MethodEnum;

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

.method public static getIndex(Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/sprint/net/MethodEnum;->valueOf(Ljava/lang/String;)Lcom/sprint/net/MethodEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/net/MethodEnum;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "MethodEnum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no mapping API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/sprint/net/MethodEnum;->values()[Lcom/sprint/net/MethodEnum;

    move-result-object v2

    aget-object v1, v2, p0

    invoke-virtual {v1}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "MethodEnum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getString: index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/MethodEnum;
    .locals 1

    const-class v0, Lcom/sprint/net/MethodEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/MethodEnum;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/MethodEnum;
    .locals 1

    sget-object v0, Lcom/sprint/net/MethodEnum;->$VALUES:[Lcom/sprint/net/MethodEnum;

    invoke-virtual {v0}, [Lcom/sprint/net/MethodEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/MethodEnum;

    return-object v0
.end method
