.class Lcom/htc/widget/AnalogClockView$2;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AnalogClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/AnalogClockView;


# direct methods
.method constructor <init>(Lcom/htc/widget/AnalogClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/AnalogClockView$2;->this$0:Lcom/htc/widget/AnalogClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AnalogClockView$2;->this$0:Lcom/htc/widget/AnalogClockView;

    # invokes: Lcom/htc/widget/AnalogClockView;->updateTime()V
    invoke-static {v0}, Lcom/htc/widget/AnalogClockView;->access$500(Lcom/htc/widget/AnalogClockView;)V

    return-void
.end method
