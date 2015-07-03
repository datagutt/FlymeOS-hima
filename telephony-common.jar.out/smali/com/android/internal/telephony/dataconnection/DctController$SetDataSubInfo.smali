.class public Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;
.super Ljava/lang/Object;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetDataSubInfo"
.end annotation


# instance fields
.field completedmsg:Landroid/os/Message;

.field enable:Z

.field phoneId:I

.field retryCount:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;IIZLandroid/os/Message;)V
    .locals 0
    .param p2, "phoneId"    # I
    .param p3, "retryCount"    # I
    .param p4, "enable"    # Z
    .param p5, "completedmsg"    # Landroid/os/Message;

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    .line 1526
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    .line 1527
    iput-boolean p4, p0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->enable:Z

    .line 1528
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->completedmsg:Landroid/os/Message;

    .line 1529
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetDataSubInfo:{ phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
