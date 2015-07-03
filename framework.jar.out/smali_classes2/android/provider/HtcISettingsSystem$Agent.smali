.class public abstract Landroid/provider/HtcISettingsSystem$Agent;
.super Ljava/lang/Object;
.source "HtcISettingsSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcISettingsSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Agent"
.end annotation


# static fields
.field private static DEBUG:Z

.field private static MONITOR_KEYS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/provider/HtcISettingsSystem$Agent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcISettingsSystem$Agent;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/provider/HtcISettingsSystem$Agent;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/provider/HtcISettingsSystem$Agent;->MONITOR_KEYS:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/HtcISettingsSystem$Agent;->MONITOR_KEYS:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/HtcISettingsSystem$Agent;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/HtcISettingsSystem$Agent;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/HtcISettingsSystem$Agent;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v1, "screen_off_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/HtcISettingsSystem$Agent;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/HtcISettingsSystem$Agent;->MONITOR_KEYS:Ljava/util/HashSet;

    const-string v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static initStaticScope(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "wifi_secure_networks_available_notification_on"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "wifi_http_proxy_on"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "http_proxy_server"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "http_proxy_port"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "data_roaming_allowed"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "data_roaming_blocked"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "voice_roaming_allowed"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "voice_roaming_blocked"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "data_roaming_guard_allowed"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "data_roaming_guard_blocked"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "voice_roaming_guard_allowed"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "voice_roaming_guard_blocked"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "sms_roaming_guard_allowed"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "gpsone_allowed"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "wifi_pwr_active_mode"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "wifi_dhcp_roaming"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "wifi_offload_enabled"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "roaming_sound_on"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "mobile_feature_control"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "cfu_query_when_campon"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "wimax_on"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "data_roaming_guard"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "deny_user_control"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "national_roaming_on"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "usbnet_on"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "vzw_global_roaming_options"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/provider/HtcISettingsSystem$Agent;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logW(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/provider/HtcISettingsSystem$Agent;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static monitorKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/provider/HtcISettingsSystem$Agent;->MONITOR_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MONITOR_LOG"

    invoke-static {v0}, Landroid/provider/HtcISettingsSystem$Agent;->logW(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/HtcISettingsSystem$Agent;->logW(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/HtcISettingsSystem$Agent;->logW(Ljava/lang/String;)V

    invoke-static {}, Landroid/provider/HtcISettings$Agent;->traceCallingStack()V

    :cond_0
    return-void
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
