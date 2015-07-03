.class public interface abstract Landroid/provider/HtcISettingsSecure;
.super Ljava/lang/Object;
.source "HtcISettingsSecure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/HtcISettingsSecure$Agent;
    }
.end annotation


# static fields
.field public static final AUTOSYNC_IN_MOBILE_ON:Ljava/lang/String; = "autosync_in_mobile_on"

.field public static final AUTOSYNC_IN_WIFI_ON:Ljava/lang/String; = "autosync_in_wifi_on"

.field public static final BOOT_LOCK:Ljava/lang/String; = "boot_lock"

.field public static final CFU_QUERY_WHEN_CAMPON_MESSAGE:Ljava/lang/String; = "cfu_query_when_campon"

.field public static final CUSTOMIZED_LOCATION_PROVIDER:Ljava/lang/String; = "customized_location_provider"

.field public static final DATA_ENCRYPTION:Ljava/lang/String; = "data_encryption"

.field public static final DATA_ROAMING_ALLOWED:Ljava/lang/String; = "data_roaming_allowed"

.field public static final DATA_ROAMING_BLOCKED:Ljava/lang/String; = "data_roaming_blocked"

.field public static final DATA_ROAMING_GUARD:Ljava/lang/String; = "data_roaming_guard"

.field public static final DATA_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "data_roaming_guard_allowed"

.field public static final DATA_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "data_roaming_guard_blocked"

.field public static final DATA_ROAMING_SLOT1:Ljava/lang/String; = "data_roaming_slot1"

.field public static final DATA_ROAMING_SLOT2:Ljava/lang/String; = "data_roaming_slot2"

.field public static final DENY_USER_CONTROL:Ljava/lang/String; = "deny_user_control"

.field public static final DTMF_ENABLED:Ljava/lang/String; = "dtmf_enabled"

.field public static final ENABLE_HTC_FASTBOOT:Ljava/lang/String; = "enable_fastboot"

.field public static final ERROR_REPORT_PRIVACY_VERSION:Ljava/lang/String; = "error_report_privacy_version"

.field public static final EXT_ICC_SMS_PHONE_TYPE:Ljava/lang/String; = "ext_icc_sms_phone_type"

.field public static final EXT_MOBILE_DATA_PHONE_TYPE:Ljava/lang/String; = "ext_mobile_data_phone_type"

.field public static final EXT_MOBILE_DATA_SLOT_TYPE:Ljava/lang/String; = "ext_mobile_data_slot_type"

.field public static final EXT_VOICE_CALL_PHONE_TYPE:Ljava/lang/String; = "ext_voice_call_phone_type"

.field public static final GPSONE_ALLOWED:Ljava/lang/String; = "gpsone_allowed"

.field public static final HAS_PEN_DOWN_AFTER_SETUP_WIZARD:Ljava/lang/String; = "has_pen_down_after_setup_wizard"

.field public static final HTCSPEAK_DEFALUT_LANG:Ljava/lang/String; = "htcspeak_default_lang"

.field public static final HTC_2D_3D_MODE:Ljava/lang/String; = "htc_2d_3d_mode"

.field public static final HTC_BLOCK_VIRTUAL_KEY:Ljava/lang/String; = "htc_block_virtual_key"

.field public static final HTC_COLLECT_LOCATION_DATA:Ljava/lang/String; = "htc_collect_location_data"

.field public static final HTC_ERROR_REPORT_AUTO_SEND:Ljava/lang/String; = "htc_error_report_auto_send"

.field public static final HTC_ERROR_REPORT_PREFER_NETWORK:Ljava/lang/String; = "htc_error_report_prefer_network"

.field public static final HTC_ERROR_REPORT_SETTING:Ljava/lang/String; = "htc_error_report_setting"

.field public static final HTC_GPS_LOCK_STATUS:Ljava/lang/String; = "gps_lock_status"

.field public static final HTC_GPS_LOCK_VALUE:Ljava/lang/String; = "gps_lock_value"

.field public static final HTC_LOCATE_ALLOWED:Ljava/lang/String; = "htc_locate_allowed"

.field public static final HTC_MESSAGE_NOTIFICATION_PREVIEW:Ljava/lang/String; = "htc_message_notification_preview"

.field public static final HTC_NEW_MESSAGE_NOTIFICATION:Ljava/lang/String; = "htc_new_message_notification"

.field public static final HTC_PHONE_NOTIFICATION_PREVIEW:Ljava/lang/String; = "htc_phone_notification_preview"

.field public static final HTC_SPEAK_ANNOUNCE:Ljava/lang/String; = "htc_speak_announce"

.field public static final HTTP_PROXY_PORT:Ljava/lang/String; = "http_proxy_port"

.field public static final HTTP_PROXY_SERVER:Ljava/lang/String; = "http_proxy_server"

.field public static final INTEGRATE_GOOGLE_NAVIGATION:Ljava/lang/String; = "integrate_google_navigation"

.field public static final LOCK_FINGERPRINT_ENABLED:Ljava/lang/String; = "lock_fingerprint_autolock"

.field public static final LOGGING_ID2:Ljava/lang/String; = "logging_id2"

.field public static final MMS_X_WAP_PROFILE_URL:Ljava/lang/String; = "mms_x_wap_profile_url"

.field public static final MOBILEDATA_ON:Ljava/lang/String; = "mobiledata_on"

.field public static final MOBILE_FEATURE_CONTROL:Ljava/lang/String; = "mobile_feature_control"

.field public static final NATIONAL_ROAMING_ON:Ljava/lang/String; = "national_roaming_on"

.field public static final NATIONAL_ROAMING_SLOT1:Ljava/lang/String; = "national_roaming_slot1"

