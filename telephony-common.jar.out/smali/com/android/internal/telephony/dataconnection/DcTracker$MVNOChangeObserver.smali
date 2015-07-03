.class Lcom/android/internal/telephony/dataconnection/DcTracker$MVNOChangeObserver;
.super Landroid/database/ContentObserver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MVNOChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 1

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MVNOChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 187
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const v2, 0x42074

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MVNOChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimLoaded:Z
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MVNOChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MVNOChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MVNOChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MVNOChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
