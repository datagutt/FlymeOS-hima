.class public Lcom/htc/lockscreen/framework/wrapper/ILockSettingsWrapper;
.super Ljava/lang/Object;
.source "ILockSettingsWrapper.java"


# instance fields
.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/ILockSettingsWrapper;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/ILockSettingsWrapper;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    return-void
.end method


# virtual methods
.method public getLong(Ljava/lang/String;J)J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ILockSettingsWrapper;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/ILockSettingsWrapper;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
