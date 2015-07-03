.class Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;)V
    .locals 0

    .prologue
    .line 2920
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;->this$0:Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 2924
    return-void
.end method
