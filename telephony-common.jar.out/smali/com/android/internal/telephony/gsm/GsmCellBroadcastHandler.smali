.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final VDBG:Z


# instance fields
.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x0

    .line 57
    const-string v0, "GsmCellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 58
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 60
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method private createSmsCbLocation(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Landroid/telephony/SmsCbLocation;
    .locals 8
    .param p1, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .prologue
    .line 474
    const-string v6, "gsm.operator.numeric"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "plmn":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2-dispatchCBMessage()-plmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 476
    const/4 v3, -0x1

    .line 477
    .local v3, "lac":I
    const/4 v1, -0x1

    .line 478
    .local v1, "cid":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 479
    .local v0, "cellLocation":Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    instance-of v6, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v6, :cond_0

    move-object v2, v0

    .line 482
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 483
    .local v2, "gsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 484
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 488
    .end local v2    # "gsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2-dispatchCBMessage()-lac="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2-dispatchCBMessage()-cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 504
    :pswitch_0
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, v5}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 507
    .local v4, "location":Landroid/telephony/SmsCbLocation;
    :goto_1
    return-object v4

    .line 486
    .end local v4    # "location":Landroid/telephony/SmsCbLocation;
    :cond_0
    const-string v6, "2-dispatchCBMessage()-cellLocation is null or not GsmCellLocation"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :pswitch_1
    new-instance v4, Landroid/telephony/SmsCbLocation;

    const/4 v6, -0x1

    invoke-direct {v4, v5, v3, v6}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 495
    .restart local v4    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 499
    .end local v4    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, v5, v3, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 500
    .restart local v4    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 21
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 141
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v20

    check-cast v0, [B

    move-object/from16 v19, v0

    .line 158
    .local v19, "receivedPdu":[B
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 159
    .local v8, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v20, "gsm.operator.numeric"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 160
    .local v18, "plmn":Ljava/lang/String;
    const/4 v12, -0x1

    .line 161
    .local v12, "lac":I
    const/4 v4, -0x1

    .line 162
    .local v4, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    .line 166
    .local v5, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v5, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 167
    move-object v0, v5

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    .line 168
    .local v3, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v12

    .line 169
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    .line 173
    .end local v3    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 185
    :pswitch_0
    new-instance v14, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 190
    .local v14, "location":Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v15

    .line 191
    .local v15, "pageCount":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_5

    .line 193
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v6, v8, v14}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 196
    .local v6, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[B

    .line 198
    .local v17, "pdus":[[B
    if-nez v17, :cond_1

    .line 201
    new-array v0, v15, [[B

    move-object/from16 v17, v0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    aput-object v19, v17, v20

    .line 209
    move-object/from16 v2, v17

    .local v2, "arr$":[[B
    array-length v13, v2

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_3

    aget-object v16, v2, v9

    .line 210
    .local v16, "pdu":[B
    if-nez v16, :cond_2

    .line 212
    const/16 v20, 0x0

    .line 241
    .end local v2    # "arr$":[[B
    .end local v4    # "cid":I
    .end local v5    # "cl":Landroid/telephony/CellLocation;
    .end local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v9    # "i$":I
    .end local v12    # "lac":I
    .end local v13    # "len$":I
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    .end local v15    # "pageCount":I
    .end local v16    # "pdu":[B
    .end local v17    # "pdus":[[B
    .end local v18    # "plmn":Ljava/lang/String;
    .end local v19    # "receivedPdu":[B
    :goto_2
    return-object v20

    .line 175
    .restart local v4    # "cid":I
    .restart local v5    # "cl":Landroid/telephony/CellLocation;
    .restart local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v12    # "lac":I
    .restart local v18    # "plmn":Ljava/lang/String;
    .restart local v19    # "receivedPdu":[B
    :pswitch_1
    new-instance v14, Landroid/telephony/SmsCbLocation;

    const/16 v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v14, v0, v12, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 176
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 180
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v14, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v12, v4}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 181
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 209
    .restart local v2    # "arr$":[[B
    .restart local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .restart local v9    # "i$":I
    .restart local v13    # "len$":I
    .restart local v15    # "pageCount":I
    .restart local v16    # "pdu":[B
    .restart local v17    # "pdus":[[B
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 217
    .end local v16    # "pdu":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v2    # "arr$":[[B
    .end local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 229
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_4
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 230
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 232
    .local v10, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v12, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v20

    if-nez v20, :cond_4

    .line 233
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 239
    .end local v4    # "cid":I
    .end local v5    # "cl":Landroid/telephony/CellLocation;
    .end local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v10    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v12    # "lac":I
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    .end local v15    # "pageCount":I
    .end local v17    # "pdus":[[B
    .end local v18    # "plmn":Ljava/lang/String;
    .end local v19    # "receivedPdu":[B
    :catch_0
    move-exception v7

    .line 240
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v20, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    const/16 v20, 0x0

    goto :goto_2

    .line 220
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "cid":I
    .restart local v5    # "cl":Landroid/telephony/CellLocation;
    .restart local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v12    # "lac":I
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v15    # "pageCount":I
    .restart local v18    # "plmn":Ljava/lang/String;
    .restart local v19    # "receivedPdu":[B
    :cond_5
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 221
    .restart local v17    # "pdus":[[B
    const/16 v20, 0x0

    aput-object v19, v17, v20

    goto :goto_3

    .line 237
    .restart local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_6
    move-object/from16 v0, v17

    invoke-static {v8, v14, v0}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    goto :goto_2

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 82
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 83
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 84
    return-object v0
.end method

.method private processCBMessagePart(Lcom/android/internal/telephony/gsm/CBMessage;III)Z
    .locals 27
    .param p1, "cb"    # Lcom/android/internal/telephony/gsm/CBMessage;
    .param p2, "referenceNumber"    # I
    .param p3, "sequence"    # I
    .param p4, "count"    # I

    .prologue
    .line 370
    const-string v4, "processCBMessagePart()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 373
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .local v26, "where":Ljava/lang/StringBuilder;
    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 379
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_0

    const/4 v4, 0x0

    .line 470
    :goto_0
    return v4

    .line 381
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 383
    .local v14, "cursorCount":I
    const-string v4, "pdu"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 384
    .local v21, "pduColumn":I
    const-string v4, "sequence"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 387
    .local v23, "sequenceColumn":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v14, :cond_2

    .line 388
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 389
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v15, v4

    .line 390
    .local v15, "cursorSequence":I
    move/from16 v0, p3

    if-ne v15, v0, :cond_1

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCBMessagePart()-Drop duplicate raw data! ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 392
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 393
    const/4 v4, 0x0

    goto :goto_0

    .line 387
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 398
    .end local v15    # "cursorSequence":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCBMessagePart()-cursorCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCBMessagePart()-raw data("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 400
    add-int/lit8 v4, p4, -0x1

    if-eq v14, v4, :cond_3

    .line 402
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCBMessagePart()-save msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 404
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 405
    .local v25, "values":Landroid/content/ContentValues;
    const-string v4, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v4, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v4, "count"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    const-string v4, "sequence"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 411
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 415
    .end local v25    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v4, -0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 417
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v11, "body":Ljava/lang/StringBuilder;
    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 419
    .local v22, "pdus":[Ljava/lang/String;
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v14, :cond_4

    .line 420
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 421
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v15, v4

    .line 422
    .restart local v15    # "cursorSequence":I
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 423
    .local v24, "temp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCBMessagePart()-get msg ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 424
    add-int/lit8 v4, v15, -0x1

    aput-object v24, v22, v4

    .line 419
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 426
    .end local v15    # "cursorSequence":I
    .end local v24    # "temp":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCBMessagePart()-get msg ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 427
    add-int/lit8 v4, p3, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v22, v4

    .line 428
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, p4

    if-ge v0, v1, :cond_5

    .line 429
    aget-object v4, v22, v17

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 431
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v4, 0x1

    new-array v12, v4, [[B

    .line 436
    .local v12, "cbpdu":[[B
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v5

    aput-object v5, v12, v4

    .line 439
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 440
    .local v10, "LocationBody":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCBMessagePart()-msg ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 441
    new-instance v18, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.CB_RECEIVED"

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v18, "intent":Landroid/content/Intent;
    const-string v4, "cbPdu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 444
    const-string v4, "cmas"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/CmasMessage;->isGsmCmas(I)Z

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const-string v4, "isCdma"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    const-string v4, "pdus"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v4, "gs"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getGs()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v4, "upnum"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getUpdatenum()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v4, "mId"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string v4, "dcs"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getDcs()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v4, "sn"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getSn()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    new-instance v16, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 455
    .local v16, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->createSmsCbLocation(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Landroid/telephony/SmsCbLocation;

    move-result-object v19

    .line 456
    .local v19, "location":Landroid/telephony/SmsCbLocation;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v20

    .line 457
    .local v20, "message":Landroid/telephony/SmsCbMessage;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/telephony/SmsCbMessage;->setMessageBody(Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCmasDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;Landroid/telephony/SmsCbMessage;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 460
    const-string v4, "got duplicate long CMAS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 461
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 466
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/content/Intent;Landroid/telephony/SmsCbMessage;Landroid/content/BroadcastReceiver;)V

    .line 469
    const-string v4, "2-dispatchCBMessage()- supportGepApps"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 470
    const/4 v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected dispatchCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)Z
    .locals 10
    .param p1, "cb"    # Lcom/android/internal/telephony/gsm/CBMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 301
    const/4 v4, 0x0

    .line 303
    .local v4, "mText":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2-dispatchCBMessage()-page:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 305
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheck3gppCbDuplication(Landroid/content/Context;[B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v6

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPages()I

    move-result v8

    if-le v8, v7, :cond_2

    .line 310
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getSn()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPage()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPages()I

    move-result v8

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->processCBMessagePart(Lcom/android/internal/telephony/gsm/CBMessage;III)Z

    move-result v6

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 314
    if-eqz v4, :cond_0

    .line 319
    new-array v0, v7, [[B

    .line 320
    .local v0, "cbPdu":[[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v8

    aput-object v8, v0, v6

    .line 323
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.htc.intent.action.CB_RECEIVED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "cbPdu"

    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 326
    const-string v8, "cmas"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/CmasMessage;->isGsmCmas(I)Z

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    const-string v8, "isCdma"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    const-string v8, "pdus"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v8, "gs"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getGs()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v8, "upnum"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getUpdatenum()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    const-string v8, "mId"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v8, "dcs"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getDcs()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v8, "sn"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getSn()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 347
    .local v1, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->createSmsCbLocation(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Landroid/telephony/SmsCbLocation;

    move-result-object v3

    .line 348
    .local v3, "location":Landroid/telephony/SmsCbLocation;
    invoke-static {v1, v3, v0}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v5

    .line 350
    .local v5, "message":Landroid/telephony/SmsCbMessage;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCmasDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;Landroid/telephony/SmsCbMessage;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 351
    const-string v7, "got duplicate CMAS"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/content/Intent;Landroid/telephony/SmsCbMessage;Landroid/content/BroadcastReceiver;)V

    .line 357
    const-string v6, "2-dispatchCBMessage()- supportGepApps"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    move v6, v7

    .line 358
    goto/16 :goto_0
.end method

.method protected handleHtcGsmCbMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_2

    .line 115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 117
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 118
    const-string v3, "Exception processing incoming htc CB message"

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_0
    return v2

    .line 122
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/CBMessage;

    .line 124
    .local v1, "cbMessage":Lcom/android/internal/telephony/gsm/CBMessage;
    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->dispatchCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)Z

    move-result v2

    goto :goto_0

    .line 127
    :cond_1
    const-string v3, "Don\'t dispatchCBMessage, due to cb is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cbMessage":Lcom/android/internal/telephony/gsm/CBMessage;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleHtcGsmCbMessage(Landroid/os/Message;)Z

    move-result v2

    goto :goto_0
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 95
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 97
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 99
    const/4 v1, 0x1

    .line 102
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCB(Landroid/os/Handler;)V

    .line 72
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 73
    return-void
.end method
