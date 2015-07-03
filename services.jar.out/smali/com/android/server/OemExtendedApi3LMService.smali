.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EXTRA_POLICY_STATUS:Ljava/lang/String; = "com.htc.3lm.intent.extra.POLICY_STATUS"

.field private static final INTENT_EMERGENCY_LOCK_POLICY_STATUS_CHANGE:Ljava/lang/String; = "com.htc.3lm.intent.EMERGENCY_LOCK_POLICY_STATUS_CHANGE"

.field private static final INTENT_INFRARED_POLICY_STATUS_CHANGE:Ljava/lang/String; = "com.htc.3lm.intent.INFRARED_POLICY_STATUS_CHANGE"

.field private static final INTENT_ONESEG_POLICY_STATUS_CHANGE:Ljava/lang/String; = "com.htc.3lm.intent.ONESEG_POLICY_STATUS_CHANGE"

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OemExtendedApi3LM"

.field private static final THREELM_INFRARED_POLICY_SETTINGS:Ljava/lang/String; = "threelm_infrared_policy"

.field private static final THREELM_ONESEG_POLICY_SETTINGS:Ljava/lang/String; = "threelm_oneseg_policy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mOem:Landroid/os/IDeviceManagerRestrictable3LM;

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEnabled:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mOwnerInfoEnabled:I

    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/OemExtendedApi3LMService;->mOem:Landroid/os/IDeviceManagerRestrictable3LM;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceManager3LMService;

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    new-instance v0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    invoke-direct {v0, p1}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    return-void
.end method

.method private broadcastIntent(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.3lm.intent.extra.POLICY_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private isAccessPermitted()Z
    .locals 15

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    if-ne v2, v13, :cond_1

    :cond_0
    :goto_0
    return v12

    :cond_1
    :try_start_0
    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v10, v0, v5

    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v14, 0x40

    invoke-virtual {v13, v10, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v11, v1, v4

    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->comparePublicKey([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v12, "OemExtendedApi3LM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error trying to verify package public key against 3LM pub key:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v12, "OemExtendedApi3LM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Access denied to UID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "OemExtendedApi3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write boolean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "OemExtendedApi3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setOneSegState(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setInfraredState(I)V

    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceManager3LMService;->setNfcState(I)V

    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceManager3LMService;->setWifiState(I)V

    goto :goto_0
.end method

.method public getFelicaState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getInfraredState()I
    .locals 4

    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "threelm_infrared_policy"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOneSegState()I
    .locals 4

    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "threelm_oneseg_policy"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    const-string v5, "OemExtendedApi3LM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEmergencyLock:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "emergency_lock"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    if-eqz p1, :cond_5

    move v0, v4

    :goto_3
    const-string v2, "com.htc.3lm.intent.EMERGENCY_LOCK_POLICY_STATUS_CHANGE"

    invoke-direct {p0, v2, v0}, Lcom/android/server/OemExtendedApi3LMService;->broadcastIntent(Ljava/lang/String;I)V

    const-string v5, "lock_screen_owner_info_enabled"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v3

    :goto_4
    invoke-direct {p0, v5, v2}, Lcom/android/server/OemExtendedApi3LMService;->setBoolean(Ljava/lang/String;Z)V

    const-string v2, "lock_screen_owner_info"

    invoke-direct {p0, v2, p2}, Lcom/android/server/OemExtendedApi3LMService;->setString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    move v1, v3

    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setOneSegState(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setInfraredState(I)V

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/DeviceManager3LMService;->setNfcState(IZ)V

    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "emergency_lock"

    invoke-static {v2, v5, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "emergency_lock"

    const-string v6, " "

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    move v1, v4

    goto :goto_5
.end method

.method public setFelicaState(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public setInfraredState(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "threelm_infrared_policy"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "com.htc.3lm.intent.INFRARED_POLICY_STATUS_CHANGE"

    invoke-direct {p0, v0, p1}, Lcom/android/server/OemExtendedApi3LMService;->broadcastIntent(Ljava/lang/String;I)V

    :cond_3
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfraredState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOneSegState(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "threelm_oneseg_policy"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "com.htc.3lm.intent.ONESEG_POLICY_STATUS_CHANGE"

    invoke-direct {p0, v0, p1}, Lcom/android/server/OemExtendedApi3LMService;->broadcastIntent(Ljava/lang/String;I)V

    :cond_3
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOneSegState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
