.class public Lcom/android/internal/telephony/test/FakeSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FakeSmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;
    }
.end annotation


# static fields
.field private static final CDMA_FAKE_SMS:I = 0x1

.field public static CDMA_FAKE_SMS_ACTION:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final FAKE_CDMA_SMS_MESSAGE:I = 0x1

.field private static final FAKE_GSM_CB_MESSAGE:I = 0x3

.field private static final FAKE_GSM_SMS_MESSAGE:I = 0x2

.field public static GSM_FAKE_CB_ACTION:Ljava/lang/String; = null

.field private static final GSM_FAKE_SMS:I = 0x2

.field public static GSM_FAKE_SMS_ACTION:Ljava/lang/String; = null

.field private static final HTC_DEBUG:Z

.field private static final LOCAL_LOGV:Z = true

.field private static final NUMBERING_PLAN_DATA:B = 0x3t

.field private static final NUMBERING_PLAN_PRIVATE:B = 0x9t

.field private static final NUMBERING_PLAN_TELEPHONY:B = 0x1t

.field private static final NUMBERING_PLAN_TELEX:B = 0x4t

.field private static final NUMBERING_PLAN_UNKNOWN:B = 0x0t

.field private static final NUMBERING_TYPE_ABBREVIATED:B = 0x6t

.field private static final NUMBERING_TYPE_INTERNATIONAL:B = 0x1t

.field private static final NUMBERING_TYPE_INTERNET_EMAIL_ADDRESS:B = 0x2t

.field private static final NUMBERING_TYPE_INTERNET_PROTOCOL:B = 0x1t

.field private static final NUMBERING_TYPE_NATIONAL:B = 0x2t

.field private static final NUMBERING_TYPE_NETWORK_SPECIFIC:B = 0x3t

.field private static final NUMBERING_TYPE_SUBSCRIBER:B = 0x4t

.field private static final NUMBERING_TYPE_UNKNOWN:B = 0x0t

.field private static final SUBADDRESS_TYPE_NSAP:B = 0x0t

.field private static final SUBADDRESS_TYPE_USER_SPECIFIED:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "FakeSmsReceiver"

.field private static final TYPE_ABBREVIATED:I = 0x5

.field private static final TYPE_INTERNATIONAL:I = 0x1

.field private static final TYPE_INTERNET_EMAIL_ADDRESS:I = 0x8

.field private static final TYPE_INTERNET_PROTOCOL:I = 0x7

.field private static final TYPE_NATIONAL:I = 0x2

.field private static final TYPE_NETWORK_SPECIFIC:I = 0x3

.field private static final TYPE_RESERVED:I = 0x9

.field private static final TYPE_SUBSCRIBER:I = 0x4

.field private static final TYPE_UNKNOWN:I = 0x0

.field private static final TYPE_UNKNOWN_DATA_NETWORK:I = 0x6

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field private static mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;


# instance fields
.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:B

.field private dataEnd:I

.field public mCdmaInboundSmsHandler1:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field public mCdmaInboundSmsHandler2:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private mContext:Landroid/content/Context;

.field public mGsmInboundSmsHandler1:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field public mGsmInboundSmsHandler2:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

.field private mMsgType:B

.field private mParcel:Landroid/os/Parcel;

.field private mSenderThread:Landroid/os/HandlerThread;

.field private m_filter:Landroid/content/IntentFilter;

.field private param_len:S

