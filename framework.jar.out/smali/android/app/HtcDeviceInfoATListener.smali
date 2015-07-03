.class public Landroid/app/HtcDeviceInfoATListener;
.super Lcom/htc/callbacks/ActivityThreadCallbacks;
.source "HtcDeviceInfoATListener.java"


# static fields
.field private static final ACTION_SETTING_UPDATA:Ljava/lang/String; = "com.htc.intent.action.UDOVE_SETTING_UPDATA"

.field private static final HWTAG:Ljava/lang/String; = "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneHardwareInformation"

.field private static final PERMISSION_PLATFORM:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static final SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final SWTAG:Ljava/lang/String; = "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSoftwareInformation"

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static isSettingsApp:Z

.field private static volatile sIsInit:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/callbacks/ActivityThreadCallbacks;-><init>()V

    return-void
.end method

.method private static isSettingsApp(Landroid/app/Activity;)Z
    .locals 3

    sget-boolean v0, Landroid/app/HtcDeviceInfoATListener;->sIsInit:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/app/HtcDeviceInfoATListener;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Landroid/app/HtcDeviceInfoATListener;->sIsInit:Z

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/HtcDeviceInfoATListener;->isSettingsApp:Z

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/HtcDeviceInfoATListener;->sIsInit:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-boolean v0, Landroid/app/HtcDeviceInfoATListener;->isSettingsApp:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Landroid/app/HtcDeviceInfoATListener;->isSettingsApp:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public beforePerformResume(Landroid/app/Activity;)V
    .locals 7

    invoke-static {}, Landroid/app/ReportConfig;->isShippingRom()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/app/HtcDeviceInfoATListener;->isSettingsApp(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, p1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    iget-object v2, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_1

    const-string v5, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSoftwareInformation"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.UDOVE_SETTING_UPDATA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "fragment"

    const-string v6, "SW"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    const-string v5, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneHardwareInformation"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.UDOVE_SETTING_UPDATA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "fragment"

    const-string v6, "HW"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "HtcDeviceInfoManager"

    const-string v6, "beforePerformResume"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
