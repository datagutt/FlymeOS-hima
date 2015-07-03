.class public final enum Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
.super Ljava/lang/Enum;
.source "HtcRilExtendApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcRilExtendApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_AUTH_STATE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_CELL_LOCATION_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_COLOR_CODE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_ERROR_RATE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_LTE_BAND_SUPPORT:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_RADIO_INTERFACE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_RF_BAND_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_SYS_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum GET_TX_RX_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

.field public static final enum REQUEST_HTC_DM_CMD:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_CELL_LOCATION_INFO"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_CELL_LOCATION_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 23
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_RF_BAND_INFO"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_RF_BAND_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 24
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_ERROR_RATE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_ERROR_RATE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 25
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_COLOR_CODE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_COLOR_CODE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 26
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "REQUEST_HTC_DM_CMD"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->REQUEST_HTC_DM_CMD:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_SYS_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_SYS_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_TX_RX_INFO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_TX_RX_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_AUTH_STATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_AUTH_STATE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_RADIO_INTERFACE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_RADIO_INTERFACE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    const-string v1, "GET_LTE_BAND_SUPPORT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_LTE_BAND_SUPPORT:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    .line 19
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    sget-object v1, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_CELL_LOCATION_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_RF_BAND_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_ERROR_RATE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_COLOR_CODE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->REQUEST_HTC_DM_CMD:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_SYS_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_TX_RX_INFO:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_AUTH_STATE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_RADIO_INTERFACE:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->GET_LTE_BAND_SUPPORT:Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->$VALUES:[Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getIndex(Ljava/lang/String;)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v1, -0x1

    .line 46
    .local v1, "mapResult":I
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RilExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no mapping API: "

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
    .param p0, "index"    # I

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->values()[Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    move-result-object v2

    aget-object v1, v2, p0

    .line 60
    .local v1, "method":Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
    invoke-virtual {v1}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 67
    .end local v1    # "method":Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RilExt"

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

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->$VALUES:[Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;

    return-object v0
.end method
