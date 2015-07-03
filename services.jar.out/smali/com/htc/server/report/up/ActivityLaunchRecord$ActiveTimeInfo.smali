.class final Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;
.super Ljava/lang/Object;
.source "ActivityLaunchRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/report/up/ActivityLaunchRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActiveTimeInfo"
.end annotation


# instance fields
.field final activityName:Ljava/lang/String;

.field final cnt_tag:Z

.field final packageName:Ljava/lang/String;

.field final pid:I

.field final resumeTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->pid:I

    iput-object p2, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->activityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->packageName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->resumeTime:J

    iput-boolean p6, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->cnt_tag:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->resumeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnt_tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;->cnt_tag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
