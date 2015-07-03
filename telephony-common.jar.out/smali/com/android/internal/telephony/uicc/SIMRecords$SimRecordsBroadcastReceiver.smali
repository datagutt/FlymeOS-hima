.class Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 4650
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/SIMRecords$1;

    .prologue
    .line 4650
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 4653
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4654
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4655
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100(Lcom/android/internal/telephony/uicc/SIMRecords;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->dataCallForwardingEnabled:Z

    if-ne v1, v2, :cond_1

    .line 4656
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iput-boolean v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->disableCfuIcon:Z

    .line 4657
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 4660
    :cond_1
    return-void
.end method
