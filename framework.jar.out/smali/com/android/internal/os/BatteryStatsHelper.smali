.class public final Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ON:Z

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mAppMobileActive:J

.field private mAppWifiRunning:J

.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtime:J

.field mBatteryTimeRemaining:J

.field mBatteryUptime:J

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mChargeTimeRemaining:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field private mMinDrainedPower:D

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtime:J

.field mRawUptime:J

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mTypeBatteryRealtime:J

.field mTypeBatteryUptime:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWifiOnly:Z

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    return-void
.end method

.method private addBluetoothUsage()V
    .locals 14

    const-wide v12, 0x414b774000000000L    # 3600000.0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    long-to-double v0, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v8, v0, v12

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothPingCount()I

    move-result v7

    int-to-double v0, v7

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v10, v0, v12

    add-double/2addr v8, v10

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v0, v8

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    add-double/2addr v0, p4

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v0

    return-object v0
.end method

.method private addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v1, p4, v2

    if-lez v1, :cond_0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    :cond_0
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTime:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addFlashlightUsage()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getFlashlightOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "camera.flashlight"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    return-void
.end method

.method private addIdleUsage()V
    .locals 10

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v6, v8, v9, v7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.idle"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.talk"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v6, v2

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 26

    const-wide/16 v6, 0x0

    const/4 v8, 0x5

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v24, 0x3e8

    div-long v22, v2, v24

    move-wide/from16 v0, v22

    long-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v24, "radio.on"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v24

    mul-double v2, v2, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v14, v2, v24

    add-double/2addr v6, v14

    add-long v4, v4, v22

    if-nez v10, :cond_0

    move-wide/from16 v12, v22

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v24, 0x3e8

    div-long v20, v2, v24

    move-wide/from16 v0, v20

    long-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v24, "radio.scanning"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v24

    mul-double v2, v2, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v14, v2, v24

    add-double/2addr v6, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    sub-long v2, v16, v2

    const-wide/16 v24, 0x3e8

    div-long v18, v2, v24

    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v2

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v2, v2, v24

    add-double/2addr v6, v2

    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v9

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    long-to-double v2, v12

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v24

    long-to-double v0, v4

    move-wide/from16 v24, v0

    div-double v2, v2, v24

    iput-wide v2, v9, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    :cond_3
    move-wide/from16 v0, v18

    iput-wide v0, v9, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v2

    iput v2, v9, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    :cond_4
    return-void
.end method

.method private addScreenUsage()V
    .locals 20

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v4, v2, v18

    long-to-double v2, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "screen.on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    mul-double v2, v2, v18

    add-double/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    const/4 v10, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_0

    int-to-float v2, v10

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v16

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    div-double v14, v2, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v8, v2, v18

    long-to-double v2, v8

    mul-double v12, v14, v2

    add-double/2addr v6, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_1
    return-void
.end method

