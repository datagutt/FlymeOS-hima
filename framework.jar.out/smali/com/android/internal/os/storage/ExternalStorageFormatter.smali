.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final CHECK_MOUNTED_INTERVAL:I = 0x64

.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final EXTERNAL_STORAGE_IDX:I = 0x1

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final EXTRA_RESPONSE_STATUS:Ljava/lang/String; = "com.android.internal.os.storage.EXTRA_RESPONSE_STATUS"

.field public static final FORMAT_ALL_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

.field public static final FORMAT_ALL_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_ONLY"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_INTERNAL_STORAGE_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field private static final HTC_ACTION_FORMAT_ALL:I = 0x2

.field private static final HTC_ACTION_FORMAT_ALL_FACTORY_RESET:I = 0x3

.field private static final HTC_ACTION_FORMAT_INTERNAL_ONLY:I = 0x1

.field private static final HTC_ACTION_NONE:I = 0x0

.field private static final HTC_DEBUG_FORMATTER:Z

.field private static final INTERNAL_STORAGE_IDX:I = 0x0

.field private static final LAST_STORAGE_IDX:I = 0x0

.field private static final MAX_MOUNT_TIME:I = 0x64

.field private static final MSG_CHECK_MOUNT_OK:I = 0x15667

.field private static final STORAGE_RESULT_CODE_NOT_SUPPORTED:I = -0x3e7

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private htcFormatAction:I

.field private mAlwaysReset:Z

.field private mCurrentStorageResult:I

.field private mDeleteData:Z

.field private mFactoryReset:Z

.field private mFormatOnly:Z

.field private mFormatSequence:I

.field private mFormatStoragePath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReason:Ljava/lang/String;

.field private mReplyData:Landroid/content/Intent;

.field private mResponseStatus:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private InitFormatSequence()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    :goto_0
    sget-boolean v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v0, :cond_0

    const-string v1, "ExternalStorageFormatter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitFormatSequence - mFormatSequence = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-ne v0, v3, :cond_3

    const-string v0, "EXTERNAL_STORAGE_IDX"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    goto :goto_0

    :cond_3
    const-string v0, "INTERNAL_STORAGE_IDX"

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isSupport3LM()Z

    move-result v0

    return v0
.end method

.method private failBecauseOfEmulatedStorage()V
    .locals 5

    const/16 v4, -0x3e7

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalStorageFormatter"

    const-string v3, "Emulated storage cannot be formatted!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    :cond_1
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    iget-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    const-string v2, "ExternalStorageFormatter"

    const-string v3, "fail stop service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private formatNextStorage()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-ne v2, v1, :cond_3

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    move v0, v1

    goto :goto_0
.end method

.method private getErrorCodeFromIntentData()I
    .locals 4

    const/16 v3, -0x65

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, -0x66

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, -0x66

    if-ne v0, v1, :cond_3

    const/16 v0, -0x68

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_2

    const-string v1, "ExternalStorageFormatter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready to return error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    const/16 v0, -0x67

    goto :goto_0
.end method

.method private getErrorCodeFromStorageResult(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    const/16 v0, -0x64

    goto :goto_0

    :cond_1
    const/16 v0, -0x3e7

    if-ne p1, v0, :cond_2

    const/16 v0, -0x69

    goto :goto_0

    :cond_2
    const/16 v0, -0x65

    goto :goto_0
.end method

.method private getFormatStoragePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_3
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1
.end method

.method private getFormatStorageState()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_2
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getInternalStorageDirectory()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getInternalStorageState()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageDirectory()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageState()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isExternalStoragePath(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Passing a null string in isExternalStoragePath()!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static isSupport3LM()Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    const-string v2, "System"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string/jumbo v2, "support_3lm"

    invoke-interface {v1, v2, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private sendFirstCheckMountMessage(I)V
    .locals 4

    const v3, 0x15667

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendMasterClearIntent()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    if-eqz v1, :cond_0

    const-string v1, "delete_data"

    iget-boolean v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateReplyResult(IIZ)V
    .locals 4

    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_0

    const-string v1, "ExternalStorageFormatter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready to update reply result intent. storage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", storageResultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sendReply="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_1

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Should not update reply result since it\'s not requested by device policy"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    :cond_3
    packed-switch p1, :pswitch_data_0

    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_1

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "SHOULD NEVER BE HERE!!! CHECK STORAGE INDEX FOR THIS ERROR!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_4

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Put status & path for external storage..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-direct {p0, p2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromStorageResult(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_PATH"

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    if-eqz p3, :cond_1

    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_5

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Ready to send result......"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromIntentData()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v1, :cond_6

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Put status & path for internal storage..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-direct {p0, p2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromStorageResult(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_PATH"

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method checkStorageMounted(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "bad_removal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method fail(ILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v2

    iput v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    invoke-direct {p0, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p0, p1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format external storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "checking"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    const-string/jumbo v3, "removed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bad_removal"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    :cond_2
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    :cond_3
    if-eqz v1, :cond_7

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format internal storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iput v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    iget v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    invoke-direct {p0, v3, v4, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    const-string v3, "ExternalStorageFormatter"

    const-string v4, "fail stop service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mountStorage(I)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Attmept to mount emulated storage. Ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "ExternalStorageFormatter"

    const-string/jumbo v4, "mountStorage Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "delete_data"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    :cond_0
    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    :cond_1
    const-string v1, "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    :cond_2
    :goto_0
    const-string v1, "com.android.internal.os.storage.EXTRA_RESPONSE_STATUS"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    :cond_3
    const-string v1, "always_reset"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "delete_data"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    :cond_4
    const-string v1, "android.intent.extra.REASON"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;

    const-string/jumbo v1, "storage_volume"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_6

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V

    :cond_6
    return v5

    :cond_7
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto :goto_0

    :cond_8
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const-string v1, "delete_data"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mDeleteData:Z

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_1
.end method

.method public updateProgressDialog(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x3070129

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method updateProgressState(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    sget-boolean v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v4, :cond_0

    const-string v5, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateProgressState - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " detected. Path = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    move-object v4, v1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->failBecauseOfEmulatedStorage()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v4, "null"

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    if-eqz p1, :cond_1

    sget-boolean v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v4, :cond_5

    const-string v4, "ExternalStorageFormatter"

    const-string v5, " Ready to format volume. Unmounting......"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const v4, 0x1040551

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    const/4 v4, 0x1

    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_7
    sget-boolean v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z

    if-eqz v4, :cond_8

    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateProgressState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " detected. Ready to format media......"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const v4, 0x1040552

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    goto/16 :goto_1

    :cond_9
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const v4, 0x1040554

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x1040555

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0x1040556

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x1040557

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const v4, 0x1040558

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
