.class Lcom/htc/widget/DigitalClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DigitalClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DigitalClockView;


# direct methods
.method constructor <init>(Lcom/htc/widget/DigitalClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DigitalClockView$1;->this$0:Lcom/htc/widget/DigitalClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DigitalClockView$1;->this$0:Lcom/htc/widget/DigitalClockView;

    # invokes: Lcom/htc/widget/DigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/htc/widget/DigitalClockView;->access$000(Lcom/htc/widget/DigitalClockView;)V

    return-void
.end method
