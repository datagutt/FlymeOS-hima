.class final Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization$1;
.super Landroid/os/Handler;
.source "HtcCdmaOmhCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->htcThreadUpdateApn([Ljava/lang/String;Landroid/content/Context;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 483
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 510
    :goto_0
    return-void

    .line 486
    :pswitch_0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Object;

    move-object v8, v11

    check-cast v8, [Ljava/lang/Object;

    .line 487
    .local v8, "params":[Ljava/lang/Object;
    array-length v11, v8

    add-int/lit8 v11, v11, -0x3

    new-array v4, v11, [Ljava/lang/String;

    .line 488
    .local v4, "givenItems":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 489
    .local v6, "itemIdx":I
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v9, v1, v5

    .line 490
    .local v9, "parm":Ljava/lang/Object;
    array-length v11, v8

    add-int/lit8 v11, v11, -0x3

    if-ge v6, v11, :cond_0

    .line 491
    check-cast v9, Ljava/lang/String;

    .end local v9    # "parm":Ljava/lang/Object;
    aput-object v9, v4, v6

    .line 493
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 489
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 495
    :cond_1
    array-length v11, v8

    add-int/lit8 v11, v11, -0x3

    aget-object v11, v8, v11

    check-cast v11, Landroid/content/Context;

    move-object v10, v11

    check-cast v10, Landroid/content/Context;

    .line 496
    .local v10, "phoneContext":Landroid/content/Context;
    array-length v11, v8

    add-int/lit8 v11, v11, -0x2

    aget-object v11, v8, v11

    check-cast v11, Landroid/os/Message;

    move-object v2, v11

    check-cast v2, Landroid/os/Message;

    .line 497
    .local v2, "completeMsg":Landroid/os/Message;
    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v8, v11

    check-cast v11, Landroid/os/HandlerThread;

    move-object v0, v11

    check-cast v0, Landroid/os/HandlerThread;

    .line 499
    .local v0, "apnUpdateThread":Landroid/os/HandlerThread;
    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->updateApnByItems([Ljava/lang/String;Landroid/content/Context;)Z
    invoke-static {v4, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->access$000([Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    .line 500
    .local v3, "completionStatus":Z
    if-eqz v2, :cond_2

    .line 501
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v2, v11, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 502
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 504
    :cond_2
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Omh-ApnUpdate complete - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
