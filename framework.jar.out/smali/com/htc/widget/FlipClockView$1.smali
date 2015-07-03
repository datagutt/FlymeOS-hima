.class Lcom/htc/widget/FlipClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "FlipClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FlipClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/FlipClockView;


# direct methods
.method constructor <init>(Lcom/htc/widget/FlipClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/FlipClockView$1;->this$0:Lcom/htc/widget/FlipClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/FlipClockView$1;->this$0:Lcom/htc/widget/FlipClockView;

    const/4 v2, 0x1

    # invokes: Lcom/htc/widget/FlipClockView;->onTimeChanged(Z)V
    invoke-static {v1, v2}, Lcom/htc/widget/FlipClockView;->access$000(Lcom/htc/widget/FlipClockView;Z)V

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/FlipClockView$1;->this$0:Lcom/htc/widget/FlipClockView;

    # getter for: Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;
    invoke-static {v1}, Lcom/htc/widget/FlipClockView;->access$100(Lcom/htc/widget/FlipClockView;)Lcom/htc/widget/FlipControls;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/FlipClockView$1;->this$0:Lcom/htc/widget/FlipClockView;

    # getter for: Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;
    invoke-static {v1}, Lcom/htc/widget/FlipClockView;->access$100(Lcom/htc/widget/FlipClockView;)Lcom/htc/widget/FlipControls;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FlipClockView$1;->this$0:Lcom/htc/widget/FlipClockView;

    # getter for: Lcom/htc/widget/FlipClockView;->mDateFormat:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/widget/FlipClockView;->access$200(Lcom/htc/widget/FlipClockView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/FlipClockView$1;->this$0:Lcom/htc/widget/FlipClockView;

    # getter for: Lcom/htc/widget/FlipClockView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/htc/widget/FlipClockView;->access$300(Lcom/htc/widget/FlipClockView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/FlipControls;->setWeekDateText(Ljava/lang/String;Ljava/util/Calendar;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/FlipClockView$1;->this$0:Lcom/htc/widget/FlipClockView;

    const/4 v2, 0x0

    # invokes: Lcom/htc/widget/FlipClockView;->onTimeChanged(Z)V
    invoke-static {v1, v2}, Lcom/htc/widget/FlipClockView;->access$000(Lcom/htc/widget/FlipClockView;Z)V

    goto :goto_0
.end method
