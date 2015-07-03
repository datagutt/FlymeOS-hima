.class public Lcom/android/internal/app/ExternalMediaFormatActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ExternalMediaFormatActivity"


# instance fields
.field private blockGuest:Z

.field private blockPassword:Z

.field mFormatExternalSD:Z

.field mStoragePath:Ljava/lang/String;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStoragePath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mFormatExternalSD:Z

    new-instance v0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ExternalMediaFormatActivity$1;-><init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isInternalStorage(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "ExternalMediaFormatActivity"

    const-string/jumbo v2, "path is null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "ExternalMediaFormatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
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


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockGuest:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockPassword:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "storage_volume"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "ExternalMediaFormatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got extra storage volume. Path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "storage_volume"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    check-cast v1, Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "storage_volume"

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "storage_volume"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "ExternalMediaFormatActivity"

    const-string/jumbo v4, "onCreate!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sd_encryption"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iput-boolean v6, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockPassword:Z

    iput-boolean v6, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockGuest:Z

    invoke-static {}, Lcom/android/internal/app/ExternalMediaFormatActivity;->isSupport3LM()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v2, v5, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockGuest:Z

    :cond_0
    :goto_0
    const-string v3, "ExternalMediaFormatActivity"

    const-string/jumbo v4, "onCreate!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockGuest:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockPassword:Z

    if-eqz v3, :cond_4

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockGuest:Z

    if-eqz v3, :cond_3

    const v3, 0x30700e5

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v3, 0x30700e6

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_1
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    :goto_2
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->setupAlert()V

    return-void

    :cond_2
    if-ne v2, v5, :cond_0

    const/high16 v3, 0x20000

    if-ge v1, v3, :cond_0

    iput-boolean v5, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->blockPassword:Z

    goto :goto_0

    :cond_3
    const v3, 0x30700e7

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v3, 0x30700e8

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    const v3, 0x10404eb

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v3, 0x10404ec

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v3, 0x10404ed

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "formatPath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStoragePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStoragePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->isInternalStorage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x3070129

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v3, 0x307012a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iput-boolean v6, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mFormatExternalSD:Z

    :goto_3
    const-string v3, "ExternalMediaFormatActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format external SD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mFormatExternalSD:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mFormatExternalSD:Z

    goto :goto_3
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