.method private addUserUsage()V
    .locals 11

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    iput v9, v6, Lcom/android/internal/os/BatterySipper;->userId:I

    const-string v0, "User"

    invoke-direct {p0, v6, v8, v0}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private addWiFiUsage()V
    .locals 14

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v8, v0, v4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    const-wide/16 v0, 0x0

    mul-long/2addr v0, v8

    long-to-double v0, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    long-to-double v4, v2

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v12, "wifi.on"

    invoke-virtual {v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v12

    mul-double/2addr v4, v12

    add-double/2addr v0, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double v10, v0, v4

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v0, v10

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget v3, v1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    return-void
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "dropFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private getMobilePowerPerMs()D
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket()D
    .locals 22

    const-wide/32 v4, 0x30d40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    add-long v8, v12, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    :goto_0
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    :cond_0
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_0
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 8

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "Unable to read statistics stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "RemoteException:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getWifiPowerPerPacket()D
    .locals 8

    const-wide v6, 0x40ac200000000000L    # 3600.0

    const-wide/32 v0, 0xf4240

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private load()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    goto :goto_0
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "%.8f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.7f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.6f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.5f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.4f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.3f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 126
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_0

    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v120, "procAppUsage S"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v105, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v105

    if-eqz v105, :cond_1

    const/16 v20, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v105, v0

    const-string/jumbo v120, "sensor"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v104, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    invoke-virtual/range {v105 .. v105}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v67

    move/from16 v0, v67

    new-array v0, v0, [D

    move-object/from16 v54, v0

    move/from16 v0, v67

    new-array v0, v0, [J

    move-object/from16 v16, v0

    const/16 v50, 0x0

    :goto_1
    move/from16 v0, v50

    move/from16 v1, v67

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v120, "cpu.active"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v120

    aput-wide v120, v54, v50

    add-int/lit8 v50, v50, 0x1

    goto :goto_1

    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerPacket()D

    move-result-wide v36

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v34

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getWifiPowerPerPacket()D

    move-result-wide v106

    const-wide/16 v10, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    move-wide/from16 v120, v0

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v105, v0

    invoke-virtual/range {v105 .. v105}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Landroid/util/SparseArray;->size()I

    move-result v7

    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_3

    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v120, Ljava/lang/StringBuilder;

    invoke-direct/range {v120 .. v120}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v121, "procAppUsage Value("

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-static/range {v36 .. v37}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v121

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-static/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v121

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-static/range {v106 .. v107}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v121

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ")"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-virtual/range {v120 .. v120}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v30, 0x0

    :goto_2
    move/from16 v0, v30

    if-ge v0, v7, :cond_35

    move-object/from16 v0, v92

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/os/BatteryStats$Uid;

    const-wide/16 v52, 0x0

    const-wide/16 v26, 0x0

    const/16 v49, 0x0

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v55

    const-wide/16 v18, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v102, 0x0

    const-wide/16 v24, 0x0

    invoke-interface/range {v55 .. v55}, Ljava/util/Map;->size()I

    move-result v105

    if-lez v105, :cond_e

    invoke-interface/range {v55 .. v55}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v105

    invoke-interface/range {v105 .. v105}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_4
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v105

    if-eqz v105, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v58

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v96

    move-object/from16 v0, v58

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v72

    move-object/from16 v0, v58

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v22

    const-wide/16 v120, 0x0

    cmp-long v105, v96, v120

    if-gez v105, :cond_5

    const-wide/16 v96, 0x0

    :cond_5
    const-wide/16 v120, 0x0

    cmp-long v105, v72, v120

    if-gez v105, :cond_6

    const-wide/16 v72, 0x0

    :cond_6
    const-wide/16 v120, 0x0

    cmp-long v105, v22, v120

    if-gez v105, :cond_7

    const-wide/16 v22, 0x0

    :cond_7
    const-wide/16 v120, 0xa

    mul-long v120, v120, v22

    add-long v14, v14, v120

    add-long v120, v96, v72

    const-wide/16 v122, 0xa

    mul-long v78, v120, v122

    const/16 v90, 0x0

    const/16 v70, 0x0

    :goto_4
    move/from16 v0, v70

    move/from16 v1, v67

    if-ge v0, v1, :cond_9

    move-object/from16 v0, v58

    move/from16 v1, v70

    move/from16 v2, v104

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v120

    aput-wide v120, v16, v70

    aget-wide v120, v16, v70

    const-wide/16 v122, 0x0

    cmp-long v105, v120, v122

    if-gez v105, :cond_8

    const-wide/16 v120, 0x0

    aput-wide v120, v16, v70

    :cond_8
    move/from16 v0, v90

    int-to-long v0, v0

    move-wide/from16 v120, v0

    aget-wide v122, v16, v70

    add-long v120, v120, v122

    move-wide/from16 v0, v120

    long-to-int v0, v0

    move/from16 v90, v0

    add-int/lit8 v70, v70, 0x1

    goto :goto_4

    :cond_9
    if-nez v90, :cond_a

    const/16 v90, 0x1

    :cond_a
    const-wide/16 v56, 0x0

    const/16 v70, 0x0

    :goto_5
    move/from16 v0, v70

    move/from16 v1, v67

    if-ge v0, v1, :cond_b

    aget-wide v120, v16, v70

    move-wide/from16 v0, v120

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move/from16 v0, v90

    int-to-double v0, v0

    move-wide/from16 v122, v0

    div-double v60, v120, v122

    move-wide/from16 v0, v78

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v120, v120, v60

    aget-wide v122, v54, v70

    mul-double v120, v120, v122

    add-double v56, v56, v120

    add-int/lit8 v70, v70, 0x1

    goto :goto_5

    :cond_b
    add-long v18, v18, v78

    add-double v52, v52, v56

    if-eqz v49, :cond_c

    const-string v105, "*"

    move-object/from16 v0, v49

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v105

    if-eqz v105, :cond_d

    :cond_c
    move-wide/from16 v26, v56

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    cmpg-double v105, v26, v56

    if-gez v105, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Ljava/lang/String;

    const-string v120, "*"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v105

    if-nez v105, :cond_4

    move-wide/from16 v26, v56

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    goto/16 :goto_3

    :cond_e
    cmp-long v105, v14, v18

    if-lez v105, :cond_f

    move-wide/from16 v18, v14

    :cond_f
    const-wide v120, 0x414b774000000000L    # 3600000.0

    div-double v52, v52, v120

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v101

    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v105

    invoke-interface/range {v105 .. v105}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_10
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v105

    if-eqz v105, :cond_11

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Ljava/util/Map$Entry;

    invoke-interface/range {v100 .. v100}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Landroid/os/BatteryStats$Uid$Wakelock;

    const/16 v105, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v71

    if-eqz v71, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v71

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v120

    add-long v102, v102, v120

    goto :goto_6

    :cond_11
    const-wide/16 v120, 0x0

    cmp-long v105, v102, v120

    if-gez v105, :cond_12

    const-wide/16 v102, 0x0

    :cond_12
    add-long v10, v10, v102

    const-wide/16 v120, 0x3e8

    div-long v102, v102, v120

    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v122, "cpu.awake"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    add-double v52, v52, v50

    const/16 v105, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v38

    const/16 v105, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v42

    const/16 v105, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v40

    const/16 v105, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v44

    const-wide/16 v120, 0x0

    cmp-long v105, v38, v120

    if-gez v105, :cond_13

    const-wide/16 v38, 0x0

    :cond_13
    const-wide/16 v120, 0x0

    cmp-long v105, v42, v120

    if-gez v105, :cond_14

    const-wide/16 v42, 0x0

    :cond_14
    const-wide/16 v120, 0x0

    cmp-long v105, v40, v120

    if-gez v105, :cond_15

    const-wide/16 v40, 0x0

    :cond_15
    const-wide/16 v120, 0x0

    cmp-long v105, v44, v120

    if-gez v105, :cond_16

    const-wide/16 v44, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v32

    const-wide/16 v120, 0x0

    cmp-long v105, v32, v120

    if-lez v105, :cond_1e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    move-wide/from16 v120, v0

    add-long v120, v120, v32

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v120, v120, v34

    const-wide v122, 0x408f400000000000L    # 1000.0

    div-double v50, v120, v122

    :goto_7
    add-double v52, v52, v50

    const/16 v105, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v110

    const/16 v105, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v116

    const/16 v105, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v112

    const/16 v105, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v118

    const-wide/16 v120, 0x0

    cmp-long v105, v110, v120

    if-gez v105, :cond_17

    const-wide/16 v110, 0x0

    :cond_17
    const-wide/16 v120, 0x0

    cmp-long v105, v116, v120

    if-gez v105, :cond_18

    const-wide/16 v116, 0x0

    :cond_18
    const-wide/16 v120, 0x0

    cmp-long v105, v112, v120

    if-gez v105, :cond_19

    const-wide/16 v112, 0x0

    :cond_19
    const-wide/16 v120, 0x0

    cmp-long v105, v118, v120

    if-gez v105, :cond_1a

    const-wide/16 v118, 0x0

    :cond_1a
    add-long v120, v110, v116

    move-wide/from16 v0, v120

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v50, v120, v106

    add-double v52, v52, v50

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v108, v120, v122

    const-wide/16 v120, 0x0

    cmp-long v105, v108, v120

    if-gez v105, :cond_1b

    const-wide/16 v108, 0x0

    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v120, v0

    add-long v120, v120, v108

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v0, v108

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v122, "wifi.on"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    add-double v52, v52, v50

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v114, v120, v122

    const-wide/16 v120, 0x0

    cmp-long v105, v114, v120

    if-gez v105, :cond_1c

    const-wide/16 v114, 0x0

    :cond_1c
    move-wide/from16 v0, v114

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v122, "wifi.scan"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    add-double v52, v52, v50

    const/4 v9, 0x0

    :goto_8
    const/16 v105, 0x5

    move/from16 v0, v105

    if-ge v9, v0, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v12, v120, v122

    const-wide/16 v120, 0x0

    cmp-long v105, v12, v120

    if-gez v105, :cond_1d

    const-wide/16 v12, 0x0

    :cond_1d
    long-to-double v0, v12

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v122, "wifi.batchedscan"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    add-double v52, v52, v50

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_1e
    add-long v120, v38, v42

    move-wide/from16 v0, v120

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v50, v120, v36

    goto/16 :goto_7

    :cond_1f
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/16 v29, 0x0

    :goto_9
    move/from16 v0, v29

    if-ge v0, v6, :cond_24

    move-object/from16 v0, v66

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/os/BatteryStats$Uid$Sensor;

    move-object/from16 v0, v66

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v63

    invoke-virtual/range {v62 .. v62}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v71

    const-wide/16 v68, 0x0

    if-eqz v71, :cond_20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v71

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v68, v120, v122

    :cond_20
    const-wide/16 v120, 0x0

    cmp-long v105, v68, v120

    if-gez v105, :cond_21

    const-wide/16 v68, 0x0

    :cond_21
    const-wide/16 v46, 0x0

    packed-switch v63, :pswitch_data_0

    const/16 v105, -0x1

    move-object/from16 v0, v65

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_22
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v105

    if-eqz v105, :cond_23

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/hardware/Sensor;

    invoke-virtual/range {v59 .. v59}, Landroid/hardware/Sensor;->getHandle()I

    move-result v105

    move/from16 v0, v105

    move/from16 v1, v63

    if-ne v0, v1, :cond_22

    invoke-virtual/range {v59 .. v59}, Landroid/hardware/Sensor;->getPower()F

    move-result v105

    move/from16 v0, v105

    float-to-double v0, v0

    move-wide/from16 v46, v0

    :cond_23
    :goto_a
    move-wide/from16 v0, v68

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v120, v120, v46

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    add-double v52, v52, v50

    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v120, "gps.on"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v46

    move-wide/from16 v24, v68

    goto :goto_a

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v120, "screen.on"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v80

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getDisplayTurnedOnTime(JI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v82, v120, v122

    const-wide/16 v120, 0x0

    cmp-long v105, v82, v120

    if-gez v105, :cond_25

    const-wide/16 v82, 0x0

    :cond_25
    move-wide/from16 v0, v82

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v88, v80, v120

    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_26

    const-wide/16 v120, 0x0

    cmpl-double v105, v88, v120

    if-lez v105, :cond_26

    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v120, Ljava/lang/StringBuilder;

    invoke-direct/range {v120 .. v120}, Ljava/lang/StringBuilder;-><init>()V

    const-string v121, "ProcSu = ("

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string/jumbo v121, "th,"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move-wide/from16 v1, v88

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move-wide/from16 v1, v82

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ")"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-virtual/range {v120 .. v120}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const-wide/16 v86, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v84, 0x0

    const/16 v21, 0x0

    :goto_b
    const/16 v105, 0x5

    move/from16 v0, v21

    move/from16 v1, v105

    if-ge v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v120, "screen.brightness_bin"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v74

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v21

    move-wide/from16 v2, v120

    move/from16 v4, v104

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getDisplayBrightnessTime(IJI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v76, v120, v122

    const-wide/16 v120, 0x0

    cmp-long v105, v76, v120

    if-gez v105, :cond_27

    const-wide/16 v76, 0x0

    :cond_27
    move-wide/from16 v0, v76

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v84, v74, v120

    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_28

    const-wide/16 v120, 0x0

    cmpl-double v105, v84, v120

    if-lez v105, :cond_28

    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v120, Ljava/lang/StringBuilder;

    invoke-direct/range {v120 .. v120}, Ljava/lang/StringBuilder;-><init>()V

    const-string v121, "ProcBr = ("

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string/jumbo v121, "th,"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move-wide/from16 v1, v84

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ")"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-virtual/range {v120 .. v120}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    add-double v86, v86, v84

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b

    :cond_29
    add-double v120, v88, v86

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v120, v120, v122

    add-double v52, v52, v120

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    invoke-static/range {v105 .. v105}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v93

    const-wide/16 v120, 0x0

    cmpl-double v105, v52, v120

    if-nez v105, :cond_2a

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    if-nez v105, :cond_2c

    :cond_2a
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    sget-object v105, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v120, 0x1

    move/from16 v0, v120

    new-array v0, v0, [D

    move-object/from16 v120, v0

    const/16 v121, 0x0

    aput-wide v52, v120, v121

    move-object/from16 v0, v105

    move-object/from16 v1, v91

    move-object/from16 v2, v120

    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    move-wide/from16 v0, v24

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    move-wide/from16 v0, v108

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    iput-wide v14, v8, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    move-wide/from16 v0, v102

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    move-wide/from16 v0, v38

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-wide/from16 v0, v42

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    const-wide/16 v120, 0x3e8

    div-long v120, v32, v120

    move-wide/from16 v0, v120

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v105

    move/from16 v0, v105

    iput v0, v8, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    move-wide/from16 v0, v110

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    move-wide/from16 v0, v116

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    move-wide/from16 v0, v40

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    move-wide/from16 v0, v44

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    move-wide/from16 v0, v112

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    move-wide/from16 v0, v118

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    move-object/from16 v0, v49

    iput-object v0, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    const/16 v120, 0x3f2

    move/from16 v0, v105

    move/from16 v1, v120

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    :cond_2b
    :goto_c
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    if-nez v105, :cond_2c

    move-object/from16 v48, v8

    :cond_2c
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    :cond_2d
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    const/16 v120, 0x3ea

    move/from16 v0, v105

    move/from16 v1, v120

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    goto :goto_c

    :cond_2e
    if-nez v20, :cond_32

    move-object/from16 v0, p1

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v105

    if-nez v105, :cond_32

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    invoke-static/range {v105 .. v105}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v105

    const/16 v120, 0x2710

    move/from16 v0, v105

    move/from16 v1, v120

    if-lt v0, v1, :cond_32

    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_2f

    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v120, Ljava/lang/StringBuilder;

    invoke-direct/range {v120 .. v120}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v121, "procAppUsage if3="

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-virtual/range {v120 .. v120}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;

    if-nez v31, :cond_30

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    move/from16 v1, v93

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_30
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v120, 0x0

    cmpl-double v105, v52, v120

    if-eqz v105, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Ljava/lang/Double;

    if-nez v94, :cond_31

    invoke-static/range {v52 .. v53}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v94

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    move/from16 v1, v93

    move-object/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_31
    invoke-virtual/range {v94 .. v94}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v120

    add-double v120, v120, v52

    invoke-static/range {v120 .. v121}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v94

    goto :goto_d

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v120, v0

    cmpl-double v105, v52, v120

    if-lez v105, :cond_33

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    :cond_33
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v120, v0

    cmpl-double v105, v52, v120

    if-lez v105, :cond_34

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    :cond_34
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    goto/16 :goto_c

    :cond_35
    if-eqz v48, :cond_38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    move-wide/from16 v120, v0

    const-wide/16 v122, 0x3e8

    div-long v98, v120, v122

    const-wide/16 v120, 0x3e8

    div-long v120, v10, v120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v105, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v122, v0

    move-object/from16 v0, v105

    move-wide/from16 v1, v122

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v122

    const-wide/16 v124, 0x3e8

    div-long v122, v122, v124

    add-long v120, v120, v122

    sub-long v98, v98, v120

    const-wide/16 v120, 0x0

    cmp-long v105, v98, v120

    if-lez v105, :cond_38

    move-wide/from16 v0, v98

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v122, "cpu.awake"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v52, v120, v122

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    move-wide/from16 v120, v0

    add-long v120, v120, v98

    move-wide/from16 v0, v120

    move-object/from16 v2, v48

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, v48

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->value:D

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->values:[D

    move-object/from16 v105, v0

    const/16 v120, 0x0

    aget-wide v122, v105, v120

    add-double v122, v122, v52

    aput-wide v122, v105, v120

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v122, v0

    cmpl-double v105, v120, v122

    if-lez v105, :cond_36

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    :cond_36
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v122, v0

    cmpl-double v105, v120, v122

    if-lez v105, :cond_37

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    :cond_37
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    :cond_38
    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_39

    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v120, "procAppUsage E"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "procMiscUsage S"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addFlashlightUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    :cond_1
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "procMiscUsage E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-array v1, p1, [B

    :cond_0
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    add-int/2addr v3, v0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_0

    add-int v4, v3, p1

    new-array v2, v4, [B

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 10

    sget-boolean v7, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "statsFromFile S"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats;

    if-eqz v6, :cond_2

    sget-boolean v7, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "statsFromFile has data"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    return-object v6

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const/4 v7, 0x0

    array-length v9, v0

    invoke-virtual {v4, v0, v7, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-boolean v7, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "statsFromFile create data"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_5
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v9, "Unable to read history to file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    :goto_3
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sget-boolean v7, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "statsFromFile E"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    :goto_5
    :try_start_9
    throw v7

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    :catch_1
    move-exception v9

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v9

    goto :goto_5

    :catchall_2
    move-exception v7

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method public clearStats()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "clearStats"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 2

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "create Stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 2

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "create Bundle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    :cond_1
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    return-object v0
.end method

.method public getBatteryTimeRemaining()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    return-wide v0
.end method

.method public getChargeTimeRemaining()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    return-wide v0
.end method

.method public getComputedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getMaxDrainedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "getStats first"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public refreshStats(II)V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v4, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v6, v0, v2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rfStats S ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rfStats no data"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rfStats time ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rfStats Drain ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/os/BatteryStatsHelper;->processAppUsage(Landroid/util/SparseArray;)V

    const/4 v9, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    iget-wide v2, v8, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_7

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    iget-wide v2, v8, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    new-instance v3, Lcom/android/internal/os/BatteryStatsHelper$1;

    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscUsage()V

    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rfStats power ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    sub-double v6, v2, v4

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "refreshStats E"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_a

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    sub-double v6, v2, v4

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    goto :goto_4
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public storeState()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "storeState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 9

    sget-boolean v6, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "storeStatsHistoryInFile S"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean v6, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "storeStatsHistoryInFile E"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v6

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_5
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v8, "Unable to write history to file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :goto_3
    :try_start_8
    throw v6

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    :catch_3
    move-exception v8

    goto :goto_3

    :catchall_2
    move-exception v6

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method
