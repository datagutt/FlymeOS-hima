.class public final Lcom/android/internal/telephony/HtcIsimData;
.super Ljava/lang/Object;
.source "HtcIsimData.java"


# static fields
.field public static final ADDRESS_TYPE_FQDN_KEY:Ljava/lang/String; = "address_type_fqdn"

.field public static final ADDRESS_TYPE_IPV4_KEY:Ljava/lang/String; = "address_type_ipv4"

.field public static final ADDRESS_TYPE_IPV6_KEY:Ljava/lang/String; = "address_type_ipv6"

.field public static mAid:Ljava/lang/String;

.field private static mBtid:Ljava/lang/String;

.field public static mCDMA_IMSI:Ljava/lang/String;

.field public static mCDMA_MDN:Ljava/lang/String;

.field public static mDOMAIN:Ljava/lang/String;

.field private static mFh:Lcom/android/internal/telephony/uicc/IsimFileHandler;

.field public static mGSM_IMSI:Ljava/lang/String;

.field public static mGSM_MSISDN:Ljava/lang/String;

.field private static mHasISIM:Z

.field public static mIMPI:Ljava/lang/String;

.field public static mIMPUList:[Ljava/lang/String;

.field private static mIsGBASupported:Z

.field private static mKeyLifetime:Ljava/lang/String;

.field public static mPCSCFList:Landroid/os/Bundle;

.field private static mRand:[B

.field private static mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    .line 64
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    .line 70
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    .line 76
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    .line 83
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 89
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    .line 96
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 102
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    .line 104
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 105
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mFh:Lcom/android/internal/telephony/uicc/IsimFileHandler;

    .line 107
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    .line 108
    sput-boolean v2, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    .line 109
    sput-boolean v2, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    .line 110
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    .line 111
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    .line 112
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMPU()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "phonetype"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v1, "gsm"

    .line 182
    .local v1, "gsm_type":Ljava/lang/String;
    const-string v0, "cdma"

    .line 183
    .local v0, "cdma_type":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 188
    :goto_0
    return-object v2

    .line 185
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-object v0
.end method

.method public static GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "phonetype"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v1, "gsm"

    .line 195
    .local v1, "gsm_type":Ljava/lang/String;
    const-string v0, "cdma"

    .line 196
    .local v0, "cdma_type":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 201
    :goto_0
    return-object v2

    .line 198
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetPCSCF()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    return-object v0
.end method

.method public static GetRand()[B
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    return-object v0
.end method

.method public static GetSessionId()I
    .locals 1

    .prologue
    .line 176
    sget v0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    return v0
.end method

.method public static SetBtid(Ljava/lang/String;)V
    .locals 0
    .param p0, "btid"    # Ljava/lang/String;

    .prologue
    .line 308
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public static SetCDMA_IMSI(Ljava/lang/String;)V
    .locals 0
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 256
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public static SetCDMA_MDN(Ljava/lang/String;)V
    .locals 0
    .param p0, "mdn"    # Ljava/lang/String;

    .prologue
    .line 274
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public static SetDOMAIN(Ljava/lang/String;)V
    .locals 0
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 220
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public static SetGSM_IMSI(Ljava/lang/String;)V
    .locals 0
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 247
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public static SetGSM_MSISDN(Ljava/lang/String;)V
    .locals 0
    .param p0, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 265
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public static SetHasISIM(Z)V
    .locals 0
    .param p0, "hasISIM"    # Z

    .prologue
    .line 283
    sput-boolean p0, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    .line 284
    return-void
.end method

.method public static SetIMPI(Ljava/lang/String;)V
    .locals 0
    .param p0, "impi"    # Ljava/lang/String;

    .prologue
    .line 211
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public static SetIMPU([Ljava/lang/String;)V
    .locals 0
    .param p0, "impu"    # [Ljava/lang/String;

    .prologue
    .line 229
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    .line 230
    return-void
.end method

.method public static SetIsGBASupported(Z)V
    .locals 0
    .param p0, "gbaSupported"    # Z

    .prologue
    .line 292
    sput-boolean p0, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    .line 293
    return-void
.end method

.method public static SetKeyLifetime(Ljava/lang/String;)V
    .locals 0
    .param p0, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 316
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public static SetPCSCF(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "pcscf"    # Landroid/os/Bundle;

    .prologue
    .line 238
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    .line 239
    return-void
.end method

.method public static SetRand([B)V
    .locals 0
    .param p0, "rand"    # [B

    .prologue
    .line 300
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    .line 301
    return-void
.end method

.method public static SetSessionId(I)V
    .locals 0
    .param p0, "sessionId"    # I

    .prologue
    .line 325
    sput p0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    .line 326
    return-void
.end method

.method public static getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mFh:Lcom/android/internal/telephony/uicc/IsimFileHandler;

    return-object v0
.end method

.method public static hasISIM()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    return v0
.end method

.method public static isGBASupported()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    return v0
.end method

.method public static setAid(Ljava/lang/String;)V
    .locals 0
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    .line 335
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public static setIsimFh(Lcom/android/internal/telephony/uicc/IsimFileHandler;)V
    .locals 0
    .param p0, "Fh"    # Lcom/android/internal/telephony/uicc/IsimFileHandler;

    .prologue
    .line 348
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mFh:Lcom/android/internal/telephony/uicc/IsimFileHandler;

    .line 349
    return-void
.end method
