.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.super Landroid/os/Handler;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;,
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;,
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;
    }
.end annotation


# static fields
.field private static final CHAR_BRACKET:[C

.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_MINUS:C = '-'

.field private static final CHAR_SLASH:[C

.field private static final CHAR_SQUARE_BRACKET:[C

.field private static final DBG_DETAIL:Z

.field private static final DBG_SECURITY:Z = false

.field private static final EVENT_DISPOSE:I = 0x2

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_QUICKBOOT_OFF:I = 0x3

.field private static final EVENT_SCREEN_ON:I = 0x4

.field private static final FAKE_SUPPORT:Z = false

.field private static final HTC_HISTORY_ENTRIES:I = 0x6

.field private static final KEY_TIME_ZONE_IS_VALID:Ljava/lang/String; = "gsm.timezone.isvalid"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final NITZ_EXPIRE_TIME_MS:J = 0x2bf20L

.field private static final PREDICTION_TYPE_NONE:I = 0x2

.field private static final PREDICTION_TYPE_NOT_FOUND:I = 0x0

.field private static final PREDICTION_TYPE_ONLY_OFFSET_MATCH:I = 0xc

.field private static final PREDICTION_TYPE_WO_COUNTRY_WO_DST:I = 0xa

.field private static final PREDICTION_TYPE_WO_COUNTRY_W_DST:I = 0x8

.field private static final PREDICTION_TYPE_W_COUNTRY_WO_DST:I = 0x6

.field private static final PREDICTION_TYPE_W_COUNTRY_W_DST:I = 0x4

.field private static final PREDICTION_UNTRUST_LEVEL:I = 0x9

.field public static final SETUP_NITZ_FROM_LOCATION_UPDATE:I = 0x2

.field public static final SETUP_NITZ_FROM_MCC_UPDATE:I = 0x3

.field public static final SETUP_NITZ_FROM_NITZ_EVENT:I = 0x0

.field public static final SETUP_NITZ_FROM_SID_UPDATE:I = 0x1

.field public static final SETUP_NITZ_FROM_USER_SETUP:I = 0x4

.field private static logDateFormat:Ljava/text/SimpleDateFormat; = null

.field private static final logFakeNitzPrefix:Ljava/lang/String; = "Fake NITZ-"

.field private static final logNitzPrefix:Ljava/lang/String; = "NITZ-"


# instance fields
.field private SST__EVENT_NITZ_TIME:Ljava/lang/Integer;

.field private SST__EVENT_RADIO_STATE_CHANGED:Ljava/lang/Integer;

.field private currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

.field private currentOperatorIso:Ljava/lang/String;

.field private currentOperatorMcc:Ljava/lang/String;

.field private htcGivenFakeString:Ljava/lang/String;

.field private lastIsoUsedForNitz:Ljava/lang/String;

.field private lastNITZreceivedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

.field private mNitzLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevNitzLogTime:J

.field private mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

.field private mSst:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mTimeZonePickerTriggered:Z

.field private prevSetupFakeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 51
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->DBG_DETAIL:Z

    .line 87
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_BRACKET:[C

    .line 88
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SQUARE_BRACKET:[C

    .line 89
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C

    return-void

    .line 87
    nop

    :array_0
    .array-data 2
        0x28s
        0x29s
    .end array-data

    .line 88
    :array_1
    .array-data 2
        0x5bs
        0x5ds
    .end array-data

    .line 89
    :array_2
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 627
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    .line 665
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mPrevNitzLogTime:J

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 627
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    .line 665
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mPrevNitzLogTime:J

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mSst:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method

.method static synthetic access$000()[C
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SQUARE_BRACKET:[C

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Date;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logShortDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[C
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C

    return-object v0
.end method

.method static synthetic access$400()[C
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_BRACKET:[C

    return-object v0
.end method

.method private addNitzHistory(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V
    .locals 2
    .param p1, "history"    # Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .prologue
    .line 631
    monitor-enter p0

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 637
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mPrevNitzLogTime:J

    .line 639
    monitor-exit p0

    .line 641
    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bootupTimeZoneCacheClear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 798
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NITZ-time zone : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] clear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.timezone.isvalid"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v0, "gsm.timezone.isvalid"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 804
    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 807
    move v5, p1

    .line 808
    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    .line 809
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 811
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 812
    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 813
    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 814
    .local v1, "d":Ljava/util/Date;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 815
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 816
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 818
    move-object v2, v6

    .line 823
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 814
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getFakeNitzItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "itemIndex"    # I

    .prologue
    .line 1227
    const/4 v0, 0x0

    .line 1237
    .local v0, "fakeNitzItem":Ljava/lang/String;
    return-object v0
.end method

.method private getFakeNitzSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1222
    const/4 v0, 0x0

    return-object v0
.end method

.method private static logShortDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 1472
    if-eqz p0, :cond_1

    .line 1473
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 1474
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logDateFormat:Ljava/text/SimpleDateFormat;

    .line 1476
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/text/FieldPosition;

    sget-object v3, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    invoke-virtual {v0, p0, v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private neverNotifyTimezonePickerChecker()Z
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x0

    return v0
.end method

.method private nitzLogControl()Z
    .locals 10

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 669
    .local v0, "currentTime":J
    const-wide/32 v4, 0xea60

    .line 670
    .local v4, "timeInterval":J
    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mPrevNitzLogTime:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0xea60

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 671
    const/4 v2, 0x0

    .line 676
    :goto_0
    return v2

    .line 673
    :cond_0
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mPrevNitzLogTime:J

    .line 674
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z
    .locals 2
    .param p1, "tzA"    # Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;
    .param p2, "tzB"    # Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .prologue
    .line 827
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 832
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 834
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private searchSmartTimeZoneForNITZ_Internal(Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;
    .locals 16
    .param p1, "knownTimeZone"    # Ljava/util/TimeZone;
    .param p2, "currentSid"    # Ljava/lang/Integer;
    .param p3, "givenCountryIso"    # Ljava/lang/String;
    .param p4, "daylightSavingTime"    # Ljava/lang/Boolean;
    .param p5, "timeZoneOffset"    # I
    .param p6, "timeInNitz"    # J

    .prologue
    .line 975
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NITZ-time zone check: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " notify="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;)V

    .line 979
    .local v7, "searchItem":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;
    move-object/from16 v0, p1

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 980
    const/4 v11, 0x0

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 981
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    .line 982
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->sid:Ljava/lang/Integer;

    .line 983
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    .line 984
    move/from16 v0, p5

    iput v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    .line 985
    move-wide/from16 v0, p6

    iput-wide v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeInNitz:J

    .line 987
    const/4 v6, 0x0

    .line 988
    .local v6, "possibleTimeZone":Ljava/util/TimeZone;
    if-eqz p1, :cond_4

    .line 989
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 990
    move-object/from16 v6, p1

    .line 991
    const/4 v11, 0x2

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 1055
    :cond_0
    :goto_0
    const-string v12, "gsm.timezone.isvalid"

    if-eqz v6, :cond_e

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const/4 v5, 0x0

    .line 1057
    .local v5, "needToTriggerPicker":Z
    if-nez v6, :cond_11

    .line 1058
    if-nez p3, :cond_2

    .line 1059
    const/4 v5, 0x1

    .line 1060
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v11, :cond_10

    .line 1061
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    iget-object v12, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    if-ne v11, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    iget v12, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    if-ne v11, v12, :cond_1

    .line 1064
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v5, 0x1

    .line 1070
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 1071
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->triggerTimezonePicker(Landroid/content/Context;)V

    .line 1072
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 1073
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 1099
    :cond_2
    :goto_3
    const/4 v9, -0x1

    .line 1101
    .local v9, "settingAutoTimeZone":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_time_zone"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 1104
    :goto_4
    const/4 v8, -0x1

    .line 1106
    .local v8, "settingAutoTime":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_time"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 1109
    :goto_5
    const-string v12, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NITZ-time zone: ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v13, 0xea60

    div-int v13, p5, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " -> "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v6, :cond_15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v14, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "/"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ")"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "*"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->neverNotifyTimezonePickerChecker()Z

    move-result v11

    if-nez v11, :cond_16

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " Set="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    if-eqz v6, :cond_3

    .line 1119
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastIsoUsedForNitz:Ljava/lang/String;

    .line 1121
    :cond_3
    return-object v6

    .line 995
    .end local v5    # "needToTriggerPicker":Z
    .end local v8    # "settingAutoTime":I
    .end local v9    # "settingAutoTimeZone":I
    :cond_4
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 996
    .local v10, "tryDst":Z
    :goto_8
    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 997
    move/from16 v0, p5

    move-wide/from16 v1, p6

    move-object/from16 v3, p3

    invoke-static {v0, v10, v1, v2, v3}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 998
    if-eqz v6, :cond_8

    .line 999
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 1000
    const/4 v11, 0x4

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 1039
    :cond_5
    :goto_9
    if-nez v6, :cond_0

    .line 1040
    const/4 v4, 0x0

    .line 1041
    .local v4, "discardDstMatch":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v11, :cond_6

    .line 1042
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    iget v12, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    if-ne v11, v12, :cond_6

    .line 1043
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z

    move-result v4

    .line 1046
    :cond_6
    if-eqz v4, :cond_0

    .line 1047
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget-object v6, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 1048
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 1049
    const/16 v11, 0xc

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto/16 :goto_0

    .line 995
    .end local v4    # "discardDstMatch":Z
    .end local v10    # "tryDst":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    .line 1002
    .restart local v10    # "tryDst":Z
    :cond_8
    if-nez p4, :cond_5

    .line 1003
    if-nez v10, :cond_9

    const/4 v11, 0x1

    :goto_a
    move/from16 v0, p5

    move-wide/from16 v1, p6

    move-object/from16 v3, p3

    invoke-static {v0, v11, v1, v2, v3}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1004
    if-eqz v6, :cond_5

    .line 1005
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 1006
    const/4 v11, 0x6

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_9

    .line 1003
    :cond_9
    const/4 v11, 0x0

    goto :goto_a

    .line 1018
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v6

    .line 1019
    if-eqz v6, :cond_b

    .line 1020
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 1021
    const/16 v11, 0x8

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_9

    .line 1025
    :cond_b
    if-nez v10, :cond_c

    const/4 v11, 0x1

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v6

    .line 1026
    if-eqz v6, :cond_5

    .line 1027
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 1028
    if-nez p4, :cond_d

    .line 1029
    const/16 v11, 0x8

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_9

    .line 1025
    :cond_c
    const/4 v11, 0x0

    goto :goto_b

    .line 1032
    :cond_d
    const/16 v11, 0xa

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_9

    .line 1055
    .end local v10    # "tryDst":Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1064
    .restart local v5    # "needToTriggerPicker":Z
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1068
    :cond_10
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1078
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    if-eqz v11, :cond_12

    .line 1079
    const/4 v5, 0x1

    .line 1080
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->triggerTimezonePicker(Landroid/content/Context;)V

    .line 1081
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 1082
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 1084
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v11, :cond_13

    iget v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    const/16 v12, 0x9

    if-ge v11, v12, :cond_14

    .line 1086
    :cond_13
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    goto/16 :goto_3

    .line 1088
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    const/16 v12, 0x9

    if-lt v11, v12, :cond_2

    .line 1089
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    iget v12, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    if-lt v11, v12, :cond_2

    .line 1090
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    goto/16 :goto_3

    .line 1109
    .restart local v8    # "settingAutoTime":I
    .restart local v9    # "settingAutoTimeZone":I
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1107
    :catch_0
    move-exception v11

    goto/16 :goto_5

    .line 1102
    .end local v8    # "settingAutoTime":I
    :catch_1
    move-exception v11

    goto/16 :goto_4
.end method

.method private sendFakeNitz(Ljava/lang/String;)V
    .locals 0
    .param p1, "fakeString"    # Ljava/lang/String;

    .prologue
    .line 1286
    return-void
.end method

.method private triggerTimezonePicker(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1139
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->neverNotifyTimezonePickerChecker()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1140
    const-string v0, "htc.intent.action.timezone_picker"

    .line 1141
    .local v0, "ACTION_TRIGGER_TIME_ZONE_PICKER":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "htc.intent.action.timezone_picker"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1148
    .end local v0    # "ACTION_TRIGGER_TIME_ZONE_PICKER":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1146
    :cond_0
    const-string v3, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ-unable waking-up timezone picker - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;
    .locals 12
    .param p1, "infoBS"    # Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .prologue
    .line 343
    const/4 v7, 0x0

    .line 345
    .local v7, "sidChanged":Z
    const/4 v5, 0x0

    .line 346
    .local v5, "incomingSid":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 347
    iget v9, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 380
    :cond_0
    if-eqz v5, :cond_5

    .line 381
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v9, :cond_3

    .line 382
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v9, v9, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 383
    const/4 v7, 0x1

    .line 390
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v8

    .line 394
    .local v8, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_4

    .line 395
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 396
    .local v3, "hist":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v3, :cond_2

    .line 397
    iget-object v9, v3, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-nez v9, :cond_2

    .line 398
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 394
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 387
    .end local v3    # "hist":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v4    # "i":I
    .end local v8    # "size":I
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 403
    .restart local v4    # "i":I
    .restart local v8    # "size":I
    :cond_4
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mPrevNitzLogTime:J

    .line 405
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v4    # "i":I
    .end local v8    # "size":I
    :cond_5
    const/4 v6, 0x0

    .line 410
    .local v6, "isoChanged":Z
    const/4 v1, 0x0

    .line 411
    .local v1, "countryIso":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 413
    const/4 v2, 0x0

    .line 414
    .local v2, "currentSid":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v9, :cond_6

    .line 415
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v9, v9, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 417
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v0

    .line 418
    .local v0, "country":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v0, :cond_7

    .line 419
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    .line 421
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastIsoUsedForNitz:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v6, 0x1

    .line 452
    .end local v0    # "country":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .end local v2    # "currentSid":Ljava/lang/Integer;
    :cond_8
    :goto_2
    if-eqz v6, :cond_b

    .line 453
    if-nez v1, :cond_9

    .line 454
    const-string v1, ""

    .line 461
    :cond_9
    :goto_3
    return-object v1

    .line 405
    .end local v1    # "countryIso":Ljava/lang/String;
    .end local v6    # "isoChanged":Z
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 421
    .restart local v0    # "country":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .restart local v1    # "countryIso":Ljava/lang/String;
    .restart local v2    # "currentSid":Ljava/lang/Integer;
    .restart local v6    # "isoChanged":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    .line 458
    .end local v0    # "country":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .end local v2    # "currentSid":Ljava/lang/Integer;
    :cond_b
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public displayNitzHistory(Z)V
    .locals 4
    .param p1, "longFormat"    # Z

    .prologue
    .line 650
    monitor-enter p0

    .line 651
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->nitzLogControl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 653
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 654
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 655
    .local v0, "hist":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 656
    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->toLog(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->access$300(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;Z)V

    .line 653
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v0    # "hist":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    monitor-exit p0

    .line 662
    return-void

    .line 660
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method

.method public fakeOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "orgNumeric"    # Ljava/lang/String;

    .prologue
    .line 1433
    move-object v0, p1

    .line 1467
    .local v0, "translatedNumeric":Ljava/lang/String;
    return-object v0
.end method

.method public getFakeNitz(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "originalNitzString"    # Ljava/lang/String;
    .param p2, "originalNitz"    # [Ljava/lang/String;

    .prologue
    .line 1294
    move-object v0, p2

    .line 1424
    .local v0, "translatedNitz":[Ljava/lang/String;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 699
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 701
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 702
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 704
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 726
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 728
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->bootupTimeZoneCacheClear()V

    goto :goto_0

    .line 731
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 733
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 737
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->bootupTimeZoneCacheClear()V

    goto :goto_0

    .line 740
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendFakeNitz(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public receiveNitz(Ljava/lang/String;JJLjava/util/Date;)V
    .locals 8
    .param p1, "nitzString"    # Ljava/lang/String;
    .param p2, "modemReceiveTime"    # J
    .param p4, "ssEventTime"    # J
    .param p6, "ssEventDate"    # Ljava/util/Date;

    .prologue
    .line 470
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;-><init>(Ljava/lang/String;JJLjava/util/Date;)V

    .line 471
    .local v0, "nitz":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->previousBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 472
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 473
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->addNitzHistory(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V

    .line 474
    return-void
.end method

.method public searchSmartTimeZoneForNITZ(Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;
    .locals 10
    .param p1, "enforceCountryIso"    # Ljava/lang/String;
    .param p2, "daylightSavingTime"    # Ljava/lang/Boolean;
    .param p3, "timeZoneOffset"    # I
    .param p4, "timeInNitz"    # J

    .prologue
    const/4 v1, 0x0

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 850
    .local v8, "currentElapsedTime":J
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastNITZreceivedTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastNITZreceivedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-object v1

    .line 857
    :cond_1
    const/4 v2, 0x0

    .line 858
    .local v2, "currentSid":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    .line 888
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ_Internal(Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0
.end method

.method public searchSmartTimeZoneForNITZ(Ljava/util/TimeZone;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;
    .locals 10
    .param p1, "knownTimeZone"    # Ljava/util/TimeZone;
    .param p2, "daylightSavingTime"    # Ljava/lang/Boolean;
    .param p3, "timeZoneOffset"    # I
    .param p4, "timeInNitz"    # J

    .prologue
    .line 901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastNITZreceivedTime:Ljava/lang/Long;

    .line 903
    const/4 v2, 0x0

    .line 904
    .local v2, "currentSid":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 934
    :cond_0
    const/4 v3, 0x0

    .line 935
    .local v3, "givenCountryIso":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v8

    .line 936
    .local v8, "matchCountry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v8, :cond_1

    .line 937
    iget-object v3, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    .line 966
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ_Internal(Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public setupNitz(IJLjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "newTime"    # J
    .param p4, "zone"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 515
    .local v2, "setupCompleteTime":J
    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 517
    .local v1, "size":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 518
    .local v0, "hist":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 519
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    .line 520
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupZone:Ljava/lang/String;

    .line 521
    iput-wide v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupTime:J

    .line 522
    iput-wide p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupSysMsec:J

    .line 525
    :cond_0
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mPrevNitzLogTime:J

    .line 527
    monitor-exit p0

    .line 529
    return-void

    .line 527
    .end local v0    # "hist":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v1    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setupTimeZone(ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "zone"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 539
    .local v2, "setupCompleteTime":J
    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 541
    .local v1, "size":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 542
    .local v0, "hist":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    .line 544
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupZone:Ljava/lang/String;

    .line 545
    iput-wide v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupTime:J

    .line 548
    :cond_0
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mPrevNitzLogTime:J

    .line 550
    monitor-exit p0

    .line 552
    return-void

    .line 550
    .end local v0    # "hist":Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v1    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateLocation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;
    .locals 1
    .param p1, "infoBS"    # Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .prologue
    .line 219
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateOperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 232
    const/4 v5, 0x0

    .line 233
    .local v5, "operatorUpdated":Z
    move-object v3, p1

    .line 262
    .local v3, "givenMcc":Ljava/lang/String;
    const/4 v4, 0x1

    .line 263
    .local v4, "givenMccValid":Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    const-string v8, "00000"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 264
    :cond_0
    const/4 v4, 0x0

    .line 270
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 271
    if-eqz v4, :cond_2

    .line 272
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    move v5, v6

    .line 273
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    .line 287
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 288
    .local v1, "countryIso":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, "currentSid":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v8, :cond_3

    .line 291
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v8, v8, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 293
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v0

    .line 294
    .local v0, "country":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v0, :cond_4

    .line 295
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    .line 297
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastIsoUsedForNitz:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    move v5, v6

    .line 329
    .end local v0    # "country":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .end local v2    # "currentSid":Ljava/lang/Integer;
    :cond_5
    :goto_2
    if-eqz v5, :cond_d

    .line 330
    if-nez v1, :cond_6

    .line 331
    const-string v1, ""

    .line 333
    :cond_6
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorIso:Ljava/lang/String;

    .line 339
    :goto_3
    return-object v1

    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_7
    move v5, v7

    .line 272
    goto :goto_0

    .line 276
    :cond_8
    if-eqz v4, :cond_2

    .line 277
    if-eqz v3, :cond_a

    .line 278
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    move v5, v6

    .line 283
    :goto_4
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    goto :goto_1

    :cond_9
    move v5, v7

    .line 278
    goto :goto_4

    .line 281
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    move v5, v6

    :goto_5
    goto :goto_4

    :cond_b
    move v5, v7

    goto :goto_5

    .restart local v0    # "country":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .restart local v1    # "countryIso":Ljava/lang/String;
    .restart local v2    # "currentSid":Ljava/lang/Integer;
    :cond_c
    move v5, v7

    .line 297
    goto :goto_2

    .line 336
    .end local v0    # "country":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .end local v2    # "currentSid":Ljava/lang/Integer;
    :cond_d
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public updateRegState(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;
    .locals 1
    .param p1, "infoBS"    # Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .prologue
    .line 206
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    .line 207
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
