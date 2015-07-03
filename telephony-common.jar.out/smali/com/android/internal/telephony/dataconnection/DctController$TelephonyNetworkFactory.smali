.class Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyNetworkFactory"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mPendingReq:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 1373
    invoke-direct {p0, p2, p3, p4, p6}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 1366
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    .line 1374
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1375
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->TAG:Ljava/lang/String;

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1377
    return-void
.end method


# virtual methods
.method public evalPendingRequest()V
    .locals 6

    .prologue
    .line 1478
    const/4 v1, 0x0

    .line 1481
    .local v1, "key":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1482
    .local v2, "pendingReqSize":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evalPendingRequest, pending request size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1485
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1486
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;

    .line 1487
    .local v3, "request":Landroid/net/NetworkRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evalPendingRequest: request = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1489
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v5, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1490
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    .line 1483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    .end local v3    # "request":Landroid/net/NetworkRequest;
    :cond_0
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][TelephonyNetworkFactory]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 10
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 1381
    sget-boolean v6, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1382
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needNetworkFor: Sub Info has not been ready, pending request. SubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1383
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v6, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1428
    :goto_0
    return-void

    .line 1388
    :cond_1
    sget-boolean v6, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->IsRequestPhoneIdInvalid(Landroid/net/NetworkRequest;)Z
    invoke-static {v6, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1300(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1389
    const-string v6, "needNetworkFor: Invalid PhoneId, pending request."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1390
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v6, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1395
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I
    invoke-static {v6, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1400(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    move-result v3

    .line 1396
    .local v3, "requestPhoneId":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 1397
    .local v2, "phoneId":I
    const-string v4, "Request not sent"

    .line 1399
    .local v4, "result":Ljava/lang/String;
    if-eq v3, v2, :cond_3

    sget-boolean v6, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-nez v6, :cond_5

    .line 1400
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v6, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1403
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/4 v0, 0x0

    .line 1404
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 1405
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getApnType(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->isValidApnType(Ljava/lang/String;)Z
    invoke-static {v6, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1500(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1408
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->isPreferSpecificType(Ljava/lang/String;)Z
    invoke-static {v6, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1600(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;)Z

    move-result v5

    .line 1409
    .local v5, "specificType":Z
    sget-boolean v6, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->getDefaultDataPhoneId()I

    move-result v6

    if-ne v3, v6, :cond_6

    .line 1410
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;Z)I
    invoke-static {v6, p1, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1700(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;Z)I

    .line 1411
    const-string v4, "Send request"

    .line 1424
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v5    # "specificType":Z
    :cond_5
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needNetworkFor: networkRequest="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", requestPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1413
    .restart local v0    # "apnType":Ljava/lang/String;
    .restart local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .restart local v5    # "specificType":Z
    :cond_6
    const-string v4, "Can\'t assign slot for non-specific APN"

    goto :goto_1

    .line 1416
    .end local v5    # "specificType":Z
    :cond_7
    const-string v4, "Unsupported APN"

    goto :goto_1

    .line 1419
    :cond_8
    const-string v4, "dcTracker is null"

    goto :goto_1
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 8
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1434
    sget-boolean v6, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1436
    const-string v6, "releaseNetworkFor: Sub Info has not been ready, remove request from pending list."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1437
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 1475
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I
    invoke-static {v6, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1400(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    move-result v3

    .line 1442
    .local v3, "requestPhoneId":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 1443
    .local v2, "phoneId":I
    const-string v4, "Request not sent"

    .line 1445
    .local v4, "result":Ljava/lang/String;
    if-eq v3, v2, :cond_1

    sget-boolean v6, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-nez v6, :cond_3

    .line 1446
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v6, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1449
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/4 v0, 0x0

    .line 1450
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 1451
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getApnType(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->isValidApnType(Ljava/lang/String;)Z
    invoke-static {v6, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1500(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1454
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->isPreferSpecificType(Ljava/lang/String;)Z
    invoke-static {v6, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1600(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;)Z

    move-result v5

    .line 1455
    .local v5, "specificType":Z
    sget-boolean v6, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->getDefaultDataPhoneId()I

    move-result v6

    if-ne v3, v6, :cond_4

    .line 1456
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I
    invoke-static {v6, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1800(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    .line 1457
    const-string v4, "Send request"

    .line 1471
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v5    # "specificType":Z
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseNetworkFor: networkRequest="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", requestPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    .restart local v0    # "apnType":Ljava/lang/String;
    .restart local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .restart local v5    # "specificType":Z
    :cond_4
    const-string v4, "Can\'t assign slot for non-specific APN"

    goto :goto_1

    .line 1462
    .end local v5    # "specificType":Z
    :cond_5
    const-string v4, "Unsupported APN"

    goto :goto_1

    .line 1465
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1900(Lcom/android/internal/telephony/dataconnection/DctController;)Ljava/util/HashMap;

    move-result-object v6

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    const-string v4, "dcTracker is null"

    goto :goto_1
.end method
