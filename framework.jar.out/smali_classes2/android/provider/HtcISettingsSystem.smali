.class public interface abstract Landroid/provider/HtcISettingsSystem;
.super Ljava/lang/Object;
.source "HtcISettingsSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/HtcISettingsSystem$Agent;
    }
.end annotation


# static fields
.field public static final AGPS_ENABLED:Ljava/lang/String; = "agps_enabled"

.field public static final APPEND_FOR_HEADSET:Ljava/lang/String; = "_headset"

.field public static final APP_SWITCH_ACTION_ALWAYS_RECENTAPPS:I = 0x0

.field public static final APP_SWITCH_ACTION_PRESS_MENU_HOLD_RECENTAPPS:I = 0x1

.field public static final APP_SWITCH_ACTION_PRESS_RECENTAPPS_HOLD_MENU:I = 0x2

.field public static final APP_SWITCH_KEY_BEHAVIOR:Ljava/lang/String; = "APP_SWITCH_KEY_BEHAVIOR"

.field public static final AUTO_APPLY_UPDATE:Ljava/lang/String; = "auto_apply_set_time_city_locale"

.field public static final AUTO_UPDATE_BY_LOC:Ljava/lang/String; = "auto_set_time_city_locale"

.field public static final BACKKEY_SWITCH_BEHAVIOR:Ljava/lang/String; = "BACKKEY_SWITCH_BEHAVIOR"

.field public static final BACK_KEY_ACTION_ALWAYS_DISPATCH:I = 0x0

.field public static final BACK_KEY_ACTION_PRESS_DISPATCH_HOLD_MENU:I = 0x1

.field public static final BE_POLITE:Ljava/lang/String; = "be_polite"

.field public static final BLUETOOTH_DISCOVERABILITY_END_TIMESTAMP:Ljava/lang/String; = "bluetooth_discoverability_end_timestamp"

.field public static final BLUETOOTH_FTP_SETTINGS:Ljava/lang/String; = "bt_svcst_bluetooth_ftp"

.field public static final BLUETOOTH_MAP_SETTINGS:Ljava/lang/String; = "bt_svcst_bluetooth_map"

.field public static final BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field public static final CALENDAR_NOTIFICATION_SOUND:Ljava/lang/String; = "cal_notification"

.field public static final CALENDAR_SHOW_LUNAR:Ljava/lang/String; = "calendar_show_lunar"

.field public static final CALENDAR_START_WEEKDAY:Ljava/lang/String; = "calendar_start_weekday"

.field public static final CHARM_INDICATOR_SUPPORTED:Ljava/lang/String; = "charm_indicator_supported"

.field public static final CHARM_MESSAGE_NOTIFICATION:Ljava/lang/String; = "charm_message_notification"

.field public static final CHARM_MESSAGE_RECEIVED_NOTIFICATION:Ljava/lang/String; = "charm_message_received_notification"

.field public static final CHARM_PHONE_NOTIFICATION:Ljava/lang/String; = "charm_phone_notification"

.field public static final CHARM_VOICE_MAIL_NOTIFICATION:Ljava/lang/String; = "charm_voice_mail_notification"

.field public static final COMPASS_WARNING:Ljava/lang/String; = "compass_warning"

.field public static final CUSTOM_ORIENTATION:Ljava/lang/String; = "custom_orientation"

.field public static final CUSTOM_ORIENTATION_ROTATION_0:I = 0x0

.field public static final CUSTOM_ORIENTATION_ROTATION_180:I = 0x2

.field public static final CUSTOM_ORIENTATION_ROTATION_270:I = 0x3

.field public static final CUSTOM_ORIENTATION_ROTATION_90:I = 0x1

.field public static final CUSTOM_ORIENTATION_ROTATION_DEFAULT:I = -0x1

.field public static final DATA_ROAMING_ALLOWED:Ljava/lang/String; = "data_roaming_allowed"

.field public static final DATA_ROAMING_BLOCKED:Ljava/lang/String; = "data_roaming_blocked"

.field public static final DATA_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "data_roaming_guard_allowed"

.field public static final DATA_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "data_roaming_guard_blocked"

.field public static final DATE_FORMAT_SHORT:Ljava/lang/String; = "date_format_short"

.field public static final DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_MSG_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_VZW_ALLOW_VOLTE_PROVISIONING:I = 0x0

.field public static final DENY_USER_CONTROL:Ljava/lang/String; = "deny_user_control"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_NAME:Ljava/lang/String; = "bluetooth_name"

.field public static final DM_SUPL_IAPID:Ljava/lang/String; = "dm_supl_iapid"

