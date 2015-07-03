.class Lcom/android/internal/telephony/uicc/RuimRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;->listenToBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 2266
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2270
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 2271
    .local v1, "phone":Lcom/android/internal/telephony/PhoneBase;
    if-nez v1, :cond_1

    .line 2283
    :cond_0
    :goto_0
    return-void

    .line 2275
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2276
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.htc.intent.action.RESTORE_APN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2277
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v3, "APN reset to default"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2280
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$2000(Lcom/android/internal/telephony/uicc/RuimRecords;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$2100(Lcom/android/internal/telephony/uicc/RuimRecords;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->dynamicUpdateApn(Lcom/android/internal/telephony/PhoneBase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
