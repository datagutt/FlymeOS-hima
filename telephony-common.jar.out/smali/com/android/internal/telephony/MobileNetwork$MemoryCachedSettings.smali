.class Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryCachedSettings"
.end annotation


# instance fields
.field private prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

.field private prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

.field private prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5318
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5319
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5320
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5322
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5349
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5350
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5351
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5352
    return-void
.end method

.method public getCachedDataPathSetting()Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 1

    .prologue
    .line 5337
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

    return-object v0
.end method

.method public getCachedMobileDataSetting()Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 1

    .prologue
    .line 5345
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

    return-object v0
.end method

.method public getCachedRoamingSetting()Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 1

    .prologue
    .line 5329
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    return-object v0
.end method

.method public updateCachedDataPathSetting(Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    .locals 0
    .param p1, "setting"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 5333
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5334
    return-void
.end method

.method public updateCachedMobileDataSetting(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 5341
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5342
    return-void
.end method

.method public updateCachedRoamingSetting(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 0
    .param p1, "setting"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 5325
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5326
    return-void
.end method
