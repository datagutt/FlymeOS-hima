.class final Lcom/android/server/power/HtcPowerSaver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcPowerSaver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HtcPowerSaver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;->this$0:Lcom/android/server/power/HtcPowerSaver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    # getter for: Lcom/android/server/power/HtcPowerSaver;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/HtcPowerSaver;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcPowerSaver"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # invokes: Lcom/android/server/power/HtcPowerSaver;->updateSettingsValue()V
    invoke-static {v0}, Lcom/android/server/power/HtcPowerSaver;->access$100(Lcom/android/server/power/HtcPowerSaver;)V

    iget-object v0, p0, Lcom/android/server/power/HtcPowerSaver$SettingsObserver;->this$0:Lcom/android/server/power/HtcPowerSaver;

    invoke-virtual {v0}, Lcom/android/server/power/HtcPowerSaver;->check()V

    return-void
.end method
