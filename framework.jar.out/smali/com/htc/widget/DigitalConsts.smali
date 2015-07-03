.class public Lcom/htc/widget/DigitalConsts;
.super Ljava/lang/Object;
.source "DigitalConsts.java"


# static fields
.field public static final APPEND_AM_PM:Ljava/lang/String; = "append_am_pm"

.field public static ARRAY_AM_PM_OF_DAY:Ljava/lang/String; = null

.field public static BOOLEAN_BOLD_DATE:Ljava/lang/String; = null

.field public static BOOLEAN_SHIFT_HOUR:Ljava/lang/String; = null

.field public static BOOLEAN_UPPER_CASE:Ljava/lang/String; = null

.field public static COLOR_ERROR_DAY:Ljava/lang/String; = null

.field public static COLOR_ERROR_NIGHT:Ljava/lang/String; = null

.field public static COLOR_TEXT_DAY:Ljava/lang/String; = null

.field public static COLOR_TEXT_NIGHT:Ljava/lang/String; = null

.field public static DIGITAL_TYPE:Ljava/lang/String; = null

.field public static final DIGITAL_TYPE_AUTO:I = 0x2

.field public static final DIGITAL_TYPE_DAY:I = 0x1

.field public static final DIGITAL_TYPE_NIGHT:I = 0x0

.field public static DRAWABLE_BACKGROUND_DAY:Ljava/lang/String; = null

.field public static DRAWABLE_BACKGROUND_NIGHT:Ljava/lang/String; = null

.field public static DRAWABLE_DIVIDER_DAY:Ljava/lang/String; = null

.field public static DRAWABLE_DIVIDER_NIGHT:Ljava/lang/String; = null

.field public static DRAWABLE_NUBER_DAY:Ljava/lang/String; = null

.field public static final DRAWABLE_NUBER_MASK:Ljava/lang/String; = "number_mask"

.field public static DRAWABLE_NUBER_NIGHT:Ljava/lang/String;

.field public static DRAWABLE_POINT_DAY:Ljava/lang/String;

.field public static DRAWABLE_POINT_NIGHT:Ljava/lang/String;

.field public static ID_DIGITAL_AM_PM:Ljava/lang/String;

.field public static ID_DIGITAL_BACKGROUND:Ljava/lang/String;

.field public static ID_DIGITAL_CITY_NAME:Ljava/lang/String;

.field public static ID_DIGITAL_DATE:Ljava/lang/String;

.field public static ID_DIGITAL_DIVIDER:Ljava/lang/String;

.field public static ID_DIGITAL_ERROR_CONTROLS:Ljava/lang/String;

.field public static ID_DIGITAL_HOUR_TEN:Ljava/lang/String;

.field public static ID_DIGITAL_HOUR_UNIT:Ljava/lang/String;

.field public static ID_DIGITAL_MINUTE_TEN:Ljava/lang/String;

.field public static ID_DIGITAL_MINUTE_UNIT:Ljava/lang/String;

.field public static ID_DIGITAL_POINT:Ljava/lang/String;

.field public static ID_DIGITAL_TEXT_CONTROLS:Ljava/lang/String;

.field public static INT_SUN_RISE:Ljava/lang/String;

.field public static INT_SUN_SET:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field public static PACKAGE_NAME_HOST:Ljava/lang/String;

.field public static THEME_APK_NAME:Ljava/lang/String;

.field public static THEME_APK_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "package_name"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "package_name_host"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->PACKAGE_NAME_HOST:Ljava/lang/String;

    const-string/jumbo v0, "theme_apk_name"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->THEME_APK_NAME:Ljava/lang/String;

    const-string/jumbo v0, "theme_apk_path"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->THEME_APK_PATH:Ljava/lang/String;

    const-string v0, "digital_type"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DIGITAL_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "number_day"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DRAWABLE_NUBER_DAY:Ljava/lang/String;

    const-string v0, "background_day"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DRAWABLE_BACKGROUND_DAY:Ljava/lang/String;

    const-string v0, "divider_day"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DRAWABLE_DIVIDER_DAY:Ljava/lang/String;

    const-string/jumbo v0, "point_day"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DRAWABLE_POINT_DAY:Ljava/lang/String;

    const-string/jumbo v0, "number_night"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DRAWABLE_NUBER_NIGHT:Ljava/lang/String;

    const-string v0, "background_night"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DRAWABLE_BACKGROUND_NIGHT:Ljava/lang/String;

    const-string v0, "divider_night"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DRAWABLE_DIVIDER_NIGHT:Ljava/lang/String;

    const-string/jumbo v0, "point_night"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->DRAWABLE_POINT_NIGHT:Ljava/lang/String;

    const-string/jumbo v0, "text_day"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->COLOR_TEXT_DAY:Ljava/lang/String;

    const-string/jumbo v0, "text_night"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->COLOR_TEXT_NIGHT:Ljava/lang/String;

    const-string v0, "error_day"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->COLOR_ERROR_DAY:Ljava/lang/String;

    const-string v0, "error_night"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->COLOR_ERROR_NIGHT:Ljava/lang/String;

    const-string v0, "digital_hour_ten"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_HOUR_TEN:Ljava/lang/String;

    const-string v0, "digital_hour_unit"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_HOUR_UNIT:Ljava/lang/String;

    const-string v0, "digital_minute_ten"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_MINUTE_TEN:Ljava/lang/String;

    const-string v0, "digital_minute_unit"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_MINUTE_UNIT:Ljava/lang/String;

    const-string v0, "digital_date"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_DATE:Ljava/lang/String;

    const-string v0, "digital_background"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_BACKGROUND:Ljava/lang/String;

    const-string v0, "digital_point"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_POINT:Ljava/lang/String;

    const-string v0, "digital_divider"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_DIVIDER:Ljava/lang/String;

    const-string v0, "digital_am_pm"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_AM_PM:Ljava/lang/String;

    const-string v0, "digital_city_name"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_CITY_NAME:Ljava/lang/String;

    const-string v0, "digital_text_controls"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_TEXT_CONTROLS:Ljava/lang/String;

    const-string v0, "digital_error_controls"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ID_DIGITAL_ERROR_CONTROLS:Ljava/lang/String;

    const-string v0, "am_pm_of_day"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->ARRAY_AM_PM_OF_DAY:Ljava/lang/String;

    const-string/jumbo v0, "shift_hour"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->BOOLEAN_SHIFT_HOUR:Ljava/lang/String;

    const-string/jumbo v0, "upper_case"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->BOOLEAN_UPPER_CASE:Ljava/lang/String;

    const-string v0, "bold_date"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->BOOLEAN_BOLD_DATE:Ljava/lang/String;

    const-string/jumbo v0, "sun_rise"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->INT_SUN_RISE:Ljava/lang/String;

    const-string/jumbo v0, "sun_set"

    sput-object v0, Lcom/htc/widget/DigitalConsts;->INT_SUN_SET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
