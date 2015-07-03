.class Lcom/android/internal/app/LocalePicker$4;
.super Landroid/content/BroadcastReceiver;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/LocalePicker;


# direct methods
.method constructor <init>(Lcom/android/internal/app/LocalePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/LocalePicker$4;->this$0:Lcom/android/internal/app/LocalePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.STATUS_BAR_TAP_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker$4;->this$0:Lcom/android/internal/app/LocalePicker;

    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker$4;->this$0:Lcom/android/internal/app/LocalePicker;

    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
