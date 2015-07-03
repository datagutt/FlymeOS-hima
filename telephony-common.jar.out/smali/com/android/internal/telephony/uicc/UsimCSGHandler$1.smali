.class Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "UsimCSGHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UsimCSGHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 710
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "status":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    const-string v2, "UsimCSGHandler"

    const-string v3, "get INTENT_VALUE_ICC_HOT_SWAP_ABSENT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$000(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    .line 759
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    const-string v2, "com.htc.telephony.intent.action.csg_2hours_expired"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 720
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTENT_CSG_2HOURS_EXPIRED : trigger another periodic search and counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget v4, v4, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$100(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget v2, v2, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 723
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$200(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    goto :goto_0

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$300(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    .line 729
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget v3, v2, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 730
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget v2, v2, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$400(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 734
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$400(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 736
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iput v5, v2, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 738
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iput-boolean v5, v2, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 739
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$500(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    goto :goto_0

    .line 742
    :cond_5
    const-string v2, "com.htc.telephony.intent.action.csg_10secs_expired"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    const-string v2, "UsimCSGHandler"

    const-string v3, "INTENT_CSG_10SECS_EXPIRED : trigger another CSG ID search"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$300(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    .line 745
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$600(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    goto/16 :goto_0
.end method
