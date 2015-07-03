.class public Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needDataPathUpdate()Z
    .locals 1

    .prologue
    .line 2161
    const/4 v0, 0x0

    return v0
.end method

.method public needDataRoamingSoundUpdate()Z
    .locals 1

    .prologue
    .line 2128
    const/4 v0, 0x0

    return v0
.end method

.method public needDataRoamingUpdate()Z
    .locals 1

    .prologue
    .line 2107
    const/4 v0, 0x0

    return v0
.end method

.method public needMobileDataMenuUpdate()Z
    .locals 1

    .prologue
    .line 2086
    const/4 v0, 0x0

    return v0
.end method

.method public needMobileDataUpdate()Z
    .locals 1

    .prologue
    .line 2065
    const/4 v0, 0x0

    return v0
.end method

.method public updateDataPath(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 2173
    return-void
.end method

.method public updateDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "status"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 2120
    return-void
.end method

.method public updateDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "status"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 2141
    return-void
.end method

.method public updateDialogDisplay(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 2153
    return-void
.end method

.method public updateMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "status"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 2078
    return-void
.end method

.method public updateMobileDataMenu(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Menu;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "menu"    # Lcom/android/internal/telephony/MobileNetwork$Menu;

    .prologue
    .line 2099
    return-void
.end method
