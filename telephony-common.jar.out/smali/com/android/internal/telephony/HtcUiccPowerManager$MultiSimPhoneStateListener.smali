.class Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HtcUiccPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcUiccPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSimPhoneStateListener"
.end annotation


# instance fields
.field private mPhoneId:I

.field private mPhoneString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/HtcUiccPowerManager;IJ)V
    .locals 3
    .param p2, "phoneId"    # I
    .param p3, "subId"    # J

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    .line 584
    invoke-direct {p0, p3, p4}, Landroid/telephony/PhoneStateListener;-><init>(J)V

    .line 585
    iput p2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->mPhoneId:I

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->mPhoneId:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->mPhoneString:Ljava/lang/String;

    .line 587
    return-void
.end method

.method private final updateCoExistCallState(II)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 596
    if-nez p2, :cond_1

    move v1, v2

    .line 597
    .local v1, "mTargetPhone":I
    :goto_0
    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current phone Id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,target phone Id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v0, Lcom/android/internal/telephony/CoexistInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CoexistInfo;-><init>()V

    .line 599
    .local v0, "info":Lcom/android/internal/telephony/CoexistInfo;
    if-nez p2, :cond_3

    .line 600
    if-eqz p1, :cond_2

    .line 601
    iput v2, v0, Lcom/android/internal/telephony/CoexistInfo;->n_call_1:I

    .line 612
    :goto_1
    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CoexistInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$200(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$200(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setDSDACoexistInfo(Lcom/android/internal/telephony/CoexistInfo;Landroid/os/Message;)V

    .line 617
    :cond_0
    return-void

    .end local v0    # "info":Lcom/android/internal/telephony/CoexistInfo;
    .end local v1    # "mTargetPhone":I
    :cond_1
    move v1, v3

    .line 596
    goto :goto_0

    .line 603
    .restart local v0    # "info":Lcom/android/internal/telephony/CoexistInfo;
    .restart local v1    # "mTargetPhone":I
    :cond_2
    iput v3, v0, Lcom/android/internal/telephony/CoexistInfo;->n_call_1:I

    goto :goto_1

    .line 606
    :cond_3
    if-eqz p1, :cond_4

    .line 607
    iput v2, v0, Lcom/android/internal/telephony/CoexistInfo;->n_call_2:I

    goto :goto_1

    .line 609
    :cond_4
    iput v3, v0, Lcom/android/internal/telephony/CoexistInfo;->n_call_2:I

    goto :goto_1
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 591
    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->mPhoneId:I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;->updateCoExistCallState(II)V

    .line 593
    return-void
.end method
