.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$LockSettingValueCache;,
        Lcom/android/server/LockSettingsService$LockSettingsObserver;,
        Lcom/android/server/LockSettingsService$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static IS_SKIP_DB:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final NO_CONTAIN_KEY:Ljava/lang/String; = "no.contain.key"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LockSettingsService$LockSettingsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/LockSettingsService$LockSettingValueCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService$LockSettingValueCache;-><init>(Lcom/android/server/LockSettingsService$1;)V

    sput-object v0, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "lockscreen.password_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/LockSettingsService;->IS_SKIP_DB:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/LockSettingsService;->IS_SKIP_DB:Ljava/util/ArrayList;

    const-string v1, "lockscreen.last_user_activity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/LockSettingsService$DatabaseHelper;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->upgradeFingerprintPasswordQuality(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LockSettingsService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_PROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getUserParentOrSelfId(I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getUserParentOrSelfId(I)I

    move-result p1

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUserParentOrSelfId(I)I
    .locals 4

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    :cond_0
    return p1
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .locals 9

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v6, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez p2, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v8, 0x3e8

    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    if-eqz v5, :cond_1

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->resetUid(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, v3}, Landroid/security/KeyStore;->passwordUid(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private migrateOldData()V
    .locals 26

    :try_start_0
    const-string v23, "migrated"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v8, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v14, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_1

    aget-object v21, v8, v12

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const-string v23, "migrated"

    const-string v24, "true"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v23, "LockSettingsService"

    const-string v24, "Migrated lock settings to new location"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v23, "migrated_user_specific"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v20

    const/16 v18, 0x0

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    const-string v6, "lock_screen_owner_info"

    const-string v23, "lock_screen_owner_info"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    const-string v23, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v23, ""

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v15, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    const-string v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v23, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v11, 0x1

    :goto_2
    const-string v23, "lock_screen_owner_info_enabled"

    if-eqz v11, :cond_6

    const-wide/16 v24, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_4
    :try_start_2
    const-string v23, "lock_screen_owner_info_enabled"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    const-wide/16 v24, 0x0

    goto :goto_3

    :catch_0
    move-exception v10

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "lock_screen_owner_info_enabled"

    const-wide/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v16

    const-string v23, "LockSettingsService"

    const-string v24, "Unable to migrate old data"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    return-void

    :cond_8
    :try_start_3
    const-string v23, "migrated_user_specific"

    const-string v24, "true"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v23, "LockSettingsService"

    const-string v24, "Migrated per-user lock settings to new location"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method private readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v9, p2

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    const/4 v6, 0x1

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9
.end method

.method private upgradeFingerprintPasswordQuality(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10

    const v0, 0x9000

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "name"

    const-string v8, "lockscreen.password_type"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "value"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "name=? AND value=?"

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "lockscreen.password_type"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const v8, 0x9000

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const-string v7, "locksettings"

    invoke-virtual {p1, v7, v2, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fp pwq upgraded rowCnt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v3

    const-string v7, "LockSettingsService"

    const-string v8, "fp pwq upgraded fail"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "value"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "locksettings"

    const-string v3, "name=? AND user=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "locksettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to DB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v2

    :catch_1
    move-exception v1

    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to DB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeToDb(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/LockSettingsService;->IS_SKIP_DB:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/LockSettingsService;->notifyObservers(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_1

    move v4, v7

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v4, v7

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_2

    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_0

    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkPattern got:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", getLockPatternFilename():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v7

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v4, v7

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkVoldPassword(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/os/storage/IMountService;->clearPassword()V

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->readFromCache(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "no.contain.key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/LockSettingsService;->IS_SKIP_DB:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->writeToCache(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return p2

    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    sget-object v4, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    invoke-virtual {v4, p1, p4}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->readFromCache(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "no.contain.key"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/LockSettingsService;->IS_SKIP_DB:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p4}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    invoke-virtual {v4, p1, v1, p4}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->writeToCache(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    move-wide v2, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_1
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    move-wide v2, p2

    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parser to long key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->readFromCache(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "no.contain.key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/LockSettingsService;->IS_SKIP_DB:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->writeToCache(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public havePassword(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePattern(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyObservers(Ljava/lang/String;I)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v2, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/widget/ILockSettingsObserver;->onLockSettingChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to notify ILockSettingsObserver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v3, v3, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_1

    const-string v3, "1"

    const-string v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Observer was already registered."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    const-string v3, "LockSettingsService"

    const-string v5, "Observer was already registered."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/LockSettingsService$LockSettingsObserver;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    iput-object p1, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    iget-object v3, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removeUser(I)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v6, "locksettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    const/16 v6, 0x3e8

    invoke-static {p1, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/security/KeyStore;->resetUid(I)Z

    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->writeToCache(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p4}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->writeToCache(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/LockSettingsService;->sLockSettingValueCache:Lcom/android/server/LockSettingsService$LockSettingValueCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/LockSettingsService$LockSettingValueCache;->writeToCache(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    return-void
.end method

.method public unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v1, v1, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
