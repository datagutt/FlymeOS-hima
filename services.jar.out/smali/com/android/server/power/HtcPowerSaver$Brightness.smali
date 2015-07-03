.class final Lcom/android/server/power/HtcPowerSaver$Brightness;
.super Lcom/android/server/power/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Brightness"
.end annotation


# instance fields
.field private final DEFAULT_BRIGHTNESS_AUTO:I

.field private final DEFAULT_BRIGHTNESS_VALUE:I

.field private final DEFAULT_N_BRIGHTNESS:I

.field private final DEFAULT_N_BRIGHTNESS_AUTO:I

.field private final KEY_N_BRIGHTNESS:Ljava/lang/String;

.field private final KEY_N_BRIGHTNESS_AUTO:Ljava/lang/String;

.field private final KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String;

.field private final KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/power/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Context;)V
    .locals 9

    const/16 v8, 0x66

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->this$0:Lcom/android/server/power/HtcPowerSaver;

    const-string v2, "Brightness"

    const-string v3, "powersaver_screen_brightness"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.bright"

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/HtcPowerSaver$Feature;-><init>(Lcom/android/server/power/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    const-string v0, "powersaver_screen_brightness_settings_auto"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String;

    const-string v0, "powersaver_screen_brightness_settings"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String;

    iput v7, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->DEFAULT_BRIGHTNESS_AUTO:I

    iput v8, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->DEFAULT_BRIGHTNESS_VALUE:I

    const-string v0, "psaver_normal_brightness"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->KEY_N_BRIGHTNESS:Ljava/lang/String;

    const-string v0, "psaver_normal_autobrightness"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->KEY_N_BRIGHTNESS_AUTO:Ljava/lang/String;

    iput v8, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->DEFAULT_N_BRIGHTNESS:I

    iput v7, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->DEFAULT_N_BRIGHTNESS_AUTO:I

    iput-object p2, p0, Lcom/android/server/power/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 2

    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected saveSystemSettings()I
    .locals 2

    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
