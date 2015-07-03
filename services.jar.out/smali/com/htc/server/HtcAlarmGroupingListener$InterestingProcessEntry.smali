.class Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;
.super Ljava/lang/Object;
.source "HtcAlarmGroupingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAlarmGroupingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterestingProcessEntry"
.end annotation


# instance fields
.field mGroup:I

.field mPid:I

.field mProcName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mPid:I

    iput v0, p0, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mGroup:I

    iput-object p1, p0, Lcom/htc/server/HtcAlarmGroupingListener$InterestingProcessEntry;->mProcName:Ljava/lang/String;

    return-void
.end method
