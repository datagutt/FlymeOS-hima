.class public Lcom/android/internal/telephony/AnrRecordLoader;
.super Landroid/os/Handler;
.source "AnrRecordLoader.java"


# static fields
.field static final EVENT_ANR_LOAD_ALL_DONE:I = 0x2

.field static final EVENT_ANR_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x3

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "AnrRecord"


# instance fields
.field public ef:I

.field public mAnrPresentInIAP:Z

.field public mExt1List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field public pendingCommand:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field public recordNumber:I

.field public result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;",
            "Lcom/android/internal/telephony/PhoneBase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "ext1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcExt1Record;>;"
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 70
    iput-object p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;",
            "Lcom/android/internal/telephony/PhoneBase;",
            "Lcom/android/internal/telephony/uicc/IccFileHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "ext1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcExt1Record;>;"
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    .line 82
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 83
    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 347
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->pendingCommand:I

    if-nez v2, :cond_1

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AnrRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 353
    :cond_1
    :goto_1
    return-void

    .line 234
    :pswitch_0
    :try_start_1
    const-string v2, "AnrRecord"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 236
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    move-object v8, v0

    .line 238
    .local v8, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 239
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    .end local v8    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v11

    .line 336
    .local v11, "exc":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 243
    .end local v11    # "exc":Ljava/lang/RuntimeException;
    .restart local v8    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v15, v0

    .line 249
    .local v15, "recordSize":[I
    array-length v2, v15

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v15, v3

    if-le v2, v3, :cond_4

    .line 250
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 254
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget v3, v15, v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mAnrPresentInIAP:Z

    invoke-virtual {v8, v2, v3, v5}, Lcom/android/internal/telephony/AnrRecord;->buildAnrString(Ljava/util/ArrayList;IZ)[B

    move-result-object v4

    .line 256
    .local v4, "data":[B
    if-nez v4, :cond_5

    .line 257
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong ANR format"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 261
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 262
    .local v1, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_6

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 270
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->pendingCommand:I

    goto/16 :goto_0

    .line 266
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 273
    .end local v1    # "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v4    # "data":[B
    .end local v8    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "recordSize":[I
    :pswitch_1
    const-string v2, "AnrRecord"

    const-string v3, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 277
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 278
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF ANR record failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 281
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->pendingCommand:I

    .line 282
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 289
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "AnrRecord"

    const-string v3, "EVENT_ANR_LOAD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 291
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v4, v0

    .line 293
    .restart local v4    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 294
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 297
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->pendingCommand:I

    .line 298
    new-instance v8, Lcom/android/internal/telephony/AnrRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    invoke-direct {v8, v2, v4}, Lcom/android/internal/telephony/AnrRecord;-><init>(I[B)V

    .line 299
    .restart local v8    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/AnrRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 304
    .end local v4    # "data":[B
    .end local v8    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v2, "AnrRecord"

    const-string v3, "EVENT_ANR_LOAD_ALL_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 306
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 308
    .local v10, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 309
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 311
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->pendingCommand:I

    .line 313
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v7, "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/AnrRecordLoader;->result:Ljava/lang/Object;

    .line 316
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, "s":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 317
    new-instance v8, Lcom/android/internal/telephony/AnrRecord;

    add-int/lit8 v3, v14, 0x1

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mAnrPresentInIAP:Z

    invoke-direct {v8, v3, v2, v5}, Lcom/android/internal/telephony/AnrRecord;-><init>(I[BZ)V

    .line 318
    .restart local v8    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {v8}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 322
    iget v13, v8, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 323
    .local v13, "extindex":I
    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v13, v2, :cond_a

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    add-int/lit8 v3, v13, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 325
    .local v12, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->getBytes()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/AnrRecord;->appendExtRecord([B)V

    .line 316
    .end local v12    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v13    # "extindex":I
    :cond_a
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 328
    :cond_b
    const-string v2, "AnrRecord"

    const-string v3, "No Invalid EF_EXT1 records."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadAllFromEF(ILandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 124
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 125
    iput-object p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 128
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 129
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string v1, "AnrRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 137
    iput-object v4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public loadAllFromEF(IZLandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "inIAP"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 144
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 145
    iput-boolean p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mAnrPresentInIAP:Z

    .line 146
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 149
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 150
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v1, "AnrRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 158
    iput-object v4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method loadFromEF(IILandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "recordNumber"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 98
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 99
    iput p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    .line 100
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 103
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v1, "AnrRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 112
    iput-object v4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public updateEF(IILcom/android/internal/telephony/AnrRecord;Landroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "recordNumber"    # I
    .param p3, "anrRecord"    # Lcom/android/internal/telephony/AnrRecord;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 176
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 177
    iput p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    .line 178
    iput-object p4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 180
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 181
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 182
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v1, "AnrRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 190
    iput-object v4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "recordNumber"    # I
    .param p3, "anrRecord"    # Lcom/android/internal/telephony/AnrRecord;
    .param p4, "inIAP"    # Z
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 196
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 197
    iput p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    .line 198
    iput-boolean p4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mAnrPresentInIAP:Z

    .line 199
    iput-object p5, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 200
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 201
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 202
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v1, "AnrRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 210
    iput-object v4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method
