.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrength$CustomizedUtil;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_DATA_TYPE:I = 0x65

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_LEVEL_5:I = 0x5

.field public static final SIGNAL_STRENGTH_LEVEL_6:I = 0x6

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field public static final SIGNAL_STRENGTH_VOICE_TYPE:I = 0x64

.field private static final VDBG:Z


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSignalBar:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcno:I

.field private mGsmSignalDbm:I

.field private mGsmSignalStrength:I

.field private mHtcLteRsrp:I

.field private mHtcLteRsrq:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTDRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x63

    const v0, 0x7fffffff

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p19}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p18}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->readHtcAddedFieldsFrom(Landroid/os/Parcel;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    return-void
.end method

.method private calculateHtcAddedFieldsHashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    add-int/2addr v0, v1

    return v0
.end method

.method private copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method private equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z
    .locals 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "GsmSignalDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GsmEcno"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoSignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "HtcLteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "HtcLteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private getAsiaLteLevel()I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x53

    if-lt v1, v2, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5d

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x67

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAttLteLevel()I
    .locals 4

    const/4 v0, 0x1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x55

    if-le v2, v3, :cond_0

    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5f

    if-le v2, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-le v2, v3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x73

    if-le v2, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x82

    if-lt v2, v3, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_7

    const/4 v1, 0x3

    goto :goto_1

    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x1e

    if-lt v2, v3, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    :cond_8
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getAusNzLteLevel()I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5a

    if-le v1, v2, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-le v1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCTLteLevel()I
    .locals 5

    const v4, 0x7fffffff

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v2, v4, :cond_6

    const/4 v0, 0x0

    :goto_1
    if-le v1, v0, :cond_b

    :goto_2
    return v0

    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-lt v2, v3, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x72

    if-lt v2, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x76

    if-lt v2, v3, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x7b

    if-lt v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x5a

    if-lt v2, v3, :cond_7

    const/4 v0, 0x4

    goto :goto_1

    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_8

    const/4 v0, 0x3

    goto :goto_1

    :cond_8
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x1e

    if-lt v2, v3, :cond_9

    const/4 v0, 0x2

    goto :goto_1

    :cond_9
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x32

    if-lt v2, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_2
.end method

.method private getCULteLevel(I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCmccLteLevel(I)I

    move-result v0

    return v0
.end method

.method private getCallState(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCdmaCTLevel(II)I
    .locals 3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v2, -0x55

    if-lt p1, v2, :cond_2

    const/4 v1, 0x4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, -0x5f

    if-lt p1, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const/16 v2, -0x64

    if-lt p1, v2, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/16 v2, -0x69

    if-lt p1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCdmaHtcLevel(III)I
    .locals 3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, -0x4b

    if-lt p1, v2, :cond_3

    const/4 v1, 0x4

    :goto_1
    move v0, v1

    const/4 v2, 0x5

    if-ne p3, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v2, -0x55

    if-lt p1, v2, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    const/16 v2, -0x5f

    if-lt p1, v2, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const/16 v2, -0x64

    if-lt p1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCdmaKDDILevel(II)I
    .locals 5

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq p2, v4, :cond_1

    const/16 v3, -0xa0

    if-ne p2, v3, :cond_7

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v2, :cond_c

    move v0, v1

    :goto_2
    return v0

    :cond_2
    const/16 v3, -0x62

    if-lt p1, v3, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/16 v3, -0x65

    if-lt p1, v3, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/16 v3, -0x68

    if-lt p1, v3, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const/16 v3, -0x6b

    if-lt p1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/16 v3, -0x64

    if-lt p2, v3, :cond_8

    const/4 v2, 0x4

    goto :goto_1

    :cond_8
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_9

    const/4 v2, 0x3

    goto :goto_1

    :cond_9
    const/16 v3, -0x82

    if-lt p2, v3, :cond_a

    const/4 v2, 0x2

    goto :goto_1

    :cond_a
    const/16 v3, -0x96

    if-lt p2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_1

    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_2
.end method

.method private getCdmaSPCSLevel(II)I
    .locals 7

    const/4 v6, -0x1

    const/16 v5, -0x5a

    const/16 v4, -0x78

    if-eq p1, v6, :cond_0

    if-ne p1, v4, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq p2, v6, :cond_1

    const/16 v3, -0xa0

    if-ne p2, v3, :cond_1

    :cond_1
    if-lt p2, v5, :cond_9

    const/4 v2, 0x6

    :goto_1
    if-ge v1, v2, :cond_f

    move v0, v1

    :goto_2
    return v0

    :cond_2
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_3

    const/4 v1, 0x6

    goto :goto_0

    :cond_3
    const/16 v3, -0x55

    if-lt p1, v3, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    if-lt p1, v5, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_6

    const/4 v1, 0x3

    goto :goto_0

    :cond_6
    const/16 v3, -0x64

    if-lt p1, v3, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    :cond_7
    const/16 v3, -0x69

    if-lt p1, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_a

    const/4 v2, 0x5

    goto :goto_1

    :cond_a
    if-lt p2, v4, :cond_b

    const/4 v2, 0x4

    goto :goto_1

    :cond_b
    const/16 v3, -0x82

    if-lt p2, v3, :cond_c

    const/4 v2, 0x3

    goto :goto_1

    :cond_c
    const/16 v3, -0x8c

    if-lt p2, v3, :cond_d

    const/4 v2, 0x2

    goto :goto_1

    :cond_d
    const/16 v3, -0x96

    if-lt p2, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_1

    :cond_e
    const/4 v2, 0x0

    goto :goto_1

    :cond_f
    move v0, v2

    goto :goto_2
.end method

.method private getCdmaVZWLevel(II)I
    .locals 6

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_4

    const/4 v1, 0x4

    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isApplyVerizonNewSignalMappingScheme()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eq p2, v5, :cond_3

    const/16 v3, -0xa0

    if-ne p2, v3, :cond_8

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v1, v2, :cond_d

    :goto_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v3, -0x55

    if-lt p1, v3, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    const/16 v3, -0x64

    if-lt p1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const/16 v3, -0x5a

    if-lt p2, v3, :cond_9

    const/4 v2, 0x4

    goto :goto_2

    :cond_9
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_a

    const/4 v2, 0x3

    goto :goto_2

    :cond_a
    const/16 v3, -0x82

    if-lt p2, v3, :cond_b

    const/4 v2, 0x2

    goto :goto_2

    :cond_b
    const/16 v3, -0x96

    if-lt p2, v3, :cond_c

    const/4 v2, 0x1

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    :cond_d
    move v1, v2

    goto :goto_3
.end method

.method private getCmccLteLevel(I)I
    .locals 5

    const/16 v4, -0x61

    const/16 v2, -0x69

    const/16 v3, -0x78

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v4, :cond_1

    const/4 v0, 0x5

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v4, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    :cond_7
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v2, :cond_8

    const/4 v0, 0x3

    goto :goto_0

    :cond_8
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_9

    const/4 v0, 0x2

    goto :goto_0

    :cond_9
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCombineNetworkType(Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getEvdoCTLevel(II)I
    .locals 3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v2, -0x5a

    if-lt p1, v2, :cond_2

    const/4 v1, 0x4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, -0x64

    if-lt p1, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const/16 v2, -0x69

    if-lt p1, v2, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/16 v2, -0x6e

    if-lt p1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getEvdoHtcLevel(III)I
    .locals 6

    const/16 v5, -0x4b

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isApplyVerizonNewSignalMappingScheme()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    if-lt p1, v5, :cond_3

    const/4 v1, 0x4

    :goto_1
    move v0, v1

    :goto_2
    const/4 v3, 0x5

    if-ne p3, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, -0x55

    if-lt p1, v3, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const/16 v3, -0x64

    if-lt p1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const/16 v3, -0x41

    if-lt p1, v3, :cond_8

    const/4 v1, 0x4

    :goto_3
    const/4 v3, 0x6

    if-le p2, v3, :cond_c

    const/4 v2, 0x4

    :goto_4
    if-ge v1, v2, :cond_10

    move v0, v1

    :goto_5
    goto :goto_2

    :cond_8
    if-lt p1, v5, :cond_9

    const/4 v1, 0x3

    goto :goto_3

    :cond_9
    const/16 v3, -0x5a

    if-lt p1, v3, :cond_a

    const/4 v1, 0x2

    goto :goto_3

    :cond_a
    const/16 v3, -0x69

    if-lt p1, v3, :cond_b

    const/4 v1, 0x1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    const/4 v3, 0x4

    if-le p2, v3, :cond_d

    const/4 v2, 0x3

    goto :goto_4

    :cond_d
    const/4 v3, 0x2

    if-le p2, v3, :cond_e

    const/4 v2, 0x2

    goto :goto_4

    :cond_e
    if-lez p2, :cond_f

    const/4 v2, 0x1

    goto :goto_4

    :cond_f
    const/4 v2, 0x0

    goto :goto_4

    :cond_10
    move v0, v2

    goto :goto_5
.end method

.method private getEvdoKDDILevel(II)I
    .locals 4

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x2

    if-lt p2, v3, :cond_6

    const/4 v2, 0x4

    :goto_1
    if-ge v1, v2, :cond_9

    move v0, v1

    :goto_2
    return v0

    :cond_1
    const/16 v3, -0x60

    if-lt p1, v3, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/16 v3, -0x63

    if-lt p1, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/16 v3, -0x66

    if-lt p1, v3, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/16 v3, -0x69

    if-lt p1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    if-lt p2, v3, :cond_7

    const/4 v2, 0x3

    goto :goto_1

    :cond_7
    if-ltz p2, :cond_8

    const/4 v2, 0x2

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method private getEvdoSPCSLevel(II)I
    .locals 3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v2, -0x4b

    if-lt p1, v2, :cond_2

    const/4 v1, 0x6

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, -0x55

    if-lt p1, v2, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const/16 v2, -0x5a

    if-lt p1, v2, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    const/16 v2, -0x5f

    if-lt p1, v2, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    const/16 v2, -0x64

    if-lt p1, v2, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    const/16 v2, -0x69

    if-lt p1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getGenericLteLevel(I)I
    .locals 4

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAttLteLevel()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x50

    if-le v2, v3, :cond_2

    const/4 v0, 0x4

    :goto_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xa

    if-le v2, v3, :cond_5

    const/4 v1, 0x4

    :goto_2
    if-gt v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5a

    if-le v2, v3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x64

    if-le v2, v3, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xd

    if-le v2, v3, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x10

    if-le v2, v3, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVZWLteLevel(I)I

    move-result v1

    goto :goto_0
.end method

.method private getH3gLteLevel()I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-le v1, v2, :cond_1

    const/4 v0, 0x5

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-le v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-le v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x82

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getHKLteLevel()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5a

    if-le v2, v3, :cond_0

    const/4 v0, 0x5

    :goto_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v3, -0x7

    if-le v2, v3, :cond_5

    const/4 v1, 0x5

    :goto_1
    if-le v0, v1, :cond_a

    :goto_2
    return v1

    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x64

    if-le v2, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-le v2, v3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x73

    if-le v2, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x78

    if-le v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xd

    if-le v2, v3, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x12

    if-le v2, v3, :cond_7

    const/4 v1, 0x3

    goto :goto_1

    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x16

    if-le v2, v3, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    :cond_8
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x19

    if-le v2, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    move v1, v0

    goto :goto_2
.end method

.method private getHtcAddedFieldsString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHtcTDLevel(I)I
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    if-lez v0, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    if-lt v0, v8, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    if-lt v0, v7, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    if-lt v0, v6, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    if-lt v0, v5, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    if-le v0, v2, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    if-lt v0, v8, :cond_a

    const/4 v1, 0x4

    goto :goto_0

    :cond_a
    if-lt v0, v7, :cond_b

    const/4 v1, 0x3

    goto :goto_0

    :cond_b
    if-lt v0, v6, :cond_c

    const/4 v1, 0x2

    goto :goto_0

    :cond_c
    if-lt v0, v5, :cond_d

    const/4 v1, 0x1

    goto :goto_0

    :cond_d
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getKddiLevel(Landroid/content/Context;)I
    .locals 6

    const/16 v5, 0xd

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v3

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v4

    if-eq v1, v5, :cond_0

    if-ne v4, v5, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_1

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    if-lt v2, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Landroid/telephony/SignalStrength;->isCdma1xNetworkTypes(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->isCdma1xNetworkTypes(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v2, v0

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKddiLteLevel()I
    .locals 7

    const v6, 0x7fffffff

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v6, :cond_1

    :cond_0
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_6

    const/4 v1, 0x0

    :goto_1
    if-le v2, v1, :cond_b

    move v0, v1

    :goto_2
    return v0

    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x76

    if-lt v3, v4, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x78

    if-lt v3, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_7

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_8

    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xa

    if-lt v3, v4, :cond_9

    const/4 v1, 0x2

    goto :goto_1

    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_a
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_2
.end method

.method private getNetworkType(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSignalStrengthLevelByOldRule(Landroid/content/Context;)I
    .locals 3

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceState(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSpcsLteLevel()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x56

    if-lt v1, v2, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5a

    if-le v1, v2, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5e

    if-le v1, v2, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x61

    if-le v1, v2, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getTmoUsLteLevel()I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-le v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-le v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVZWLteLevel(I)I
    .locals 8

    const v7, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v5, v7, :cond_4

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v5, v7, :cond_8

    const/4 v4, 0x1

    :cond_2
    :goto_1
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    const/4 v0, 0x0

    :cond_3
    :goto_2
    return v0

    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x55

    if-lt v5, v6, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x5f

    if-lt v5, v6, :cond_6

    const/4 v1, 0x3

    goto :goto_0

    :cond_6
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x69

    if-lt v5, v6, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x73

    if-lt v5, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_c
    if-eqz v3, :cond_d

    move v0, v2

    :goto_3
    const/4 v5, 0x5

    if-ne p1, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    if-eqz v4, :cond_e

    move v0, v1

    goto :goto_3

    :cond_e
    if-ge v2, v1, :cond_f

    move v0, v2

    :goto_4
    goto :goto_3

    :cond_f
    move v0, v1

    goto :goto_4
.end method

.method private getVodaFRLteLevel()I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x53

    if-lt v1, v2, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5d

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x68

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVoiceNetworkType(Landroid/content/Context;)I
    .locals 3

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVoiceState(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/HtcTelephonyManager;->getServiceState()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initHtcAddFields(IIIII)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput p4, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput p5, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method private isAboveGsm2GNetwork(I)Z
    .locals 1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCdma1xNetworkTypes(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaEvdoNetworkTypes(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkRoaming(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private readHtcAddedFieldsFrom(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    const-string v0, "TdRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method private setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "GsmSignalDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    const-string v0, "GsmEcno"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    const-string v0, "EvdoSignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    const-string v0, "HtcLteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    const-string v0, "HtcLteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method private writeHtcAddedFieldsInto(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget v0, p1, Landroid/telephony/SignalStrength;->mTDRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :goto_0
    return v5

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v6, v7, :cond_1

    iget-boolean v6, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v7, v3, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-ne v6, v7, :cond_1

    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "TdRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    const/16 v7, -0x5a

    const/16 v6, -0x64

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    :goto_2
    return v4

    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x63

    goto :goto_0

    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    goto :goto_1

    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    goto :goto_1

    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    goto :goto_1

    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/16 v3, 0x63

    goto :goto_1

    :cond_a
    move v4, v3

    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    :goto_2
    return v2

    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    goto :goto_1

    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    goto :goto_1

    :cond_6
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method public getDbm()I
    .locals 5

    const/16 v4, -0x78

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    if-ne v2, v4, :cond_3

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    :goto_2
    return v2

    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v3, 0x63

    goto :goto_0

    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    goto :goto_1

    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    goto :goto_1

    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    goto :goto_1

    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    const/16 v4, 0x63

    goto :goto_1

    :cond_a
    move v2, v4

    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    :goto_2
    return v2

    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method public getEvdoSignalBar()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 6

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    const/16 v5, 0x63

    if-ne v2, v5, :cond_1

    move v0, v4

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTDRscp()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    :cond_0
    if-eq v0, v4, :cond_2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getGsmEcno()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGsmSignalDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getHtcCdmaLevel()I
    .locals 6

    const/4 v5, 0x4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x0

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isSprintBrand()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaSPCSLevel(II)I

    move-result v2

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaSPCSLevel(II)I

    move-result v2

    goto :goto_0

    :cond_2
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v3

    if-ne v3, v5, :cond_6

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isChinaTelecom()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAptgTw()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAsia()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isMmrWwe()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaCTLevel(II)I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isKDDI()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaKDDILevel(II)I

    move-result v2

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, v1, v5}, Landroid/telephony/SignalStrength;->getCdmaHtcLevel(III)I

    move-result v2

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isVerizon()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaVZWLevel(II)I

    move-result v2

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v3}, Landroid/telephony/SignalStrength;->getCdmaHtcLevel(III)I

    move-result v2

    goto :goto_0
.end method

.method public getHtcCdmaMaxLevel()I
    .locals 1

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v0

    return v0
.end method

.method public getHtcEvdoLevel()I
    .locals 6

    const/4 v5, 0x4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/4 v2, 0x0

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isSprintBrand()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getEvdoSPCSLevel(II)I

    move-result v2

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getEvdoSPCSLevel(II)I

    move-result v2

    goto :goto_0

    :cond_2
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v3

    if-ne v3, v5, :cond_6

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isChinaTelecom()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAptgTw()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAsia()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isMmrWwe()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getEvdoCTLevel(II)I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isKDDI()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getEvdoKDDILevel(II)I

    move-result v2

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, v1, v5}, Landroid/telephony/SignalStrength;->getEvdoHtcLevel(III)I

    move-result v2

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v3}, Landroid/telephony/SignalStrength;->getEvdoHtcLevel(III)I

    move-result v2

    goto :goto_0
.end method

.method public getHtcGsmLevel(I)I
    .locals 12

    const/16 v8, -0x64

    const/16 v11, 0xc

    const/16 v9, -0x61

    const/16 v7, -0x68

    const/16 v10, 0x63

    const/4 v5, 0x0

    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    mul-int/lit8 v1, v6, -0x1

    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    mul-int/lit8 v3, v6, -0x1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isVerizon()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isAboveGsm2GNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-gez v1, :cond_4

    const/16 v6, -0x37

    if-lt v1, v6, :cond_0

    const/4 v5, 0x5

    :goto_0
    return v5

    :cond_0
    const/16 v6, -0x46

    if-lt v1, v6, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/16 v6, -0x55

    if-lt v1, v6, :cond_2

    const/4 v5, 0x3

    goto :goto_0

    :cond_2
    if-lt v1, v8, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    if-gez v1, :cond_a

    const/16 v6, -0x54

    if-lt v1, v6, :cond_6

    const/4 v5, 0x5

    goto :goto_0

    :cond_6
    const/16 v6, -0x5d

    if-lt v1, v6, :cond_7

    const/4 v5, 0x4

    goto :goto_0

    :cond_7
    if-lt v1, v9, :cond_8

    const/4 v5, 0x3

    goto :goto_0

    :cond_8
    if-lt v1, v7, :cond_9

    const/4 v5, 0x2

    goto :goto_0

    :cond_9
    const/4 v5, 0x1

    goto :goto_0

    :cond_a
    const/4 v5, 0x1

    goto :goto_0

    :cond_b
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isATT()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isAboveGsm2GNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_16

    if-ltz v1, :cond_c

    if-gez v3, :cond_15

    :cond_c
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/16 v6, -0x50

    if-le v1, v6, :cond_d

    const/4 v2, 0x5

    :goto_1
    const/16 v6, -0x14

    if-le v3, v6, :cond_11

    const/4 v4, 0x5

    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_d
    const/16 v6, -0x5a

    if-le v1, v6, :cond_e

    const/4 v2, 0x4

    goto :goto_1

    :cond_e
    if-le v1, v8, :cond_f

    const/4 v2, 0x3

    goto :goto_1

    :cond_f
    const/16 v6, -0x6a

    if-le v1, v6, :cond_10

    const/4 v2, 0x2

    goto :goto_1

    :cond_10
    const/4 v2, 0x1

    goto :goto_1

    :cond_11
    const/16 v6, -0x18

    if-le v3, v6, :cond_12

    const/4 v4, 0x4

    goto :goto_2

    :cond_12
    const/16 v6, -0x1c

    if-le v3, v6, :cond_13

    const/4 v4, 0x3

    goto :goto_2

    :cond_13
    const/16 v6, -0x20

    if-le v3, v6, :cond_14

    const/4 v4, 0x2

    goto :goto_2

    :cond_14
    const/4 v4, 0x1

    goto :goto_2

    :cond_15
    const/4 v5, 0x1

    goto :goto_0

    :cond_16
    if-lez v0, :cond_17

    if-ne v0, v10, :cond_18

    :cond_17
    const/4 v5, 0x1

    goto :goto_0

    :cond_18
    const/16 v6, -0x50

    if-le v1, v6, :cond_19

    const/4 v5, 0x5

    goto/16 :goto_0

    :cond_19
    const/16 v6, -0x59

    if-le v1, v6, :cond_1a

    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_1a
    const/16 v6, -0x62

    if-le v1, v6, :cond_1b

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_1b
    if-le v1, v7, :cond_1c

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_1c
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1d
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isSprintBrand()Z

    move-result v6

    if-eqz v6, :cond_25

    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_1e

    if-ne v0, v10, :cond_1f

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1f
    int-to-double v6, v0

    const-wide v8, 0x4031800000000000L    # 17.5

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_20

    const/4 v5, 0x6

    goto/16 :goto_0

    :cond_20
    const/16 v6, 0xf

    if-lt v0, v6, :cond_21

    const/4 v5, 0x5

    goto/16 :goto_0

    :cond_21
    if-lt v0, v11, :cond_22

    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_22
    int-to-double v6, v0

    const-wide/high16 v8, 0x4021000000000000L    # 8.5

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_23

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_23
    const/4 v6, 0x5

    if-lt v0, v6, :cond_24

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_24
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_25
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isH3G()Z

    move-result v6

    if-eqz v6, :cond_30

    if-ltz v1, :cond_26

    if-gez v3, :cond_2f

    :cond_26
    const/4 v2, 0x0

    const/16 v6, -0x5b

    if-lt v1, v6, :cond_27

    const/4 v2, 0x5

    :goto_3
    const/4 v4, 0x0

    const/16 v6, -0x1a

    if-lt v3, v6, :cond_2c

    const/4 v4, 0x5

    :goto_4
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_0

    :cond_27
    if-lt v1, v9, :cond_28

    const/4 v2, 0x4

    goto :goto_3

    :cond_28
    if-lt v1, v7, :cond_29

    const/4 v2, 0x3

    goto :goto_3

    :cond_29
    const/16 v6, -0x6f

    if-lt v1, v6, :cond_2a

    const/4 v2, 0x2

    goto :goto_3

    :cond_2a
    const/16 v6, -0x73

    if-lt v1, v6, :cond_2b

    const/4 v2, 0x1

    goto :goto_3

    :cond_2b
    const/4 v2, 0x0

    goto :goto_3

    :cond_2c
    const/16 v6, -0x1e

    if-lt v3, v6, :cond_2d

    const/4 v4, 0x3

    goto :goto_4

    :cond_2d
    const/16 v6, -0x24

    if-lt v3, v6, :cond_2e

    const/4 v4, 0x1

    goto :goto_4

    :cond_2e
    const/4 v4, 0x0

    goto :goto_4

    :cond_2f
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_30
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v8, 0xb

    aput v8, v6, v7

    invoke-static {v6}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isAboveGsm2GNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_36

    const/16 v6, -0x59

    if-lt v1, v6, :cond_31

    const/4 v5, 0x5

    goto/16 :goto_0

    :cond_31
    if-lt v1, v9, :cond_32

    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_32
    const/16 v6, -0x67

    if-lt v1, v6, :cond_33

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_33
    const/16 v6, -0x71

    if-lt v1, v6, :cond_34

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_34
    const/16 v6, -0x7d

    if-lt v1, v6, :cond_35

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_36
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3e

    if-lez v0, :cond_37

    if-ne v0, v10, :cond_38

    :cond_37
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_38
    const/16 v6, 0xe

    if-lt v0, v6, :cond_39

    const/4 v5, 0x5

    goto/16 :goto_0

    :cond_39
    if-lt v0, v11, :cond_3a

    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_3a
    const/16 v6, 0x8

    if-lt v0, v6, :cond_3b

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_3b
    const/4 v6, 0x4

    if-lt v0, v6, :cond_3c

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_3c
    const/4 v6, 0x2

    if-lt v0, v6, :cond_3d

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3d
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3e
    const/4 v6, 0x1

    if-le v0, v6, :cond_3f

    if-ne v0, v10, :cond_40

    :cond_3f
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_40
    if-lt v0, v11, :cond_41

    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_41
    const/16 v6, 0x8

    if-lt v0, v6, :cond_42

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_42
    const/4 v6, 0x4

    if-lt v0, v6, :cond_43

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_43
    const/4 v6, 0x2

    if-lt v0, v6, :cond_44

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_44
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public getHtcGsmMaxLevel()I
    .locals 1

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v0

    return v0
.end method

.method public getHtcLevel(Landroid/content/Context;)I
    .locals 13

    const/4 v12, 0x1

    const/4 v5, 0x1

    iget-boolean v10, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v10, :cond_3

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCombineNetworkType(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v5

    :goto_0
    iget-boolean v10, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v10, :cond_a

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v7

    :goto_1
    if-le v5, v7, :cond_0

    move v5, v7

    :cond_0
    move v10, v5

    :goto_2
    return v10

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0, v8}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v5

    :goto_3
    goto :goto_0

    :cond_2
    invoke-direct {p0, v8}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v5

    goto :goto_3

    :cond_3
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isKDDI()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getKddiLevel(Landroid/content/Context;)I

    move-result v10

    goto :goto_2

    :cond_4
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$200()I

    move-result v10

    const/16 v11, 0x5e

    if-eq v10, v11, :cond_9

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$200()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_9

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isApplyOldSignalMappingScheme()Z

    move-result v10

    if-eq v10, v12, :cond_9

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v6

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCallState(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x1

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mVoLTEnabled:Z
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$300()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v10

    const-string v11, "isImsPhoneIdle"

    invoke-virtual {v10, v11, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "isImsPhoneIdle"

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isImsPhoneIdle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    :cond_5
    if-eqz v1, :cond_6

    if-ne v4, v12, :cond_6

    move v5, v2

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v8

    const/16 v10, 0xd

    if-ne v8, v10, :cond_7

    move v5, v6

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v8}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v10

    if-eqz v10, :cond_8

    move v5, v3

    goto/16 :goto_0

    :cond_8
    move v5, v2

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getSignalStrengthLevelByOldRule(Landroid/content/Context;)I

    move-result v5

    goto/16 :goto_0

    :cond_a
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v7

    goto/16 :goto_1
.end method

.method public getHtcLevel(Landroid/content/Context;I)I
    .locals 7

    const/16 v6, 0xd

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHtcLevel, isRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", voiceNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dataNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    const/16 v4, 0x64

    if-ne p2, v4, :cond_4

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_3

    if-ne v3, v6, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v2

    :goto_1
    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    :cond_4
    const/16 v4, 0x65

    if-ne p2, v4, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_7

    if-ne v0, v6, :cond_5

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v2

    :goto_2
    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method public getHtcLteLevel()I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v0

    :goto_0
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getVZWLteLevel(I)I

    move-result v1

    :goto_1
    return v1

    :cond_0
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isATT()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAttLteLevel()I

    move-result v1

    goto :goto_1

    :cond_2
    new-array v1, v4, [I

    const/16 v2, 0x3f

    aput v2, v1, v3

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getVodaFRLteLevel()I

    move-result v1

    goto :goto_1

    :cond_3
    new-array v1, v4, [I

    const/16 v2, 0x46

    aput v2, v1, v3

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getHKLteLevel()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAsia()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAsiaLteLevel()I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isH3G()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getH3gLteLevel()I

    move-result v1

    goto :goto_1

    :cond_7
    new-array v1, v4, [I

    const/16 v2, 0xb

    aput v2, v1, v3

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getTmoUsLteLevel()I

    move-result v1

    goto :goto_1

    :cond_8
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isSprintBrand()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getSpcsLteLevel()I

    move-result v1

    goto :goto_1

    :cond_9
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAusNzSku()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAusNzLteLevel()I

    move-result v1

    goto :goto_1

    :cond_a
    new-array v1, v4, [I

    const/16 v2, 0x1a

    aput v2, v1, v3

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getCmccLteLevel(I)I

    move-result v1

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isChinaTelecom()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCTLteLevel()I

    move-result v1

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isKDDI()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getKddiLteLevel()I

    move-result v1

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isCU()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getCULteLevel(I)I

    move-result v1

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getGenericLteLevel(I)I

    move-result v1

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x1
        0x5
        0x9
        0x26
    .end array-data
.end method

.method public getHtcLteRsrp()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    return v0
.end method

.method public getHtcLteRsrq()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return v0
.end method

.method public getLevel()I
    .locals 4

    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    :goto_1
    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    const/16 v0, 0x63

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    :goto_0
    return v0

    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, -0x1

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    :cond_1
    :goto_1
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    if-ge v0, v2, :cond_d

    :cond_2
    :goto_2
    return v0

    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto :goto_1

    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_d
    move v0, v2

    goto :goto_2

    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    :cond_f
    if-ne v0, v5, :cond_2

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    :cond_10
    :goto_3
    move v0, v1

    goto :goto_2

    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTDRscp()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->calculateHtcAddedFieldsHashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIIIIIIIZ)V
    .locals 7

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    move/from16 v0, p9

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    move/from16 v0, p10

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    move/from16 v0, p11

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    move/from16 v0, p12

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move/from16 v0, p18

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    move/from16 v0, p19

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    move-object v1, p0

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    invoke-direct/range {v1 .. v6}, Landroid/telephony/SignalStrength;->initHtcAddFields(IIIII)V

    iput p2, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return-void
.end method

.method public initialize(IIIIIIIIIIIIIIIIIZ)V
    .locals 20

    const v18, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v19, p18

    invoke-virtual/range {v0 .. v19}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIIZ)V

    return-void
.end method

.method public initialize(IIIIIIIIIIIIIIIZ)V
    .locals 19

    const v16, 0x7fffffff

    const v17, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v18, p16

    invoke-virtual/range {v0 .. v18}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIZ)V

    return-void
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 17

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const v15, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v16, p13

    invoke-virtual/range {v0 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIZ)V

    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14

    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    return-void
.end method

.method public isGsm()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public isInvalidLteSignalStrength()Z
    .locals 3

    const v2, 0x7fffffff

    const/16 v0, 0x63

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-eq v2, v0, :cond_0

    const/4 v0, -0x1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidTDSignalStrength()Z
    .locals 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDefaultValues(IIIIIIIIIIIIIIIZ)V
    .locals 7

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    move/from16 v0, p9

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    move/from16 v0, p10

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    move/from16 v0, p11

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    move/from16 v0, p12

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move-object v1, p0

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-direct/range {v1 .. v6}, Landroid/telephony/SignalStrength;->initHtcAddFields(IIIII)V

    return-void
.end method

.method public setEvdoSignalBar(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return-void
.end method

.method public setGsm(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public setHtcLteRsrp(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    return-void
.end method

.method public setHtcLteRsrq(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getHtcAddedFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    const/16 v5, 0x14

    const/4 v4, 0x3

    const/16 v1, -0x78

    const v3, 0x7fffffff

    const/4 v2, -0x1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v1, v0

    :cond_0
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-lt v0, v4, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-gt v0, v5, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-ltz v0, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-eq v0, v3, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    :goto_9
    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    :goto_a
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    :goto_b
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    if-ltz v0, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    :cond_1
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    :goto_c
    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-gt v0, v5, :cond_2

    iget v3, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    :cond_2
    iput v3, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return-void

    :cond_3
    const/16 v0, 0x63

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    const/16 v0, -0xa0

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_4

    :cond_8
    const/16 v0, 0x63

    goto/16 :goto_5

    :cond_9
    move v0, v3

    goto :goto_6

    :cond_a
    move v0, v3

    goto :goto_7

    :cond_b
    move v0, v3

    goto :goto_8

    :cond_c
    move v0, v2

    goto :goto_9

    :cond_d
    move v0, v2

    goto :goto_a

    :cond_e
    move v0, v2

    goto :goto_b

    :cond_f
    move v0, v3

    goto :goto_c
.end method

.method public validateInputForCDMA()V
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->validateInput()V

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSeparateSingnalBar()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->writeHtcAddedFieldsInto(Landroid/os/Parcel;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
