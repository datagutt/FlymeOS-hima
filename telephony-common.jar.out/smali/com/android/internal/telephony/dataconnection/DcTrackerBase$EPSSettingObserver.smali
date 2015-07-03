.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$EPSSettingObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EPSSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$EPSSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 659
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 660
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 661
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 674
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$EPSSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$EPSSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_extreme_power_saver_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEPSenable:Z
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$002(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)Z

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$EPSSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EPS mode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$EPSSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEPSenable:Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 677
    return-void

    :cond_0
    move v0, v1

    .line 674
    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$EPSSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "htc_extreme_power_saver_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 666
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$EPSSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 670
    return-void
.end method
