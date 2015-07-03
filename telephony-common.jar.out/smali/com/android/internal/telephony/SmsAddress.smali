.class public abstract Lcom/android/internal/telephony/SmsAddress;
.super Ljava/lang/Object;
.source "SmsAddress.java"


# static fields
.field public static final TON_ABBREVIATED:I = 0x6

.field public static final TON_ALPHANUMERIC:I = 0x5

.field public static final TON_INTERNATIONAL:I = 0x1

.field public static final TON_NATIONAL:I = 0x2

.field public static final TON_NETWORK:I = 0x3

.field public static final TON_SUBSCRIBER:I = 0x4

.field public static final TON_UNKNOWN:I


# instance fields
.field public address:Ljava/lang/String;

.field public origBytes:[B

.field public rawAddressBytes:[B

.field public rawSubAddressBytes:[B

.field public rawSubAddressOdd:I

.field public rawSubAddressType:I

.field public toa:I

.field public ton:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public couldBeEmailGateway()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getEmailGatewayNumber()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "gatewayNumber":Ljava/lang/String;
    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    .end local v0    # "gatewayNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
