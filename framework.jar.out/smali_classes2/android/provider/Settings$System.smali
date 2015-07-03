.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"

# interfaces
.implements Landroid/provider/HtcISettingsSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"

.field public static final ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "_analog_dock"

.field private static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "_aux_digital"

.field private static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "_bt_a2dp_hp"

.field private static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "_bt_a2dp"

.field private static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "_bt_a2dp_spk"

.field private static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "_bt_sco_carkit"

.field private static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "_bt_sco_hs"

.field private static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "_bt_sco"

.field private static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "_digital_dock"

.field private static final DEVICE_OUT_DIRECT_OUTPUT_NAME:Ljava/lang/String; = "_direct_output"

.field private static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "_earpiece"

.field private static final DEVICE_OUT_FM_DEVICE_NAME:Ljava/lang/String; = "_fm_device"

.field private static final DEVICE_OUT_FM_TX_DEVICE_NAME:Ljava/lang/String; = "_fm_tx_device"

.field private static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "_hdmi"

.field private static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "_speaker"

.field private static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "_usb_accessory"

.field private static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "_usb_device"

.field private static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "_headphone"

.field private static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "_headset"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"

.field public static final EGG_MODE:Ljava/lang/String; = "egg_mode"

.field private static final EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field public static final FLIPFONT:Ljava/lang/String; = "flipfont"

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"

.field private static final HTC_ANIMATION_ENABLED:Ljava/lang/String; = "htc_animation_enabled"

.field private static final HTC_FONT_SIZE:Ljava/lang/String; = "htc_font_size"

.field private static final HTC_GESTURES_ENABLED:Ljava/lang/String; = "htc_gestures_enabled"

.field private static final HTC_PULL_TO_FRESH_SOUND_ENABLED:Ljava/lang/String; = "htc_pull_to_fresh_sound_enabled"

.field private static final HTC_TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "htc_transition_animation_scale"

.field private static final HTC_WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "htc_window_animation_scale"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_ENABLED:Ljava/lang/String; = "lock_to_app_enabled"

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"

.field public static final MICROPHONE_MUTE:Ljava/lang/String; = "microphone_mute"

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"

