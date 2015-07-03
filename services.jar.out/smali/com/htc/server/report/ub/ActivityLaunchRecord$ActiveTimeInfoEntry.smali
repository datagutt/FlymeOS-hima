.class final Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoEntry;
.super Ljava/lang/Object;
.source "ActivityLaunchRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/report/ub/ActivityLaunchRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActiveTimeInfoEntry"
.end annotation


# instance fields
.field final activeTimeInfo:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

.field final key:I


# direct methods
.method public constructor <init>(ILcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoEntry;->key:I

    iput-object p2, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoEntry;->activeTimeInfo:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Key) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoEntry;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / (ActivityTimeInfo) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoEntry;->activeTimeInfo:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
