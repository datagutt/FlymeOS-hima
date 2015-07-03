.class public Lcom/android/internal/telephony/UiccSmsController;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "UiccSmsController.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UiccSmsController"


# instance fields
.field protected mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method protected constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/UiccSmsController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 48
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    const-string v0, "isms"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 51
    :cond_0
    return-void
.end method

.method private getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v3, 0x0

    .line 331
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v1

    .line 333
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 335
    :cond_0
    const/4 v1, 0x0

    .line 339
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 348
    :goto_0
    return-object v2

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "RIL_UiccSmsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phone id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v3

    .line 344
    goto :goto_0

    .line 345
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "RIL_UiccSmsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phone id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v3

    .line 348
    goto :goto_0
.end method


# virtual methods
.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/UiccSmsController;->copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResult(I[B[B)I
    .locals 7
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/UiccSmsController;->copyMessageToIccEfForResultForSubscriber(JI[B[B)I

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResultByFormat(ZI[B[B)I
    .locals 6
    .param p1, "isCdmaFormat"    # Z
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 758
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEfForResultByFormat(ZI[B[B)I

    move-result v1

    .line 763
    :goto_0
    return v1

    .line 761
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copyMessageToIccEfForResultForSubscriber(JI[B[B)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B

    .prologue
    .line 496
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 497
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEfForResult(I[B[B)I

    move-result v1

    .line 502
    :goto_0
    return v1

    .line 500
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copyMessageToIccEfForResultWithType(ZI[B[B)I
    .locals 8
    .param p1, "isCdmaFormat"    # Z
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/UiccSmsController;->copyMessageToIccEfForResultWithTypeForSubscriber(JZI[B[B)I

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResultWithTypeForSubscriber(JZI[B[B)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "isCdmaFormat"    # Z
    .param p4, "status"    # I
    .param p5, "pdu"    # [B
    .param p6, "smsc"    # [B

    .prologue
    .line 478
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 479
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEfForResultWithType(ZI[B[B)I

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 482
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "pdu"    # [B
    .param p6, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 82
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 85
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copyMessageToIccEfWithType(Ljava/lang/String;ZI[B[B)Z
    .locals 9
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "isCdmaFormat"    # Z
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/UiccSmsController;->copyMessageToIccEfWithTypeForSubscriber(JLjava/lang/String;ZI[B[B)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfWithTypeForSubscriber(JLjava/lang/String;ZI[B[B)Z
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "isCdmaFormat"    # Z
    .param p5, "status"    # I
    .param p6, "pdu"    # [B
    .param p7, "smsc"    # [B

    .prologue
    .line 459
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 460
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 461
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEfWithType(Ljava/lang/String;ZI[B[B)Z

    move-result v1

    .line 465
    :goto_0
    return v1

    .line 463
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 2
    .param p1, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastForSubscriber(JI)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastForSubscriber(JI)Z
    .locals 1
    .param p1, "subId"    # J
    .param p3, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastRangeForSubscriber(JII)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastRangeForSubscriber(JII)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRangeForSubscriber(JII)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "startMessageId"    # I
    .param p4, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 211
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v1

    .line 217
    :goto_0
    return v1

    .line 214
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCellBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableCellBroadcast(I)Z
    .locals 2
    .param p1, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastForSubscriber(JI)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastForSubscriber(JI)Z
    .locals 1
    .param p1, "subId"    # J
    .param p3, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastRangeForSubscriber(JII)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastRangeForSubscriber(JII)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRangeForSubscriber(JII)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "startMessageId"    # I
    .param p4, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 184
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v1

    .line 190
    :goto_0
    return v1

    .line 187
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCellBroadcast iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 99
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 102
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllMessagesFromIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCSCB()V
    .locals 6

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 590
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getCSCB()V

    .line 596
    :goto_0
    return-void

    .line 593
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 702
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getCarrierID()Ljava/lang/String;

    move-result-object v1

    .line 707
    :goto_0
    return-object v1

    .line 705
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCdmaBroadcastConfigForSubscriber(J)[I
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 1096
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 1097
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getCdmaBroadcastConfig()[I

    move-result-object v1

    .line 1102
    :goto_0
    return-object v1

    .line 1100
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "timeMilli"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .param p7, "refNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/UiccSmsController;->getDeliveryPduForSubscriber(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryPduForSubscriber(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p1, "subId"    # J
    .param p3, "originatorAddress"    # Ljava/lang/String;
    .param p4, "timeMilli"    # J
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "priority"    # I
    .param p8, "callback"    # Ljava/lang/String;
    .param p9, "refNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 948
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 949
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    .line 950
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 955
    :goto_0
    return-object v1

    .line 952
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->getImsSmsFormatForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsSmsFormatForSubscriber(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 272
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    .line 275
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "getImsSmsFormat iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageFromIccEf(I)[B
    .locals 2
    .param p1, "nIndexOnSim"    # I

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->getMessageFromIccEfForSubscriber(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageFromIccEfForSubscriber(JI)[B
    .locals 5
    .param p1, "subId"    # J
    .param p3, "nIndexOnSim"    # I

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 404
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getMessageFromIccEf(I)[B

    move-result-object v1

    .line 409
    :goto_0
    return-object v1

    .line 407
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageFromIccEfWithType(ZI)[B
    .locals 2
    .param p1, "bIsCdmaFormat"    # Z
    .param p2, "nIndexOnSim"    # I

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getMessageFromIccEfWithTypeForSubscriber(JZI)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageFromIccEfWithTypeForSubscriber(JZI)[B
    .locals 5
    .param p1, "subId"    # J
    .param p3, "bIsCdmaFormat"    # Z
    .param p4, "nIndexOnSim"    # I

    .prologue
    .line 421
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 422
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getMessageFromIccEfWithType(ZI)[B

    move-result-object v1

    .line 427
    :goto_0
    return-object v1

    .line 425
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextMessageIdInPreference()I
    .locals 6

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 822
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getNextMessageIdInPreference()I

    move-result v1

    .line 827
    :goto_0
    return v1

    .line 825
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPreferredSmsSubscription()J
    .locals 2

    .prologue
    .line 355
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->getPremiumSmsPermissionForSubscriber(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPremiumSmsPermissionForSubscriber(JLjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 227
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v1

    .line 233
    :goto_0
    return v1

    .line 230
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "getPremiumSmsPermission iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSMSC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->getSMSCForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSCForSubscriber(J)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 544
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 545
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSC()Ljava/lang/String;

    move-result-object v1

    .line 550
    :goto_0
    return-object v1

    .line 548
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubmitPduForCdmaSimSms(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "timeMilli"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/UiccSmsController;->getSubmitPduForCdmaSimSmsForSubscriber(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitPduForCdmaSimSmsForSubscriber(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "subId"    # J
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "timeMilli"    # J
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "priority"    # I
    .param p8, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 1026
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p6

    move v5, p7

    move-object v6, p8

    .line 1027
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSubmitPduForCdmaSimSms(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1032
    :goto_0
    return-object v1

    .line 1029
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTestBCSMS()[I
    .locals 2

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->getTestBCSMSForSubscriber(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getTestBCSMSForSubscriber(J)[I
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 742
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 743
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 745
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getTestBCSMS()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 753
    :goto_0
    return-object v1

    .line 750
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public injectSmsPdu(J[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "pdu"    # [B
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 306
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmsSendStatus iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 300
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/UiccSmsController;->injectSmsPdu(J[BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 301
    return-void
.end method

.method public injectSmsPduForSubscriber(J[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "pdu"    # [B
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 320
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmsSendStatus iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCdmaMo()Z
    .locals 6

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 879
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isCdmaMo()Z

    move-result v1

    .line 884
    :goto_0
    return v1

    .line 882
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->isFdnEnabledForSubscriber(J)Z

    move-result v0

    return v0
.end method

.method public isFdnEnabledForSubscriber(J)Z
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 1053
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 1054
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFdnEnabled()Z

    move-result v1

    .line 1060
    :goto_0
    return v1

    .line 1057
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImsSmsSupported()Z
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->isImsSmsSupportedForSubscriber(J)Z

    move-result v0

    return v0
.end method

.method public isImsSmsSupportedForSubscriber(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 257
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    move-result v1

    .line 262
    :goto_0
    return v1

    .line 260
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "isImsSmsSupported iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public isSendCdmaMoSms()Z
    .locals 6

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 811
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isSendCdmaMoSms()Z

    move-result v1

    .line 816
    :goto_0
    return v1

    .line 814
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public kddiAcknowledgeSendRequest(ZII)Z
    .locals 6
    .param p1, "sendAck"    # Z
    .param p2, "result"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 780
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->kddiAcknowledgeSendRequest(ZII)Z

    move-result v1

    .line 785
    :goto_0
    return v1

    .line 783
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestGetBCSMSServiceEntry(II)[I
    .locals 2
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->requestGetBCSMSServiceEntryForSubscriber(JII)[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetBCSMSServiceEntryForSubscriber(JII)[I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "funccode"    # I
    .param p4, "index"    # I

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 669
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->requestGetBCSMSServiceEntry(II)[I

    move-result-object v1

    .line 674
    :goto_0
    return-object v1

    .line 672
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    .locals 2
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->requestGetBCSMSServiceLabelForSubscriber(JII)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public requestGetBCSMSServiceLabelForSubscriber(JII)Landroid/os/Bundle;
    .locals 5
    .param p1, "subId"    # J
    .param p3, "funccode"    # I
    .param p4, "index"    # I

    .prologue
    .line 650
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 651
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;

    move-result-object v1

    .line 656
    :goto_0
    return-object v1

    .line 654
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestGetBCSMSServiceNumber()I
    .locals 2

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->requestGetBCSMSServiceNumberForSubscriber(J)I

    move-result v0

    return v0
.end method

.method public requestGetBCSMSServiceNumberForSubscriber(J)I
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 632
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 633
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->requestGetBCSMSServiceNumber()I

    move-result v1

    .line 638
    :goto_0
    return v1

    .line 636
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/UiccSmsController;->sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 112
    return-void
.end method

.method public sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "destPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 118
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 119
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1069
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/UiccSmsController;->sendMultipartDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1071
    return-void
.end method

.method public sendMultipartDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1079
    .local p7, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p9, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 1080
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 1081
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1086
    :goto_0
    return-void

    .line 1083
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartDataWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p8, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 508
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/UiccSmsController;->sendMultipartDataWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 509
    return-void
.end method

.method public sendMultipartDataWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "destPort"    # I
    .param p10, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 516
    .local p7, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p9, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 517
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 518
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 523
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/UiccSmsController;->sendMultipartTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 150
    return-void
.end method

.method public sendMultipartTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 157
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 158
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 858
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/UiccSmsController;->sendMultipartTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 861
    return-void
.end method

.method public sendMultipartTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p9, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 867
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 868
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 869
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 874
    :goto_0
    return-void

    .line 871
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextWithNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 527
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 528
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 529
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendRawPduWithBundle(Ljava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "smsc"    # [B
    .param p3, "pdu"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "bFirstOfAll"    # Z
    .param p7, "bLastOfAll"    # Z
    .param p8, "concatebundle"    # Landroid/os/Bundle;
    .param p9, "destaddr"    # Ljava/lang/String;
    .param p10, "text"    # Ljava/lang/String;

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/telephony/UiccSmsController;->sendRawPduWithBundleForSubscriber(JLjava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public sendRawPduWithBundleForSubscriber(JLjava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "smsc"    # [B
    .param p5, "pdu"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "bFirstOfAll"    # Z
    .param p9, "bLastOfAll"    # Z
    .param p10, "concatebundle"    # Landroid/os/Bundle;
    .param p11, "destaddr"    # Ljava/lang/String;
    .param p12, "text"    # Ljava/lang/String;

    .prologue
    .line 844
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 845
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    .line 846
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendRawPduWithBundle(Ljava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :goto_0
    return-void

    .line 848
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendStoredMultipartText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 381
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 382
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 383
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendStoredText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 369
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 370
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredText iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/UiccSmsController;->sendTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 131
    return-void
.end method

.method public sendTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 136
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/UiccSmsController;->sendTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 897
    return-void
.end method

.method public sendTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 906
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 907
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 908
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 913
    :goto_0
    return-void

    .line 910
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBCSMS(II)I
    .locals 2
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->setBCSMSForSubscriber(JII)I

    move-result v0

    return v0
.end method

.method public setBCSMSForSubscriber(JII)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "funccode"    # I
    .param p4, "index"    # I

    .prologue
    .line 686
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 687
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setBCSMS(II)I

    move-result v1

    .line 692
    :goto_0
    return v1

    .line 690
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCBEntry(Z)V
    .locals 6
    .param p1, "mode"    # Z

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 600
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCBEntry(Z)V

    .line 606
    :goto_0
    return-void

    .line 603
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCSCB(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "mode"    # Z
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "dsc"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/UiccSmsController;->setCSCBForSubscriber(JZLjava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public setCSCBForSubscriber(JZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "mode"    # Z
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "dsc"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 580
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCSCB(ZLjava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->setPremiumSmsPermissionForSubscriber(JLjava/lang/String;I)V

    .line 238
    return-void
.end method

.method public setPremiumSmsPermissionForSubscriber(JLjava/lang/String;I)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # I

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 243
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "setPremiumSmsPermission iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSMSC(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->setSMSCForSubscriber(JLjava/lang/String;)V

    .line 556
    return-void
.end method

.method public setSMSCForSubscriber(JLjava/lang/String;)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 563
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setSMSC(Ljava/lang/String;)V

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTestBCSMS(II)I
    .locals 2
    .param p1, "kddiTestData"    # I
    .param p2, "makerData"    # I

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->setTestBCSMSForSubscriber(JII)I

    move-result v0

    return v0
.end method

.method public setTestBCSMSForSubscriber(JII)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "kddiTestData"    # I
    .param p4, "makerData"    # I

    .prologue
    .line 719
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 720
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 722
    :try_start_0
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setTestBCSMS(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 731
    :goto_0
    return v1

    .line 727
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 723
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateCBMI(Ljava/lang/String;)V
    .locals 6
    .param p1, "sChannels"    # Ljava/lang/String;

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 791
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateCBMI(Ljava/lang/String;)V

    .line 797
    :goto_0
    return-void

    .line 794
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateCBMIR(Ljava/lang/String;)V
    .locals 6
    .param p1, "sChannels"    # Ljava/lang/String;

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 801
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateCBMIR(Ljava/lang/String;)V

    .line 807
    :goto_0
    return-void

    .line 804
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/UiccSmsController;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIccEfByFormat(ZII[B)Z
    .locals 6
    .param p1, "isCdmaFormat"    # Z
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 769
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEfByFormat(ZII[B)Z

    move-result v1

    .line 774
    :goto_0
    return v1

    .line 772
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "status"    # I
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 64
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 67
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMessageOnIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMessageOnIccEfWithType(Ljava/lang/String;ZII[B)Z
    .locals 9
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "isCdmaFormat"    # Z
    .param p3, "messageIndex"    # I
    .param p4, "newStatus"    # I
    .param p5, "pdu"    # [B

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/UiccSmsController;->updateMessageOnIccEfWithTypeForSubscriber(JLjava/lang/String;ZII[B)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIccEfWithTypeForSubscriber(JLjava/lang/String;ZII[B)Z
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "isCdmaFormat"    # Z
    .param p5, "messageIndex"    # I
    .param p6, "newStatus"    # I
    .param p7, "pdu"    # [B

    .prologue
    .line 439
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 440
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 441
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEfWithType(Ljava/lang/String;ZII[B)Z

    move-result v1

    .line 445
    :goto_0
    return v1

    .line 443
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNvItem()V
    .locals 6

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 616
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateNvItem()V

    .line 622
    :goto_0
    return-void

    .line 619
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccSmsInterfaceManager iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSimSmsAsRead(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->updateSimSmsAsReadForSubscriber(JLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateSimSmsAsReadForSubscriber(JLjava/lang/String;I)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 984
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 985
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateSimSmsAsRead(Ljava/lang/String;I)Z

    move-result v1

    .line 990
    :goto_0
    return v1

    .line 988
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimSmsAsRead iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSmsSendStatus(IZ)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 282
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->updateSmsSendStatusForSubscriber(JIZ)V

    .line 283
    return-void
.end method

.method public updateSmsSendStatusForSubscriber(JIZ)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "messageRef"    # I
    .param p4, "success"    # Z

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 291
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateSmsSendStatus(IZ)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmsSendStatus iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