.field public static final DM_SUPL_OPTIONAL_APN:Ljava/lang/String; = "dm_supl_optional_apn"

.field public static final DM_SUPL_PREFERRED_APN:Ljava/lang/String; = "dm_supl_preferred_apn"

.field public static final DM_SUPL_SERVER_IP:Ljava/lang/String; = "dm_supoer_server_ip"

.field public static final DM_SUPL_SERVER_NAME:Ljava/lang/String; = "dm_supl_server_name"

.field public static final DM_SUPL_SERVER_PORT:Ljava/lang/String; = "dm_supoer_server_port"

.field public static final DOCK_HOTSPOT_ON:Ljava/lang/String; = "dock_hotspot_on"

.field public static final DOCK_WIFI_ON:Ljava/lang/String; = "dock_wifi_on"

.field public static final DSA_PROXY_URL:Ljava/lang/String; = "dsa_proxy_url"

.field public static final DSA_PROXY_URL_DEFAULT:Ljava/lang/String; = "144.226.247.31:80"

.field public static final DSA_SERVER_URL:Ljava/lang/String; = "dsa_server_url"

.field public static final DSA_SERVER_URL_DEFAULT:Ljava/lang/String; = "https://dsa.spcsdns.net:443/dsa/"

.field public static final DUMMY_STRING_FOR_PADDING:Ljava/lang/String; = ""

.field public static final ENABLE_POWER_EFFICIENCY:Ljava/lang/String; = "enable_power_efficiency"

.field public static final FACEBOOK_EVENT_FLASH_BUTTON:Ljava/lang/String; = "facebook_event_flash_button"

.field public static final FLIP_TO_SPEAKER:Ljava/lang/String; = "flip_to_speaker"

.field public static final FOTA_DOWNLOAD_OPTION:Ljava/lang/String; = "FOTA_download_options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOTA_PERIODIC_CHECKIN:Ljava/lang/String; = "FOTA_periodic_checkin"

.field public static final GOOGLE_SYNC_CALENDAR:Ljava/lang/String; = "google_sync_calendar"

.field public static final GOOGLE_SYNC_CONTACTS:Ljava/lang/String; = "google_sync_contact"

.field public static final GOOGLE_SYNC_GMAIL:Ljava/lang/String; = "google_sync_gmai"

.field public static final HIDE_NAV_BAR:Ljava/lang/String; = "HIDE_NAV_BAR"

.field public static final HOME_COUNTRY_ENABLED:Ljava/lang/String; = "home_country_enabled"

.field public static final HOME_DIALING_COUNTRY_CODE:Ljava/lang/String; = "home_dialing_country_code"

.field public static final HOME_DIALING_POPUP_DIALOG:Ljava/lang/String; = "home_dialing_popup_dialog"

.field public static final HOME_DIALING_PREF:Ljava/lang/String; = "home_dialing_pref"

.field public static final HOME_DIALING_ROAMING_STATE:Ljava/lang/String; = "home_dialing_roaming_state"

.field public static final HOME_DIALING_TRUNK_CODE:Ljava/lang/String; = "home_dialing_trunk_code"

.field public static final HOTSPOT_BAND:Ljava/lang/String; = "hotspot_band"

.field public static final HOTSPOT_BLACK_LIST:Ljava/lang/String; = "hotspot_black_list"

.field public static final HOTSPOT_BLOCK_LIST:Ljava/lang/String; = "hotspot_block_list"

.field public static final HOTSPOT_CHANNEL:Ljava/lang/String; = "hotspot_channel"

.field public static final HOTSPOT_CHANNEL_5G:Ljava/lang/String; = "hotspot_channel_5G"

.field public static final HOTSPOT_CONNECTION_ARRAY:Ljava/lang/String; = "hotspot_connection_array"

.field public static final HOTSPOT_DHCP_MAX_CONNECTION:Ljava/lang/String; = "hotspot_dhcp_max_connection"

.field public static final HOTSPOT_DHCP_ON:Ljava/lang/String; = "hotspot_dhcp_on"

.field public static final HOTSPOT_DHCP_STARTING_IP:Ljava/lang/String; = "hotspot_dhcp_start_ip"

.field public static final HOTSPOT_HIDDEN:Ljava/lang/String; = "hotspot_hidden"

.field public static final HOTSPOT_IP_ADDRESS:Ljava/lang/String; = "hotspot_id_address"

.field public static final HOTSPOT_MACFILTER_ON:Ljava/lang/String; = "hotspot_macfilter_on"

.field public static final HOTSPOT_MAX_CONNECTION:Ljava/lang/String; = "hotspot_max_connection"