.field public static final NATIONAL_ROAMING_SLOT2:Ljava/lang/String; = "national_roaming_slot2"

.field public static final PDP_WATCHDOG_PING_ADDRESS:Ljava/lang/String; = "pdp_watchdog_ping_address"

.field public static final PDP_WATCHDOG_PING_DEADLINE:Ljava/lang/String; = "pdp_watchdog_ping_deadline"

.field public static final PEN_AS_TOUCH:Ljava/lang/String; = "pen_as_touch"

.field public static final PEN_ATTR_FOR_EACH_APP:Ljava/lang/String; = "pen_attr_for_each_app"

.field public static final PEN_ATTR_FOR_EACH_APP_DEFAULT:I = 0x0

.field public static final PEN_ENABLE_SKETCH:Ljava/lang/String; = "pen_enable_sketch"

.field public static final PEN_ENABLE_SKETCH_DEFAULT:I = 0x0

.field public static final PEN_LOWER_BUTTON_ID:Ljava/lang/String; = "pen_lower_button_id"

.field public static final PEN_UPPER_BUTTON_ID:Ljava/lang/String; = "pen_upper_button_id"

.field public static final PHONE_ENCRYPTION:Ljava/lang/String; = "phone_encryption"

.field public static final ROAMING_SOUND_ON:Ljava/lang/String; = "roaming_sound_on"

.field public static final SD_ENCRYPTION:Ljava/lang/String; = "sd_encryption"

.field public static final SELECT_RESOLUTION_TYPE:Ljava/lang/String; = "select_resolution_type"

.field public static final SEND_HTC_APPLICATION_LOG:Ljava/lang/String; = "send_htc_application_log"

.field public static final SEND_HTC_ERROR_REPORT:Ljava/lang/String; = "send_htc_error_report"

.field public static final SMS_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "sms_roaming_guard_allowed"

.field public static final SPRINT_DOMESTIC_DATA_GUARD:Ljava/lang/String; = "sprint_domestic_data_guard"

.field public static final SPRINT_DOMESTIC_DATA_ROAMING:Ljava/lang/String; = "sprint_domestic_data_roaming"

.field public static final SPRINT_DOMESTIC_VOICE_GUARD:Ljava/lang/String; = "sprint_domestic_voice_guard"

.field public static final SPRINT_DOMESTIC_VOICE_ROAMING:Ljava/lang/String; = "sprint_domestic_voice_roaming"

.field public static final SPRINT_GSM_DATA_GUARD:Ljava/lang/String; = "sprint_gsm_data_guard"

.field public static final SPRINT_GSM_VOICE_GUARD:Ljava/lang/String; = "sprint_gsm_voice_guard"

.field public static final SPRINT_INTERNATIONAL_DATA_GUARD:Ljava/lang/String; = "sprint_international_data_guard"

.field public static final SPRINT_INTERNATIONAL_DATA_ROAMING:Ljava/lang/String; = "sprint_international_data_roaming"

.field public static final SPRINT_INTERNATIONAL_VOICE_GUARD:Ljava/lang/String; = "sprint_international_voice_guard"

.field public static final SPRINT_INTERNATIONAL_VOICE_ROAMING:Ljava/lang/String; = "sprint_international_voice_roaming"

.field public static final TELLHTC_ENABLE_SENSE_DOT_COM_LOG:Ljava/lang/String; = "tellhtc_enable_sense_dot_com_log"

.field public static final TELL_HTC_PRIVACY_VERSION:Ljava/lang/String; = "tell_htc_privacy_version"

.field public static final TETHERING_BLOCKED:Ljava/lang/String; = "tethering_blocked"

.field public static final USBNET_ON:Ljava/lang/String; = "usbnet_on"

.field public static final USER_PROFILE_PRIVACY_VERSION:Ljava/lang/String; = "user_profile_privacy_version"

.field public static final VOICE_ROAMING_ALLOWED:Ljava/lang/String; = "voice_roaming_allowed"

.field public static final VOICE_ROAMING_BLOCKED:Ljava/lang/String; = "voice_roaming_blocked"

.field public static final VOICE_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "voice_roaming_guard_allowed"

.field public static final VOICE_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "voice_roaming_guard_blocked"

.field public static final VZW_GLOBAL_ROAMING_OPTIONS:Ljava/lang/String; = "vzw_global_roaming_options"

.field public static final WIFI_ASSOCIATE_MODE:Ljava/lang/String; = "wifi_associate_manual"

.field public static final WIFI_AUTO_IP_ON:Ljava/lang/String; = "wifi_auto_ip_on"

.field public static final WIFI_DHCP_ROAMING:Ljava/lang/String; = "wifi_dhcp_roaming"

.field public static final WIFI_HTTP_PROXY_ON:Ljava/lang/String; = "wifi_http_proxy_on"

.field public static final WIFI_NUM_ALLOWED_CHANNELS:Ljava/lang/String; = "wifi_num_allowed_channels"

.field public static final WIFI_OFFLOAD_ENABLED:Ljava/lang/String; = "wifi_offload_enabled"

.field public static final WIFI_PWR_ACTIVE_MODE:Ljava/lang/String; = "wifi_pwr_active_mode"

.field public static final WIFI_SCAN_INTERVAL_MS:Ljava/lang/String; = "wifi_scan_interval_ms"

.field public static final WIFI_SECURE_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_secure_networks_available_notification_on"

.field public static final WIMAX_IDLE_MS:Ljava/lang/String; = "wimax_idle_ms"

.field public static final WIMAX_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wimax_mobile_data_transition_wakelock_timeout_ms"

.field public static final WIMAX_ON:Ljava/lang/String; = "wimax_on"