.field public static final POINTER_SPEED:Ljava/lang/String; = "pointer_speed"

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PROFILE_PREFIX:[Ljava/lang/String;

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_system_version"

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_ROTATION:Ljava/lang/String; = "user_rotation"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static final VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_MASTER:Ljava/lang/String; = "volume_master"

.field public static final VOLUME_MASTER_MUTE:Ljava/lang/String; = "volume_master_mute"

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHEN_TO_MAKE_WIFI_CALLS:Ljava/lang/String; = "when_to_make_wifi_calls"

.field public static final WIFI_ASSOCIATE_MODE:Ljava/lang/String; = "wifi_associate_manual"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-string v1, "sys.settings_system_version"

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "GET_system"

    const-string v4, "PUT_system"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_biometric_weak_flags"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "logging_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_last_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_redirect_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "settings_classname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-static {v0}, Landroid/provider/HtcISettingsSystem$Agent;->initStaticScope(Ljava/util/HashSet;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "auto_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "auto_time_zone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "car_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "car_undock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "desk_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "desk_undock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dock_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "lock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "unlock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "low_battery_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "power_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "stay_on_while_plugged_in"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "wifi_sleep_policy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "mode_ringer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "window_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "transition_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "animator_duration_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "fancy_ime_animations"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "compatibility_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "emergency_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "call_auto_retry"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "debug_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "wait_for_debugger"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "show_processes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "always_finish_activities"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "tzinfo_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "tzinfo_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "selinux_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "selinux_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "sms_short_codes_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "sms_short_codes_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cert_pin_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cert_pin_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "volume_voice"

    aput-object v1, v0, v5

    const-string v1, "volume_system"

    aput-object v1, v0, v6

    const-string v1, "volume_ring"

    aput-object v1, v0, v7

    const-string v1, "volume_music"

    aput-object v1, v0, v8

    const-string v1, "volume_alarm"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "volume_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "volume_fm"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    const-string v0, "ringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    const-string v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v0, "alarm_alert"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Handset_"

    aput-object v1, v0, v5

    const-string v1, "MutiMedia_"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    const/16 v0, 0x167

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_use_static_ip"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v6

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v7

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v8

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_discoverability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_discoverability_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dim_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "screen_off_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vibrate_input_devices"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mode_ringer_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "volume_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "volume_system"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "volume_ring"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "volume_music"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "volume_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "volume_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "volume_voice_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "volume_system_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "volume_ring_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "volume_music_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "volume_alarm_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "volume_notification_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "volume_bluetooth_sco_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "auto_replace"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "auto_caps"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "auto_punctuate"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "auto_time"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "auto_time_zone"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "time_12_24"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "dtmf_tone_type"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "hearing_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "tty_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sound_effects_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "power_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "dock_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "show_web_suggestions"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "notification_light_pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "sip_call_options"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "sip_receive_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "pointer_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "notification_sound"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "weather_wallpaper_animation_allowed"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "wifi_sleep_policy"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "bt_svcst_bluetooth_ftp"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "bt_svcst_bluetooth_map"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "inactivity_time"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "notifications_use_ring_volume"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "volume_dtmf"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "volume_voice_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "volume_system_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "volume_ring_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "volume_music_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "volume_alarm_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "volume_notification_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "volume_voice_last_audible_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "volume_system_last_audible_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "volume_ring_last_audible_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "volume_music_last_audible_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "volume_alarm_last_audible_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "volume_notification_last_audible_earpiece"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "volume_voice_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "volume_system_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "volume_ring_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "volume_music_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "volume_alarm_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "volume_notification_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "volume_voice_last_audible_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "volume_system_last_audible_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "volume_ring_last_audible_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "volume_music_last_audible_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "volume_alarm_last_audible_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "volume_notification_last_audible_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "volume_voice_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "volume_system_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "volume_ring_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "volume_music_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "volume_alarm_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "volume_notification_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "volume_voice_last_audible_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "volume_system_last_audible_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "volume_ring_last_audible_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "volume_music_last_audible_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "volume_alarm_last_audible_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "volume_notification_last_audible_headset"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "volume_voice_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "volume_system_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "volume_ring_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "volume_music_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "volume_alarm_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "volume_notification_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "volume_voice_last_audible_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "volume_system_last_audible_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "volume_ring_last_audible_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "volume_music_last_audible_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "volume_alarm_last_audible_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "volume_notification_last_audible_headphone"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "volume_voice_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "volume_system_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "volume_ring_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "volume_music_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "volume_alarm_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "volume_notification_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "volume_voice_last_audible_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "volume_system_last_audible_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "volume_ring_last_audible_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "volume_music_last_audible_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "volume_alarm_last_audible_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "volume_notification_last_audible_bt_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "volume_voice_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "volume_system_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "volume_ring_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "volume_music_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "volume_alarm_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "volume_notification_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "volume_voice_last_audible_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "volume_system_last_audible_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "volume_ring_last_audible_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "volume_music_last_audible_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "volume_alarm_last_audible_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "volume_notification_last_audible_bt_sco_hs"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "volume_voice_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "volume_system_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "volume_ring_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "volume_music_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "volume_alarm_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "volume_notification_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "volume_voice_last_audible_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "volume_system_last_audible_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "volume_ring_last_audible_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "volume_music_last_audible_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "volume_alarm_last_audible_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "volume_notification_last_audible_bt_sco_carkit"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "volume_voice_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "volume_system_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "volume_ring_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "volume_music_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "volume_alarm_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "volume_notification_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "volume_voice_last_audible_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "volume_system_last_audible_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "volume_ring_last_audible_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "volume_music_last_audible_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "volume_alarm_last_audible_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "volume_notification_last_audible_bt_a2dp"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "volume_voice_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "volume_system_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "volume_ring_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "volume_music_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "volume_alarm_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "volume_notification_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "volume_voice_last_audible_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "volume_system_last_audible_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "volume_ring_last_audible_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "volume_music_last_audible_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "volume_alarm_last_audible_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "volume_notification_last_audible_bt_a2dp_hp"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "volume_voice_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "volume_system_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "volume_ring_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "volume_music_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "volume_alarm_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "volume_notification_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "volume_voice_last_audible_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "volume_system_last_audible_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "volume_ring_last_audible_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "volume_music_last_audible_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "volume_alarm_last_audible_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "volume_notification_last_audible_bt_a2dp_spk"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "volume_voice_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "volume_system_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "volume_ring_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "volume_music_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "volume_alarm_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "volume_notification_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "volume_voice_last_audible_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "volume_system_last_audible_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "volume_ring_last_audible_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "volume_music_last_audible_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "volume_alarm_last_audible_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "volume_notification_last_audible_aux_digital"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "volume_voice_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "volume_system_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "volume_ring_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "volume_music_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "volume_alarm_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "volume_notification_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "volume_voice_last_audible_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "volume_system_last_audible_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "volume_ring_last_audible_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "volume_music_last_audible_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "volume_alarm_last_audible_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "volume_notification_last_audible_analog_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "volume_voice_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "volume_system_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "volume_ring_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "volume_music_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "volume_alarm_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "volume_notification_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "volume_voice_last_audible_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "volume_system_last_audible_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "volume_ring_last_audible_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "volume_music_last_audible_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "volume_alarm_last_audible_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "volume_notification_last_audible_digital_dock"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "volume_voice_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "volume_system_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "volume_ring_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "volume_music_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "volume_alarm_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "volume_notification_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "volume_voice_last_audible_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "volume_system_last_audible_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "volume_ring_last_audible_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "volume_music_last_audible_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "volume_alarm_last_audible_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "volume_notification_last_audible_usb_accessory"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "volume_voice_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "volume_system_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "volume_ring_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "volume_music_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "volume_alarm_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "volume_notification_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "volume_voice_last_audible_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "volume_system_last_audible_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "volume_ring_last_audible_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "volume_music_last_audible_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "volume_alarm_last_audible_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "volume_notification_last_audible_usb_device"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "volume_voice_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "volume_system_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "volume_ring_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "volume_music_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "volume_alarm_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "volume_notification_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "volume_voice_last_audible_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "volume_system_last_audible_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "volume_ring_last_audible_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "volume_music_last_audible_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "volume_alarm_last_audible_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "volume_notification_last_audible_fm_device"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "volume_voice_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "volume_system_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "volume_ring_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "volume_music_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "volume_alarm_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "volume_notification_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "volume_voice_last_audible_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "volume_system_last_audible_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "volume_ring_last_audible_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "volume_music_last_audible_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "volume_alarm_last_audible_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "volume_notification_last_audible_fm_tx_device"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "volume_voice_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "volume_system_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "volume_ring_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "volume_music_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "volume_alarm_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "volume_notification_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "volume_voice_last_audible_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "volume_system_last_audible_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "volume_ring_last_audible_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "volume_music_last_audible_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "volume_alarm_last_audible_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "volume_notification_last_audible_direct_output"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "volume_voice_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "volume_system_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "volume_ring_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "volume_music_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "volume_alarm_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "volume_notification_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "volume_voice_last_audible_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "volume_system_last_audible_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "volume_ring_last_audible_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "volume_music_last_audible_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "volume_alarm_last_audible_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "volume_notification_last_audible_hdmi"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "volume_fm"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_voice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_ring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_voice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_ring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mode_ringer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_voice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_ring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_voice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_ring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "volume_notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_last_audible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Settings$System;->PROFILE_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mode_ringer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "volume_dtmf_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "be_polite"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "pocket_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "flip_to_speaker"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "window_animation_scale"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "transition_animation_scale"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "silent_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "FOTA_periodic_checkin"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "roaming_ringtone_on"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "sd_card_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "psaver_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "psaver_schedule"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "htc_application_automatic_startup"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "htc_application_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "htc_wireless_sleep_mode_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "htc_wireless_sleep_start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "htc_wireless_sleep_end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "charm_message_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "charm_phone_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "charm_voice_mail_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "charm_message_received_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "charm_indicator_supported"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "htcspeak_default_lang"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "enable_power_efficiency"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "set_powermode"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "powersaver_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "htc_app_storage_loc_backup"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "htc_gestures_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "htc_animation_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "htc_window_animation_scale"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "htc_transition_animation_scale"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "htc_font_size"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "compass_warning"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "date_format_short"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "accelerometer_rotation"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "htc_magnifier_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "bluetooth_name"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "bt_svcst_bluetooth_ftp"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "bt_svcst_bluetooth_map"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "vibrate_on"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "htc_pull_to_fresh_sound_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "htc_dnd_auto_turn_off_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "htc_dnd_auto_turn_off_minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "htc_dnd_play_sound_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "notifications_use_ring_volume"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "date_format"

    aput-object v1, v0, v5

    const-string v1, "haptic_feedback_enabled"

    aput-object v1, v0, v6

    const-string v1, "sound_effects_enabled"

    aput-object v1, v0, v7

    const-string v1, "show_password"

    aput-object v1, v0, v8

    const-string v1, "time_12_24"

    aput-object v1, v0, v9

    sput-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static clearConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public static getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 2

    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4

    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v2, p2

    goto :goto_0
.end method

.method public static getMovedKeys(Ljava/util/HashSet;)V
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

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getNonLegacyMovedKeys(Ljava/util/HashSet;)V
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

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method public static getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global, returning read-only value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global, returning read-only global URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 2

    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Global, value is unchanged."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Landroid/provider/HtcISettingsSystem$Agent;->monitorKey(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    return-void
.end method

.method public static setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