.field public static final HOTSPOT_ON:Ljava/lang/String; = "hotspot_on"

.field public static final HOTSPOT_PASSWORD:Ljava/lang/String; = "hotspot_password"

.field public static final HOTSPOT_POWERMODE:Ljava/lang/String; = "hotspot_powermode"

.field public static final HOTSPOT_POWER_MODE_REMIND_DIALOG:Ljava/lang/String; = "hotspot_power_mode_remind"

.field public static final HOTSPOT_REMIND_DIALOG:Ljava/lang/String; = "hotspot_remind_dialog"

.field public static final HOTSPOT_SECURITY_TYPE:Ljava/lang/String; = "hotspot_security_type"

.field public static final HOTSPOT_SLEEP_POLICY:Ljava/lang/String; = "hotspot_sleep_policy"

.field public static final HOTSPOT_SSID:Ljava/lang/String; = "hotspot_ssid"

.field public static final HOTSPOT_SUBNET_MASK:Ljava/lang/String; = "hotspot_subnet_mask"

.field public static final HOTSPOT_WHITE_LIST:Ljava/lang/String; = "hotspot_white_list"

.field public static final HTCSPEAK_DEFALUT_LANG:Ljava/lang/String; = "htcspeak_default_lang"

.field public static final HTC_3D_HOME_SCREEN:Ljava/lang/String; = "htc_3d_home_screen"

.field public static final HTC_APPLICATION_AUTOMATIC_STARTUP:Ljava/lang/String; = "htc_application_automatic_startup"

.field public static final HTC_APPLICATION_NOTIFICATION:Ljava/lang/String; = "htc_application_notification"

.field public static final HTC_APP_STORAGE_LOCATION_BACKUP:Ljava/lang/String; = "htc_app_storage_loc_backup"

.field public static final HTC_APP_STORAGE_LOCATION_PHONE_STORAGE:I = 0x1

.field public static final HTC_APP_STORAGE_LOCATION_SD_CARD_STORAGE:I = 0x2

.field public static final HTC_APP_STORAGE_LOCATION_UNKNOWN_STORAGE:I = 0x0

.field public static final HTC_DND_AUTO_TURN_OFF_ENABLED:Ljava/lang/String; = "htc_dnd_auto_turn_off_enabled"

.field public static final HTC_DND_AUTO_TURN_OFF_MINUTES:Ljava/lang/String; = "htc_dnd_auto_turn_off_minutes"

.field public static final HTC_DND_FEATURE_ENABLED:Ljava/lang/String; = "htc_dnd_feature_enabled"

.field public static final HTC_DND_PLAY_SOUND_ENABLED:Ljava/lang/String; = "htc_dnd_play_sound_enabled"

.field public static final HTC_EASY_ACCESS_ACTION:Ljava/lang/String; = "HTC_EASY_ACCESS_ACTION"

.field public static final HTC_HOME_LONGPRESSED_KEY:Ljava/lang/String; = "htc_home_longpressed_key"

.field public static final HTC_HOME_SWIPE:Ljava/lang/String; = "htc_home_swipe"

.field public static final HTC_KEY_DOUBLE_CLICK_INTERVAL:Ljava/lang/String; = "htc_key_double_click_interval"

.field public static final HTC_MAGNIFIER_SETTING:Ljava/lang/String; = "htc_magnifier_setting"

.field public static final HTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String; = "htc_app_storage_loc_"

.field public static final HTC_SCREEN_AUTO_BRIGHTNESS_MAX:Ljava/lang/String; = "screen_auto_brightness_max"

.field public static final HTC_STV_MIRROR_MODE_NOTIFICATION_ON:Ljava/lang/String; = "htc_stv_mirror_mode_notification_on"

.field public static final HTC_WIRELESS_SLEEP_END_TIME:Ljava/lang/String; = "htc_wireless_sleep_end_time"

.field public static final HTC_WIRELESS_SLEEP_MODE_ENABLED:Ljava/lang/String; = "htc_wireless_sleep_mode_enabled"

.field public static final HTC_WIRELESS_SLEEP_START_TIME:Ljava/lang/String; = "htc_wireless_sleep_start_time"

.field public static final INACTIVITY_TIME:Ljava/lang/String; = "inactivity_time"

.field public static final MODE_CDMA:Ljava/lang/String; = "mode_cdma"

.field public static final MODE_GSM:Ljava/lang/String; = "mode_gsm"

.field public static final MODE_WCDMA:Ljava/lang/String; = "mode_wcdma"

.field public static final MSG_NOTIFICATION_SOUND:Ljava/lang/String; = "msg_notification"

