.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$MtpHandler;,
        Landroid/mtp/MtpDatabase$MediaCache;,
        Landroid/mtp/MtpDatabase$FileCache;
    }
.end annotation


# static fields
.field static final ALL_PROPERTIES:[I

.field static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FILE_SIZE_CHECK_CRITERIA:J = 0x6400000L

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final MTP_PERF_CPU_ATTR:Ljava/lang/String; = "/sys/class/android_usb/android0/f_mtp/qos"

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I

.field private static bCheckStorageId:Z = false

.field private static bPEF_KERNEL_SUPPORT:Z = false

.field private static final cMEDIA_CACHE_SIZE:I = 0x5dc

.field private static final cMEDIA_CACHE_SIZE_HIGH:I = 0x1770

.field private static final cMEDIA_MEM_BUDGET_HIGH:I = 0x177000

.field private static final cMTP_MSG_SCAN:I = 0x1

.field private static cMediaCacheLimit:I = 0x0

.field private static final cTHUMB_SIZE_LIMIT:I = 0x8000

.field private static iStorageID1:I = 0x0

.field private static iStorageID2:I = 0x0

.field private static final lPathLenLimit:I = 0xfff

.field public static final mEnableDataCache:Z = true

.field private static maVolumes:[Landroid/os/storage/StorageVolume; = null

.field private static final szPhoneStorage:Ljava/lang/String; = "Phone"

.field private static final szSDCard:Ljava/lang/String; = "Card"

.field private static szStoragePath2:Ljava/lang/String;


# instance fields
.field private final bEnableScan:Z

.field private final bNewDelete:Z

.field private final bNewScan:Z

.field private final bVersionCheck:Z

.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field public final mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private mObjectFileSize:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScanDirectory:Ljava/lang/String;

.field private mServer:Landroid/mtp/MtpServer;

.field private mSessionActive:Z

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;

.field private msMtpHandler:Landroid/mtp/MtpDatabase$MtpHandler;

.field private final mszNotifyPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x5dc

    sput v0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "storage_id"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v2

    const-string v1, "parent"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput v5, Landroid/mtp/MtpDatabase;->iStorageID1:I

    sput v5, Landroid/mtp/MtpDatabase;->iStorageID2:I

    const-string v0, ""

    sput-object v0, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    sput-boolean v3, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    sput-boolean v4, Landroid/mtp/MtpDatabase;->bPEF_KERNEL_SUPPORT:Z

    return-void

    nop

    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdc4e
    .end array-data

    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
        0xde93
        0xde94
        0xde99
        0xde9a
        0xdc8b
        0xdc99
        0xdc8c
        0xdc87
        0xdc88
        0xde9b
        0xde9c
        0xde9d
    .end array-data

    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
    .end array-data

    :array_4
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde93
        0xde94
        0xde99
        0xde9a
        0xdc87
        0xdc88
        0xde9b
        0xde9c
        0xde9d
        0xdc48
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPowerManager:Landroid/os/PowerManager;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    const-string v10, "Notify:"

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mszNotifyPrefix:Ljava/lang/String;

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bEnableScan:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bNewScan:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bNewDelete:Z

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->bCheckSecuVersion()Z

    move-result v10

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bVersionCheck:Z

    new-instance v10, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v10, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    new-instance v10, Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v12, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/mtp/MtpDatabase$MediaCache;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-eqz p4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v9, p4, v4

    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    aput-object v9, v10, v6

    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_3

    if-eqz v3, :cond_4

    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    return-void

    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private CheckStorage(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private GetStorageBase(I)Ljava/lang/String;
    .locals 4

    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    sput-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    :cond_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v2

    if-ne p1, v2, :cond_1

    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static SetMtpCpuPerf(I)V
    .locals 0

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    return p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return p1
.end method

.method static synthetic access$400(Landroid/mtp/MtpDatabase;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$402(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$500(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/mtp/MtpDatabase;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    return v0
.end method

.method static synthetic access$700(Landroid/mtp/MtpDatabase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/mtp/MtpDatabase;)Landroid/media/MediaScanner;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    return-object v0
.end method

.method private bCheckSecuVersion()Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    const-string v2, "System"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    return v4
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 15

    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt to put file outside of storage area: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz p1, :cond_4

    const/4 v10, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file already exists in beginSendObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->lockCPUFrequency()I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "format"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    :try_start_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v4, v13}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_2
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :cond_6
    :try_start_3
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] beginSendObject: MediaProvider.insert fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v2, -0x1

    goto/16 :goto_0

    :catch_1
    move-exception v11

    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createObjectQueryEx(IIIZ)Landroid/database/Cursor;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    if-nez p2, :cond_4

    if-nez p3, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-nez v7, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    :cond_1
    :goto_1
    if-eqz p4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/mtp/MtpDatabase$MediaCache;->queryObjectInfoCache(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_2
    return-object v3

    :cond_2
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    const/16 p3, 0x0

    :cond_3
    const-string v7, "parent=?"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    const-string v7, "format=?"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    goto :goto_0

    :cond_5
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    const/16 p3, 0x0

    :cond_6
    const-string v7, "format=? AND parent=?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    goto :goto_0

    :cond_7
    if-nez p2, :cond_d

    if-nez p3, :cond_8

    const-string v7, "storage_id=?"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    goto :goto_0

    :cond_8
    const/4 v12, 0x0

    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    const/16 p3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpDatabase;->CheckStorage(II)I

    move-result v12

    :cond_9
    const-string v7, "storage_id=? AND parent=?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    if-eq v12, v3, :cond_a

    const/4 v3, 0x2

    if-ne v12, v3, :cond_0

    :cond_a
    const-string v7, "parent=?"

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v16, v3

    move-object/from16 v0, v16

    array-length v3, v0

    add-int/lit8 v13, v3, -0x1

    const/4 v3, 0x1

    if-ne v12, v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT LIKE ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v14, v13, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v13

    move v13, v14

    :cond_b
    :goto_3
    move-object/from16 v8, v16

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x2

    if-ne v12, v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v14, v13, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v13

    move v13, v14

    goto :goto_3

    :cond_d
    if-nez p3, :cond_e

    const-string v7, "storage_id=? AND format=?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    goto/16 :goto_0

    :cond_e
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    const/16 p3, 0x0

    :cond_f
    const-string v7, "storage_id=? AND format=? AND parent=?"

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    goto/16 :goto_0

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v11, 0x0

    :goto_4
    array-length v3, v8

    if-ge v11, v3, :cond_11

    aget-object v3, v8, v11

    aput-object v3, v16, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_11
    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v3, v3, v15

    aput-object v3, v16, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_12
    move-object/from16 v8, v16

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v6, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2
.end method

.method private deleteFile(I)I
    .locals 19

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-virtual {v12, v13, v0, v14}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v9, v10, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    iget v4, v10, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/mtp/MtpDatabase$MediaCache;->invalid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    if-nez v4, :cond_3

    :cond_0
    const/16 v12, 0x2002

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v12

    :cond_2
    const/16 v12, 0x2009

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x200d

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    const/16 v12, 0x3001

    if-ne v4, v12, :cond_5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v12}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v14, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v12, v13, v11, v14, v15}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v14, v0

    invoke-static {v12, v14, v15}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v12, v13, v11, v14, v15}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    const/16 v12, 0x3001

    if-eq v4, v12, :cond_6

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "/.nomedia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    :try_start_3
    const-string v13, "/"

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v14, "unhide"

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v8, v15}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_1
    const-wide/32 v12, 0x6400000

    cmp-long v12, v6, v12

    if-lez v12, :cond_7

    :try_start_4
    const-string v12, "MtpDatabase"

    const-string v13, "[USBF] deleteFile: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    const/16 v12, 0x2001

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    const-string v12, "MtpDatabase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed to unhide/rescan for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_6
    const-string v12, "MtpDatabase"

    const-string v13, "RemoteException in deleteFile"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v12, 0x2002

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    const/4 v12, -0x1

    if-ne v12, v5, :cond_9

    :try_start_7
    const-string v12, "MtpDatabase"

    const-string v13, "[USBF] RESPONSE_PARTIAL_DELETION"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v12, 0x2012

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_9
    const/16 v12, 0x2009

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v12
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 10

    if-eqz p4, :cond_4

    const v4, 0xba05

    if-ne p3, v4, :cond_3

    move-object v2, p1

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->unlockCPUFrequency()I

    return-void

    :catch_0
    move-exception v0

    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[USBF] endSendObject: MediaScanner.scanMtpFile+, format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: MediaScanner.scanMtpFile-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    const-wide/32 v6, 0x6400000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11

    const/16 v7, 0x2001

    const/4 v10, 0x0

    sparse-switch p1, :sswitch_data_0

    const/16 v6, 0x200a

    :goto_0
    return v6

    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    const/16 v3, 0xff

    :cond_0
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    aput-char v10, p3, v3

    move v6, v7

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 9

    const/16 v3, 0x2001

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v7, v5, p2, v7}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aput-char v7, p2, v4

    const-wide/16 v4, 0x0

    aput-wide v4, p3, v7

    const-wide/16 v4, 0x3001

    aput-wide v4, p3, v8

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1, v6}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v2, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xfff

    if-le v0, v4, :cond_1

    const/16 v0, 0xfff

    :cond_1
    invoke-virtual {v1, v7, v0, p2, v7}, Ljava/lang/String;->getChars(II[CI)V

    aput-char v7, p2, v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    aput-wide v4, p3, v7

    iget v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    int-to-long v4, v4

    aput-wide v4, p3, v8

    goto :goto_0

    :cond_2
    const/16 v3, 0x2002

    goto :goto_0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1, v5}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    aput v3, p2, v8

    iget v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    aput v3, p2, v9

    const/4 v3, 0x2

    iget v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    aput v4, p2, v3

    iget-object v0, v2, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/mtp/MtpDatabase;->nameFromPath(Ljava/lang/String;[C)V

    iget-wide v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miAdded:J

    aput-wide v4, p4, v8

    iget-wide v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miModified:J

    aput-wide v4, p4, v9

    aget-wide v4, p4, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    aget-wide v4, p4, v9

    aput-wide v4, p4, v8

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private getObjectList(III)[I
    .locals 8

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v6}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v2, v5

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    new-array v2, v0, [I

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->SetMtpCpuPerf(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v2, v1

    if-nez v1, :cond_3

    if-ne p3, v7, :cond_3

    aget v6, v2, v1

    invoke-virtual {p0, v6, p1, p3}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v7, :cond_5

    invoke-virtual {p0, p3, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_3
    const-string v6, "MtpDatabase"

    const-string v7, "Exception in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 6

    const/4 v4, 0x0

    if-eqz p6, :cond_0

    new-instance v1, Landroid/mtp/MtpPropertyList;

    const v2, 0xa807

    invoke-direct {v1, v4, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    :goto_0
    return-object v1

    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v1, p4, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    if-nez v0, :cond_1

    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v5

    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    new-array v5, v1, [I

    long-to-int v1, p4

    aput v1, v5, v4

    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    long-to-int v3, p4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 14

    const/4 v13, 0x0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_2

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v12, v13

    :cond_1
    :goto_0
    return-object v12

    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_4

    new-array v12, v9, [I

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v12, v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    move-object v12, v13

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectReferences"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getPhoneDeviceId(I[C[J)I
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, p2, v4}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput-char v4, p2, v2

    const/16 v2, 0x2001

    return v2

    :cond_0
    const-string v1, "NA"

    goto :goto_0
.end method

.method private getStorageInfo(I[C[J)I
    .locals 10

    const/4 v9, 0x0

    const-string v5, "NA"

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    if-ne p1, v6, :cond_3

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "Card"

    :cond_0
    :goto_1
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] getStorageInfo: StorageId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",State="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v9, v6, p2, v9}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v9, p2, v6

    const/16 v6, 0x2001

    return v6

    :cond_2
    const-string v5, "Phone"

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0xb981
        0x300a
        0x300c
        0xba83
        0xba85
        0xba86
    .end array-data
.end method

.method private getThumbnail2(I)[B
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->GetFilenamefromHandle(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/16 v5, 0x1000

    new-array v3, v5, [C

    const/4 v5, 0x2

    new-array v2, v5, [J

    invoke-direct {p0, p1, v3, v2}, Landroid/mtp/MtpDatabase;->getObjectFilePath(I[C[J)I

    move-result v5

    const/16 v6, 0x2001

    if-ne v5, v6, :cond_0

    if-eqz v4, :cond_0

    const-string v5, "MtpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[USBF] getThumbnail2: FORMAT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v8, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-wide v6, v2, v10

    long-to-int v5, v6

    sparse-switch v5, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpDatabase;->getThumbnailUtil(Ljava/lang/String;Z)[B

    move-result-object v0

    :cond_0
    return-object v0

    :sswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_0
        0xb901 -> :sswitch_1
        0xb981 -> :sswitch_1
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getThumbnailUtil(Ljava/lang/String;Z)[B
    .locals 13

    const v12, 0x8000

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: Path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",IsVideo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-static {p1, v11}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_2

    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: Can\'t create mini thumbnail for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_0

    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: thumb file Width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",ByteCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p1, v11}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x4b

    const/4 v4, 0x0

    :goto_2
    const/16 v8, 0x8

    if-ge v4, v8, :cond_3

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v8, v2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-le v3, v12, :cond_3

    div-int v8, v3, v12

    add-int/lit8 v8, v8, 0x1

    div-int/2addr v2, v8

    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: new Quality="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0xa

    if-ge v2, v8, :cond_4

    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: got exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :catch_0
    move-exception v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14

    const/4 v2, 0x0

    const-string v10, "device-properties"

    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x2000

    const/4 v3, 0x5

    const-string v4, "MtpDatabase"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x8000

    const/4 v3, 0x4

    const-string v4, "MtpDatabase"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_1
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_3
    return-void

    :cond_4
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private lockCPUFrequency()I
    .locals 2

    const/16 v0, 0x2002

    iget-boolean v1, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    :cond_3
    const/16 v0, 0x2001

    goto :goto_0
.end method

.method private static nameFromPath(Ljava/lang/String;[C)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v4, v0, v2

    const/16 v5, 0xff

    if-le v4, v5, :cond_0

    add-int/lit16 v0, v2, 0xff

    :cond_0
    invoke-virtual {p0, v2, v0, p1, v3}, Ljava/lang/String;->getChars(II[CI)V

    sub-int v4, v0, v2

    aput-char v3, p1, v4

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3}, Landroid/mtp/MtpDatabase$MediaCache;->queryFilepathById(Ljava/lang/String;ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    const/16 v1, 0x2009

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x200d

    goto :goto_0

    :cond_1
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v1, 0x1

    if-gt v8, v1, :cond_2

    const/16 v1, 0x2002

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2002

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    invoke-virtual {v4, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/mtp/MtpDatabase$MediaCache;->invalid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v14, :cond_4

    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/16 v1, 0x2002

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    invoke-virtual {v1}, Landroid/mtp/MtpDatabase$MediaCache;->reset()V

    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "."

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v3, "unhide"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v10, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    const/16 v1, 0x2001

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v3, "unhide"

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    invoke-interface {v1, v2, v3, v5, v15}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sessionEnded()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MtpDatabase"

    const-string v1, "sessionEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v3, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBF] Scanned Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/mtp/MtpDatabase;->StartMediaScannerNew(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    :cond_1
    const-string v0, "MtpDatabase"

    const-string v1, "[USBF] sessionEnded:MediaCache.reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase$MediaCache;->reset()V

    iput-boolean v3, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    return-void
.end method

.method private sessionStarted()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v4, "MtpDatabase"

    const-string v5, "sessionStarted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    iput-boolean v7, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/platform/android_usb/os_type"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MTP][sessionStarted] iHostType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MTP] can\'t read Host type, wait 500ms and retry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-le v0, v7, :cond_2

    const-string v4, "MtpDatabase"

    const-string v5, "[MTP] Broadcast intent to notify Mount Service while sessionStarted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.Mount_Notify"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "Enable"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v5, "com.htc.permission.APP_MEDIA"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 6

    sparse-switch p1, :sswitch_data_0

    const/16 v3, 0x200a

    :goto_0
    return v3

    :sswitch_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2001

    goto :goto_0

    :cond_0
    const/16 v3, 0x2002

    goto :goto_0

    :sswitch_1
    const-string v3, "MtpDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDeviceProperty: DEVICE_PROPERTY_VENDOR_HSM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x11

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.START_NEROSYNCTOOL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v3, "Enable"

    long-to-int v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-wide/16 v4, 0x40

    cmp-long v3, p2, v4

    if-ltz v3, :cond_6

    const-wide/16 v4, 0x60

    cmp-long v3, p2, v4

    if-gez v3, :cond_6

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    const/16 v3, 0x2001

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x20

    cmp-long v3, p2, v4

    if-ltz v3, :cond_3

    const-wide/16 v4, 0x40

    cmp-long v3, p2, v4

    if-gez v3, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HSM_Notify"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x40

    cmp-long v3, p2, v4

    if-ltz v3, :cond_4

    const-wide/16 v4, 0x60

    cmp-long v3, p2, v4

    if-gez v3, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.nero.android.neroconnect.INIT_SERVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x60

    cmp-long v3, p2, v4

    if-ltz v3, :cond_5

    const-wide/16 v4, 0x70

    cmp-long v3, p2, v4

    if-gez v3, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.usb.HOST_NET_STATUS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.action.usb.automount"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MtpDatabase"

    const-string v4, "Unable to start Activity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :try_start_1
    iget-boolean v3, p0, Landroid/mtp/MtpDatabase;->bVersionCheck:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.permission.APP_MEDIA"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    const-string v3, "MtpDatabase"

    const-string v4, "get IllegalStateException before boot completed, do nothing except no one need this intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    :try_start_2
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
        0xd601 -> :sswitch_1
    .end sparse-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1

    packed-switch p2, :pswitch_data_0

    const v0, 0xa80a

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 10

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v8, p1

    invoke-static {v6, v8, v9}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    array-length v0, p2

    new-array v5, v0, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    const/16 v6, 0x2001

    :goto_1
    return v6

    :catch_0
    move-exception v1

    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method

.method private unlockCPUFrequency()I
    .locals 2

    const/16 v0, 0x2002

    iget-boolean v1, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    :cond_3
    const/16 v0, 0x2001

    goto :goto_0
.end method


# virtual methods
.method public GetFilenamefromHandle(I)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, v3}, Landroid/mtp/MtpDatabase$MediaCache;->queryFilepathById(Ljava/lang/String;ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBF] GetFilenamefromHandle: Path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public StartMediaScanner(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V

    return-void
.end method

.method public StartMediaScanner(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] StartMediaScanner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->GetFilenamefromHandle(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2, p2}, Landroid/mtp/MtpDatabase;->StartMediaScannerDir([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public StartMediaScannerDir([Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v1, "Notify:"

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->GetStorageBase(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    aget-object v2, p1, v5

    if-nez v2, :cond_1

    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: null path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] StartMediaScannerDir+: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    aget-object v2, p1, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: Not valid path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: skip."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public StartMediaScannerNew(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "MTP_Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "MTP_Level"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "MTP_Level"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/platform/android_usb/os_type"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MTP][addStorage] iHostType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MTP] can\'t read Host type, wait 500ms and retry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-ne v0, v7, :cond_2

    const-string v4, "MtpDatabase"

    const-string v5, "[MTP] MAC detected, Broadcast intent to notify Mount Service while addStorage"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.Mount_Notify"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "Enable"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v5, "com.htc.permission.APP_MEDIA"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 4

    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
