.class final Landroid/database/ContentObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "ContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field private final mSelfChange:Z

.field private final mUri:Landroid/net/Uri;

.field private final mUserId:I

.field final synthetic this$0:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelfChange:Z

    iput-object p3, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    iput p4, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUserId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne v7, v8, :cond_2

    move v2, v6

    :goto_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v3

    if-le v3, v6, :cond_0

    if-eqz v2, :cond_0

    const-string v6, "Perf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onChange"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    iget-boolean v7, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelfChange:Z

    iget-object v8, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    iget v9, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUserId:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    if-lez v3, :cond_1

    if-eqz v2, :cond_1

    const-string v6, "Perf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onChange, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