.field private smsData:[B

.field private startBitIndex_decodeAddress:I

.field private startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dtmfDigitToAscII:[B

    .line 106
    const-string v0, "com.android.mms.CDMAfakesms"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    .line 107
    const-string v0, "com.android.mms.GSMfakesms"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    .line 108
    const-string v0, "com.android.mms.GSMfakecb"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    return-void

    .line 80
    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x7s
        0xfs
        0x1fs
        0x3fs
        0x7fs
        0xffs
    .end array-data

    .line 81
    nop

    :array_1
    .array-data 1
        0x0t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    .line 89
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 90
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 91
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    .line 99
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 111
    const-string v0, "FakeSmsReceiver"

    const-string v1, "New FakeSmsThread! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FakeSmsThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;-><init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, p0, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/test/FakeSmsReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/test/FakeSmsReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->parseCdmaSMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/test/FakeSmsReceiver;)Landroid/os/Parcel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method private decodeAddress(IZI)[B
    .locals 9
    .param p1, "startBitIndex"    # I
    .param p2, "dtmfDigit"    # Z
    .param p3, "numberingType"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 290
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-object v1

    .line 294
    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v3

    .line 295
    .local v3, "numberOfCharacters":I
    add-int/lit8 p1, p1, 0x8

    .line 296
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 298
    if-nez v3, :cond_2

    .line 299
    iput p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    goto :goto_0

    .line 306
    :cond_2
    if-eqz p2, :cond_3

    .line 307
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    .line 311
    new-array v1, v3, [B

    .line 312
    .local v1, "addressDecoded":[B
    const/4 v0, 0x0

    .local v0, "addrIndex":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 313
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 314
    add-int/lit8 p1, p1, 0x4

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "addrIndex":I
    .end local v1    # "addressDecoded":[B
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    shl-int/lit8 v5, v3, 0x3

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    .line 321
    packed-switch p3, :pswitch_data_0

    .line 328
    new-array v1, v3, [B

    .line 329
    .restart local v1    # "addressDecoded":[B
    const/4 v0, 0x0

    .restart local v0    # "addrIndex":I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 330
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 331
    add-int/lit8 p1, p1, 0x8

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 324
    .end local v0    # "addrIndex":I
    .end local v1    # "addressDecoded":[B
    :pswitch_0
    invoke-direct {p0, p1, v6, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStreamIntoBytes(III)[B

    move-result-object v1

    .line 325
    .restart local v1    # "addressDecoded":[B
    shl-int/lit8 v4, v3, 0x3

    add-int/2addr p1, v4

    .line 336
    :cond_4
    if-ne p3, v8, :cond_5

    .line 337
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [B

    .line 338
    .local v2, "addressInternational":[B
    const/16 v4, 0x2b

    aput-byte v4, v2, v7

    .line 339
    array-length v4, v1

    invoke-static {v1, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 340
    move-object v1, v2

    .line 342
    .end local v2    # "addressInternational":[B
    :cond_5
    iput p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBCDnumber(I)I
    .locals 4
    .param p1, "bcdOctet"    # I

    .prologue
    const/16 v3, 0x9

    .line 424
    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 425
    .local v0, "highBCD":I
    and-int/lit8 v1, p1, 0xf

    .line 426
    .local v1, "lowBCD":I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 427
    :cond_0
    const/4 v2, 0x0

    .line 429
    :goto_0
    return v2

    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method private decodeBitStream(II)I
    .locals 8
    .param p1, "startBitIndex"    # I
    .param p2, "lengthOfBits"    # I

    .prologue
    const/16 v7, 0x8

    .line 349
    shr-int/lit8 v2, p1, 0x3

    .line 350
    .local v2, "bytesOffset":I
    and-int/lit8 v0, p1, 0x7

    .line 351
    .local v0, "bitsOffset":I
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    .line 353
    .local v4, "returnValue":I
    add-int v5, v0, p2

    if-gt v5, v7, :cond_1

    .line 354
    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p2

    shr-int v5, v4, v5

    sget-object v6, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    aget-short v6, v6, p2

    and-int v4, v5, v6

    .line 370
    :cond_0
    :goto_0
    return v4

    .line 357
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    .line 358
    add-int/lit8 v3, v2, 0x1

    .line 359
    .local v3, "bytesOffsetRemaining":I
    rsub-int/lit8 v5, v0, 0x8

    sub-int v1, p2, v5

    .line 360
    .local v1, "bitsRemaining":I
    :goto_1
    if-le v1, v7, :cond_2

    .line 361
    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 362
    add-int/lit8 v3, v3, 0x1

    .line 363
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 365
    :cond_2
    if-lez v1, :cond_0

    .line 366
    shl-int v5, v4, v1

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v6, v6, v3

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v6, v7

    sget-object v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    aget-short v7, v7, v1

    and-int/2addr v6, v7

    or-int v4, v5, v6

    goto :goto_0
.end method

.method private decodeBitStreamIntoBytes(III)[B
    .locals 3
    .param p1, "startBitIndex"    # I
    .param p2, "lengthOfBits"    # I
    .param p3, "lengthOfBytes"    # I

    .prologue
    .line 276
    new-array v0, p3, [B

    .line 279
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    .local v1, "copyIndex":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 281
    add-int/2addr p1, p2

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v0
.end method

.method private decodeParameter_header()B
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 190
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    move v0, v1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v0, v2, v3

    .line 195
    .local v0, "param_id":B
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    .line 196
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 197
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 198
    goto :goto_0
.end method

.method private decodeTransportParamAddress()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 374
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v7, v10

    if-ge v7, v8, :cond_1

    .line 420
    :cond_0
    return-void

    .line 378
    :cond_1
    const/4 v2, 0x0

    .line 379
    .local v2, "TransportParam_fromAddrType":I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0x80

    shr-int/lit8 v3, v7, 0x7

    .line 380
    .local v3, "digitMode":I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v7, v7, v10

    and-int/lit8 v7, v7, 0x40

    shr-int/lit8 v5, v7, 0x6

    .line 384
    .local v5, "numberMode":I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    shl-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v7, 0x2

    .line 389
    .local v6, "startBitIndex":I
    if-eqz v3, :cond_4

    .line 390
    if-eqz v5, :cond_2

    move v7, v8

    :goto_0
    const/4 v10, 0x3

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v10

    int-to-byte v10, v10

    invoke-direct {p0, v7, v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->translateAddrNumberType(ZB)I

    move-result v2

    .line 391
    add-int/lit8 v6, v6, 0x3

    .line 393
    if-nez v5, :cond_3

    .line 394
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v10, v6, 0x4

    add-int/lit8 v10, v10, 0x7

    shr-int/lit8 v10, v10, 0x3

    if-lt v7, v10, :cond_0

    .line 398
    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    int-to-byte v1, v7

    .line 399
    .local v1, "TransportParam_fromAddrPlan":I
    add-int/lit8 v6, v6, 0x4

    .line 410
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    if-nez v3, :cond_5

    :goto_2
    invoke-direct {p0, v6, v8, v2}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeAddress(IZI)[B

    move-result-object v0

    .line 414
    .local v0, "TransportParam_fromAddr":[B
    if-eqz v0, :cond_0

    .line 416
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v7, v0

    if-ge v4, v7, :cond_0

    .line 417
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    aget-byte v8, v0, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0    # "TransportParam_fromAddr":[B
    .end local v1    # "TransportParam_fromAddrPlan":I
    .end local v4    # "i":I
    :cond_2
    move v7, v9

    .line 390
    goto :goto_0

    .line 402
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "TransportParam_fromAddrPlan":I
    goto :goto_1

    .line 406
    .end local v1    # "TransportParam_fromAddrPlan":I
    :cond_4
    const/4 v2, 0x0

    .line 407
    const/4 v1, 0x0

    .restart local v1    # "TransportParam_fromAddrPlan":I
    goto :goto_1

    :cond_5
    move v8, v9

    .line 413
    goto :goto_2
.end method

.method private decodeTransportParamServiceCategory()V
    .locals 4

    .prologue
    .line 217
    iget v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 224
    .local v0, "service":I
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private decodeTransportParamSubAddress()I
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v7, 0x0

    .line 435
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    move v4, v7

    .line 549
    :cond_0
    :goto_0
    return v4

    .line 439
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xe0

    shr-int/lit8 v8, v8, 0x5

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    .line 440
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    shr-int/lit8 v5, v8, 0x4

    .line 441
    .local v5, "oddCHARi":I
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int v4, v8, v9

    .line 444
    .local v4, "numberOfCharacters":I
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    if-nez v4, :cond_2

    move v4, v7

    .line 449
    goto :goto_0

    .line 451
    :cond_2
    shl-int/lit8 v8, v4, 0x1

    sub-int v4, v8, v5

    .line 452
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v8, v9

    shr-int/lit8 v9, v4, 0x1

    add-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_3

    move v4, v7

    .line 453
    goto :goto_0

    .line 456
    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    shl-int/lit8 v8, v8, 0x3

    add-int/lit8 v6, v8, 0xc

    .line 460
    .local v6, "startBitIndex":I
    iget-byte v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    packed-switch v8, :pswitch_data_0

    move v4, v7

    .line 546
    goto :goto_0

    .line 462
    :pswitch_0
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x8

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_4

    move v4, v7

    .line 463
    goto :goto_0

    .line 465
    :cond_4
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v2

    .line 466
    .local v2, "afiField":I
    add-int/lit8 v6, v6, 0x8

    .line 467
    add-int/lit8 v4, v4, -0x2

    .line 469
    sparse-switch v2, :sswitch_data_0

    move v4, v7

    .line 537
    goto :goto_0

    .line 471
    :sswitch_0
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x10

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_5

    move v4, v7

    .line 472
    goto/16 :goto_0

    .line 474
    :cond_5
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBCDnumber(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    add-int/lit8 v9, v6, 0x8

    invoke-direct {p0, v9, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBCDnumber(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-short v0, v8

    .line 476
    .local v0, "NSAP_internetCodePoint":S
    add-int/lit8 v6, v6, 0x10

    .line 478
    packed-switch v0, :pswitch_data_1

    move v4, v7

    .line 508
    goto/16 :goto_0

    .line 480
    :pswitch_1
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit16 v9, v6, 0x80

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_6

    move v4, v7

    .line 481
    goto/16 :goto_0

    .line 483
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 484
    .local v3, "ipAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "addrIndex":I
    :goto_1
    if-ge v1, v11, :cond_8

    .line 485
    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    add-int/lit8 v6, v6, 0x10

    .line 487
    const/4 v7, 0x7

    if-ge v1, v7, :cond_7

    .line 488
    new-instance v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 484
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 494
    .end local v1    # "addrIndex":I
    .end local v3    # "ipAddress":Ljava/lang/String;
    :pswitch_2
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x20

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_9

    move v4, v7

    .line 495
    goto/16 :goto_0

    .line 497
    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 498
    .restart local v3    # "ipAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_2
    if-ge v1, v12, :cond_b

    .line 499
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    add-int/lit8 v6, v6, 0x8

    .line 501
    const/4 v7, 0x3

    if-ge v1, v7, :cond_a

    .line 502
    new-instance v7, Ljava/lang/String;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 505
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 512
    .end local v0    # "NSAP_internetCodePoint":S
    .end local v1    # "addrIndex":I
    .end local v3    # "ipAddress":Ljava/lang/String;
    :sswitch_1
    shr-int/lit8 v4, v4, 0x1

    .line 513
    const/16 v7, 0x13

    if-le v4, v7, :cond_c

    .line 515
    const/16 v4, 0x13

    .line 517
    :cond_c
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 518
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_3
    if-ge v1, v4, :cond_0

    .line 519
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 520
    add-int/lit8 v6, v6, 0x8

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 524
    .end local v1    # "addrIndex":I
    :sswitch_2
    shr-int/lit8 v4, v4, 0x1

    .line 525
    const/16 v7, 0x9

    if-le v4, v7, :cond_d

    .line 527
    const/16 v4, 0x9

    .line 529
    :cond_d
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 530
    const/4 v1, 0x0

    .restart local v1    # "addrIndex":I
    :goto_4
    if-ge v1, v4, :cond_0

    .line 531
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 532
    add-int/lit8 v6, v6, 0x8

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 541
    .end local v1    # "addrIndex":I
    .end local v2    # "afiField":I
    :pswitch_3
    invoke-direct {p0, v6, v12, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStreamIntoBytes(III)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 542
    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    .line 544
    goto/16 :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch

    .line 478
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeTransportParamTeleserviceId()V
    .locals 4

    .prologue
    .line 205
    iget v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 211
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 682
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 684
    iput-byte v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    .line 685
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    .line 686
    iput-byte v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    .line 687
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 688
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 689
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 690
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    .line 691
    return-void
.end method

.method private parseCdmaSMS(Ljava/lang/String;)V
    .locals 9
    .param p1, "pdu"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 556
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->init()V

    .line 557
    const/4 v3, -0x1

    .line 558
    .local v3, "preParam_id":I
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    .line 563
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 564
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v4, v4, v7

    iput-byte v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    .line 565
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    array-length v4, v4

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeParameter_header()B

    move-result v2

    .line 569
    .local v2, "param_id":B
    iget v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 570
    .local v0, "current_dataEnd":I
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    iget-short v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 571
    packed-switch v2, :pswitch_data_0

    .line 641
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 642
    iput v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 643
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    if-gt v4, v5, :cond_0

    .line 646
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 647
    const-string v4, "Jerry1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mParcel.size >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void

    .line 573
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamTeleserviceId()V

    .line 574
    const/4 v3, 0x0

    .line 575
    goto :goto_0

    .line 577
    :pswitch_2
    if-gez v3, :cond_1

    .line 578
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 580
    const-string v4, "FakeSmsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set empty tele id. type>0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v3, 0x0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamServiceCategory()V

    .line 584
    const/4 v3, 0x1

    .line 585
    goto :goto_0

    .line 587
    :pswitch_3
    if-nez v3, :cond_2

    .line 588
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    const/4 v3, 0x1

    .line 591
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamAddress()V

    .line 592
    const/4 v3, 0x2

    .line 593
    goto :goto_0

    .line 595
    :pswitch_4
    if-nez v3, :cond_3

    .line 596
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v3, 0x1

    .line 599
    :cond_3
    if-ne v3, v8, :cond_4

    .line 600
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 605
    const/4 v3, 0x2

    .line 607
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamSubAddress()I

    move-result v4

    if-lez v4, :cond_5

    .line 608
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 609
    :cond_5
    const/4 v3, 0x3

    .line 610
    goto/16 :goto_0

    .line 612
    :pswitch_5
    if-nez v3, :cond_6

    .line 613
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v3, 0x1

    .line 616
    :cond_6
    if-ne v3, v8, :cond_7

    .line 617
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 622
    const/4 v3, 0x2

    .line 625
    :cond_7
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 626
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 631
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-short v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-short v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    if-ge v1, v4, :cond_9

    .line 633
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    :cond_9
    const/16 v3, 0x8

    .line 637
    goto/16 :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static registerReceiver(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;I)Lcom/android/internal/telephony/test/FakeSmsReceiver;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inboundSmsHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "phoneId"    # I

    .prologue
    .line 125
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-nez v0, :cond_1

    .line 126
    const-class v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 130
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    const-string v0, "FakeSmsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-nez p2, :cond_4

    .line 135
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_3

    .line 136
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .end local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaInboundSmsHandler1:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 147
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    return-object v0

    .line 130
    .restart local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 137
    :cond_3
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_2

    .line 138
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .end local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler1:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_0

    .line 140
    .restart local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 141
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_5

    .line 142
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .end local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaInboundSmsHandler2:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    goto :goto_0

    .line 143
    .restart local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_5
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_2

    .line 144
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .end local p1    # "inboundSmsHandler":Lcom/android/internal/telephony/InboundSmsHandler;
    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmInboundSmsHandler2:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_0
.end method

.method private translateAddrNumberType(ZB)I
    .locals 2
    .param p1, "dataNetwork"    # Z
    .param p2, "numberType"    # B

    .prologue
    .line 231
    const/16 v0, 0x9

    .line 232
    .local v0, "returnValue":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 233
    packed-switch p2, :pswitch_data_0

    .line 271
    :goto_0
    return v0

    .line 235
    :pswitch_0
    const/4 v0, 0x6

    .line 236
    goto :goto_0

    .line 238
    :pswitch_1
    const/4 v0, 0x7

    .line 239
    goto :goto_0

    .line 241
    :pswitch_2
    const/16 v0, 0x8

    .line 242
    goto :goto_0

    .line 248
    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 250
    :pswitch_4
    const/4 v0, 0x0

    .line 251
    goto :goto_0

    .line 253
    :pswitch_5
    const/4 v0, 0x1

    .line 254
    goto :goto_0

    .line 256
    :pswitch_6
    const/4 v0, 0x2

    .line 257
    goto :goto_0

    .line 259
    :pswitch_7
    const/4 v0, 0x3

    .line 260
    goto :goto_0

    .line 262
    :pswitch_8
    const/4 v0, 0x4

    .line 263
    goto :goto_0

    .line 265
    :pswitch_9
    const/4 v0, 0x5

    .line 266
    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 248
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    const-string v0, "FakeSmsReceiver"

    const-string v1, "dispose()> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 156
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 157
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 158
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iput-object v2, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 159
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 160
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iput-object v2, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 161
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    sput-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "FakeSmsReceiver"

    const-string v1, "dispose()> mThis is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    const-string v2, "Jerry1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received FakeSms Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v2, "pdu"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 183
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
