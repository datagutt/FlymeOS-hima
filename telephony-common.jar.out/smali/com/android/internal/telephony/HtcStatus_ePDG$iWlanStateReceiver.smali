.class Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcStatus_ePDG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcStatus_ePDG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iWlanStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcStatus_ePDG;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    .line 90
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcStatus_ePDG;Lcom/android/internal/telephony/HtcStatus_ePDG$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/HtcStatus_ePDG;
    .param p2, "x1"    # Lcom/android/internal/telephony/HtcStatus_ePDG$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;-><init>(Lcom/android/internal/telephony/HtcStatus_ePDG;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "action":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    if-eqz v0, :cond_2

    const-string v5, "com.htc.intent.action.ACTION_IWLAN_STATE_CHANGED"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    const-string v5, "iWLANStatus"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 101
    .local v4, "status":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 103
    .local v2, "currentTime":J
    const/4 v1, 0x0

    .line 104
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$300(Lcom/android/internal/telephony/HtcStatus_ePDG;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    const-string v5, "init "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    # setter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;
    invoke-static {v5, v6}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$302(Lcom/android/internal/telephony/HtcStatus_ePDG;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 110
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # setter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGtime:J
    invoke-static {v5, v2, v3}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$402(Lcom/android/internal/telephony/HtcStatus_ePDG;J)J

    .line 126
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 127
    const-string v5, "Phn_ePDG"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "currentTime":J
    .end local v4    # "status":I
    :cond_2
    return-void

    .line 112
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "currentTime":J
    .restart local v4    # "status":I
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$300(Lcom/android/internal/telephony/HtcStatus_ePDG;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    const-string v5, "change "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$300(Lcom/android/internal/telephony/HtcStatus_ePDG;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGtime:J
    invoke-static {v5}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$400(Lcom/android/internal/telephony/HtcStatus_ePDG;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 117
    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGtime:J
    invoke-static {v5}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$400(Lcom/android/internal/telephony/HtcStatus_ePDG;)J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    :cond_4
    const-string v5, " -> "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    # setter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;
    invoke-static {v5, v6}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$302(Lcom/android/internal/telephony/HtcStatus_ePDG;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 124
    iget-object v5, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # setter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGtime:J
    invoke-static {v5, v2, v3}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$402(Lcom/android/internal/telephony/HtcStatus_ePDG;J)J

    goto :goto_0
.end method
