.class Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfileUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 8205
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 8207
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 8208
    const/4 v5, 0x0

    .line 8209
    .local v5, "mModemPorifileValueResult":[Lcom/android/internal/telephony/dataconnection/APNParam;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mModemPorifileValue:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mModemPorifileValue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 8210
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mModemPorifileValue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lcom/android/internal/telephony/dataconnection/APNParam;

    .line 8211
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mModemPorifileValue:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/telephony/dataconnection/APNParam;

    move-object v5, v7

    check-cast v5, [Lcom/android/internal/telephony/dataconnection/APNParam;

    .line 8212
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v8, "---mModemPorifileValueResult apnList---"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 8213
    move-object v0, v5

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/APNParam;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 8214
    .local v6, "profile":Lcom/android/internal/telephony/dataconnection/APNParam;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/APNParam;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 8213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8216
    .end local v6    # "profile":Lcom/android/internal/telephony/dataconnection/APNParam;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v8, "---------------------"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 8217
    if-eqz v5, :cond_1

    .line 8219
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v8, "onGetUpdateApnParamsDone update HtcLtePdnSetting"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 8220
    new-instance v4, Lcom/android/internal/telephony/HtcLtePdnSetting;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/HtcLtePdnSetting;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 8221
    .local v4, "mHtcLtePdnSetting":Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HtcLtePdnSetting;->backupPdnSettingsToXml([Lcom/android/internal/telephony/dataconnection/APNParam;)V

    .line 8222
    invoke-virtual {v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->parsePdnXmlToApnDb()V

    .line 8223
    if-eqz v4, :cond_1

    .line 8224
    invoke-virtual {v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8234
    .end local v0    # "arr$":[Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mHtcLtePdnSetting":Lcom/android/internal/telephony/HtcLtePdnSetting;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 8235
    return-void

    .line 8227
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/dataconnection/APNParam;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :catch_0
    move-exception v1

    .line 8228
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetUpdateApnParamsDone fail to update HtcLtePdnSetting error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 8232
    .end local v0    # "arr$":[Lcom/android/internal/telephony/dataconnection/APNParam;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ProfileUpdateThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v8, "onGetUpdateApnParamsDone mModemPorifileValue = null"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