.field public static final MVNO_OPERATOR:Ljava/lang/String; = "mvno_operator"

.field public static final NATIVE_DIGITS:Ljava/lang/String; = "native_digits"

.field public static final NETWORK_SELECTION:Ljava/lang/String; = "network_selection"

.field public static final NOTIFICATION_BUBBLE:Ljava/lang/String; = "notification_bubble"

.field public static final OPENNETWORK_BLOCKED_LIST_ARRAY:Ljava/lang/String; = "OPENNETWORK_BLOCKED_LIST_ARRAY"

.field public static final POCKET_MODE:Ljava/lang/String; = "pocket_mode"

.field public static final POWERSAVER_ENABLE:Ljava/lang/String; = "powersaver_enable"

.field public static final POWER_SAVE_3G:Ljava/lang/String; = "3g_power_save"

.field public static final PREF_AUTOBACKLIGHT:Ljava/lang/String; = "settings.display.autobacklight"

.field public static final PREF_BRIGHTNESS:Ljava/lang/String; = "settings.display.brightness"

.field public static final PSAVER_ENABLE:Ljava/lang/String; = "psaver_enable"

.field public static final PSAVER_SCHEDULE:Ljava/lang/String; = "psaver_schedule"

.field public static final RADIO_USBNET:Ljava/lang/String; = "usbnet"

.field public static final SCREEN_AUTO:Ljava/lang/String; = "screen_auto"

.field public static final SETTING_ROAMING_RINGTONE:Ljava/lang/String; = "roaming_ringtone_on"

.field public static final SETTING_SD_CARD_NOTIFICATIONS:Ljava/lang/String; = "sd_card_notifications"

.field public static final SET_POWER_MODE:Ljava/lang/String; = "set_powermode"

.field public static final SHOW_ALL_QUICK_TIPS:Ljava/lang/String; = "show_all_quick_tips"

.field public static final SILENT_MODE:Ljava/lang/String; = "silent_mode"

.field public static final SMART_WIFI_ENABLED:Ljava/lang/String; = "smart_wifi_enabled"

.field public static final SMS_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "sms_roaming_guard_allowed"

.field public static final SPRINT_GLMS_PRIMARY_URL:Ljava/lang/String; = "sprint_glms_primary_url"

.field public static final SPRINT_GLMS_SECONDARY_URL:Ljava/lang/String; = "sprint_glms_secondary_url"

.field public static final SPRINT_MOBILE_SYNC_ENABLE:Ljava/lang/String; = "sprint_mobile_sync_enable"

.field public static final SPRINT_MOBILE_SYNC_PRIMARY_CDMA_URL:Ljava/lang/String; = "sprint_mobile_sync_primary_cdma_url"

.field public static final SPRINT_MOBILE_SYNC_SECONDARY_WIFI_URL:Ljava/lang/String; = "sprint_mobile_sync_secondary_wifi_url"

.field public static final SUB_MVNO_OPERATOR:Ljava/lang/String; = "sub_mvno_operator"

.field public static final VOICE_ROAMING_ALLOWED:Ljava/lang/String; = "voice_roaming_allowed"

.field public static final VOICE_ROAMING_BLOCKED:Ljava/lang/String; = "voice_roaming_blocked"

.field public static final VOICE_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "voice_roaming_guard_allowed"

.field public static final VOICE_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "voice_roaming_guard_blocked"

.field public static final VOLUME_DTMF:Ljava/lang/String; = "volume_dtmf"

.field public static final VOLUME_FM:Ljava/lang/String; = "volume_fm"

.field public static final VZW_ALLOW_VOLTE_PROVISIONING:Ljava/lang/String; = "allow_volte_provisioning"

.field public static final VZW_GLOBAL_ROAMING_OPTIONS:Ljava/lang/String; = "vzw_global_roaming_options"

.field public static final WEATHER_WALLPAPER_ANIMATION_ALLOWED:Ljava/lang/String; = "weather_wallpaper_animation_allowed"

.field public static final WIFI_AUTO_INTERWORKING:Ljava/lang/String; = "wifi_auto_interworking"

.field public static final WIFI_CAPTIVE_PORTAL_ENABLE:Ljava/lang/String; = "wifi_captive_portal_enable"

.field public static final WIFI_NUM_ALLOWED_CHANNELS:Ljava/lang/String; = "wifi_num_allowed_channels"

.field public static final WIFI_SECURE_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_secure_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SIM_PRECONFIG:Ljava/lang/String; = "wifi_sim_preconfig"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cal_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcISettingsSystem;->DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v0, "msg_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcISettingsSystem;->DEFAULT_MSG_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method
