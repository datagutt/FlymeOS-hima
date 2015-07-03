.class Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;
.super Landroid/os/HandlerThread;
.source "HtcAlarmGroupingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAlarmGroupingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAlarmGroupingListener;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAlarmGroupingListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcAlarmGroupingListener$WorkingThread;->this$0:Lcom/htc/server/HtcAlarmGroupingListener;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method
