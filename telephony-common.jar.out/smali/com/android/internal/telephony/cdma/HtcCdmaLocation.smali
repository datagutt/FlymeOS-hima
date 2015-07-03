.class public Lcom/android/internal/telephony/cdma/HtcCdmaLocation;
.super Ljava/lang/Object;
.source "HtcCdmaLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;,
        Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;
    }
.end annotation


# static fields
.field private static final EVENT_GOOGLE_LOCATION_SETTING_UPDATE:I = 0x1

.field public static final FEATURE_ENABLED:Z

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreviousSettingValue:Ljava/lang/Boolean;

.field private mSettingsObserver:Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;

.field private phone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CONFIG:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->FEATURE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 44
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$EventHandler;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mSettingsObserver:Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mSettingsObserver:Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Lcom/android/internal/telephony/cdma/CDMAPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->getCurrentGoogleLocationSetting()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mPreviousSettingValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaLocation;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mPreviousSettingValue:Ljava/lang/Boolean;

    return-object p1
.end method

.method private getCurrentGoogleLocationSetting()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, "value":Ljava/lang/Boolean;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 93
    .local v0, "googleLocationOn":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    .end local v0    # "googleLocationOn":Z
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mSettingsObserver:Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->mSettingsObserver:Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 64
    :cond_0
    return-void
.end method

.method public updateCellLocationData(Landroid/telephony/cdma/CdmaCellLocation;)Landroid/telephony/cdma/CdmaCellLocation;
    .locals 3
    .param p1, "cellLoc"    # Landroid/telephony/cdma/CdmaCellLocation;

    .prologue
    .line 73
    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaLocation;->getCurrentGoogleLocationSetting()Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    .local v0, "googleLocationOn":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "CDMA"

    const-string v2, "Stop reporting CdmaCellLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    new-instance p1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local p1    # "cellLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-direct {p1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 84
    .end local v0    # "googleLocationOn":Ljava/lang/Boolean;
    :cond_1
    return-object p1
.end method
