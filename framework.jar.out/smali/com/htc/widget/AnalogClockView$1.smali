.class Lcom/htc/widget/AnalogClockView$1;
.super Ljava/lang/Object;
.source "AnalogClockView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/htc/widget/AnalogClockView$1;->this$0:Lcom/htc/widget/AnalogClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v2, p0, Lcom/htc/widget/AnalogClockView$1;->this$0:Lcom/htc/widget/AnalogClockView;

    # getter for: Lcom/htc/widget/AnalogClockView;->mTickerStopped:Z
    invoke-static {v2}, Lcom/htc/widget/AnalogClockView;->access$000(Lcom/htc/widget/AnalogClockView;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/AnalogClockView$1;->this$0:Lcom/htc/widget/AnalogClockView;

    # invokes: Lcom/htc/widget/AnalogClockView;->onTimeTick()V
    invoke-static {v2}, Lcom/htc/widget/AnalogClockView;->access$100(Lcom/htc/widget/AnalogClockView;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/widget/AnalogClockView$1;->this$0:Lcom/htc/widget/AnalogClockView;

    # getter for: Lcom/htc/widget/AnalogClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/widget/AnalogClockView;->access$400(Lcom/htc/widget/AnalogClockView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/AnalogClockView$1;->this$0:Lcom/htc/widget/AnalogClockView;

    # getter for: Lcom/htc/widget/AnalogClockView;->mTicker:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/widget/AnalogClockView;->access$200(Lcom/htc/widget/AnalogClockView;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/AnalogClockView$1;->this$0:Lcom/htc/widget/AnalogClockView;

    # getter for: Lcom/htc/widget/AnalogClockView;->mUpdateIntervals:I
    invoke-static {v4}, Lcom/htc/widget/AnalogClockView;->access$300(Lcom/htc/widget/AnalogClockView;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/htc/widget/AnalogClockView$1;->this$0:Lcom/htc/widget/AnalogClockView;

    # getter for: Lcom/htc/widget/AnalogClockView;->mUpdateIntervals:I
    invoke-static {v8}, Lcom/htc/widget/AnalogClockView;->access$300(Lcom/htc/widget/AnalogClockView;)I

    move-result v8

    int-to-long v8, v8

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
