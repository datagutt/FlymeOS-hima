.class public Lcom/htc/widget/FlipClockView;
.super Landroid/widget/RelativeLayout;
.source "FlipClockView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEBUG_FLAG:Z

.field private static final TAG:Ljava/lang/String; = "com.htc.widget.FlipClockView"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mControls:Lcom/htc/widget/FlipControls;

.field private mDateFormat:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/widget/FlipClockView;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/FlipClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/FlipClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FlipClockView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/widget/FlipClockView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/FlipClockView$1;-><init>(Lcom/htc/widget/FlipClockView;)V

    iput-object v0, p0, Lcom/htc/widget/FlipClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FlipClockView;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/FlipClockView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/FlipClockView;->onTimeChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/FlipClockView;)Lcom/htc/widget/FlipControls;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/FlipClockView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/FlipClockView;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private onTimeChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    iget-object v1, p0, Lcom/htc/widget/FlipClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/htc/widget/FlipClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/FlipClockView;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/htc/widget/FlipControls;->setImageDrawable(Ljava/util/Calendar;ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateTime()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/FlipClockView;->onTimeChanged(Z)V

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    iget-object v1, p0, Lcom/htc/widget/FlipClockView;->mDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/widget/FlipClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/FlipControls;->setWeekDateText(Ljava/lang/String;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    sget-boolean v0, Lcom/htc/widget/FlipClockView;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.FlipClockView"

    const-string v1, "init: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/widget/FlipControls;

    invoke-direct {v0}, Lcom/htc/widget/FlipControls;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    invoke-virtual {p0}, Lcom/htc/widget/FlipClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/widget/FlipControls;->setControls(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/htc/widget/FlipClockView;->updateTime()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/htc/widget/FlipClockView;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/FlipClockView;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/widget/FlipClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FlipClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/widget/FlipClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/FlipClockView;->updateTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-boolean v1, p0, Lcom/htc/widget/FlipClockView;->mAttached:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/FlipClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FlipClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/FlipClockView;->mAttached:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "com.htc.widget.FlipClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    sget-boolean v0, Lcom/htc/widget/FlipClockView;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.FlipClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDateFormat~ dateFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/FlipClockView;->mDateFormat:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/FlipClockView;->mControls:Lcom/htc/widget/FlipControls;

    iget-object v1, p0, Lcom/htc/widget/FlipClockView;->mDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/widget/FlipClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/FlipControls;->setWeekDateText(Ljava/lang/String;Ljava/util/Calendar;)V

    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    sget-boolean v1, Lcom/htc/widget/FlipClockView;->DEBUG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "com.htc.widget.FlipClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTimeZone~ timezone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/FlipClockView;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/htc/widget/FlipClockView;->updateTime()V

    return-void

    :cond_2
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method
