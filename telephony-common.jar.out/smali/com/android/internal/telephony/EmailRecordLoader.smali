.class public Lcom/android/internal/telephony/EmailRecordLoader;
.super Landroid/os/Handler;
.source "EmailRecordLoader.java"


# static fields
.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x3

.field static final EVENT_EMAIL_LOAD_ALL_DONE:I = 0x2

.field static final EVENT_EMAIL_LOAD_DONE:I = 0x1

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "EmailRecord"


# instance fields
.field public ef:I

.field public emailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mEmailPresentInIAP:Z

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field public pendingCommand:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field public recordNumber:I

.field public result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 85
    iput-object p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 86
    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->pendingCommand:I

    if-nez v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 351
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 352
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    .line 354
    :cond_1
    :goto_1
    return-void

    .line 238
    :pswitch_0
    :try_start_1
    const-string v2, "EmailRecord"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 240
    .local v7, "ar":Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    move-object v9, v0

    .line 242
    .local v9, "email":Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 243
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "email":Lcom/android/internal/telephony/EmailRecord;
    :catch_0
    move-exception v11

    .line 338
    .local v11, "exc":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 344
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 247
    .end local v11    # "exc":Ljava/lang/RuntimeException;
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    .restart local v9    # "email":Lcom/android/internal/telephony/EmailRecord;
    :cond_2
    :try_start_2
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v13, v0

    .line 253
    .local v13, "recordSize":[I
    array-length v2, v13

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v13, v3

    if-le v2, v3, :cond_4

    .line 254
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 258
    :cond_4
    const/4 v2, 0x0

    aget v2, v13, v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/telephony/EmailRecord;->buildEmailString(IZ)[B

    move-result-object v4

    .line 260
    .local v4, "data":[B
    if-nez v4, :cond_5

    .line 261
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong Email format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 265
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 266
    .local v1, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_6

    .line 267
    iget v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iget v3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 274
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->pendingCommand:I

    goto/16 :goto_0

    .line 270
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 278
    .end local v1    # "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v4    # "data":[B
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "email":Lcom/android/internal/telephony/EmailRecord;
    .end local v13    # "recordSize":[I
    :pswitch_1
    const-string v2, "EmailRecord"

    const-string v3, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 281
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 282
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF email record failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 286
    :cond_7
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->pendingCommand:I

    .line 287
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 294
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "EmailRecord"

    const-string v3, "EVENT_EMAIL_LOAD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 296
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v4, v0

    .line 298
    .restart local v4    # "data":[B
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 299
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 302
    :cond_8
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->pendingCommand:I

    .line 303
    new-instance v9, Lcom/android/internal/telephony/EmailRecord;

    iget v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    invoke-direct {v9, v2, v4, v3}, Lcom/android/internal/telephony/EmailRecord;-><init>(I[BZ)V

    .line 304
    .restart local v9    # "email":Lcom/android/internal/telephony/EmailRecord;
    iput-object v9, p0, Lcom/android/internal/telephony/EmailRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 308
    .end local v4    # "data":[B
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "email":Lcom/android/internal/telephony/EmailRecord;
    :pswitch_3
    const-string v2, "EmailRecord"

    const-string v3, "EVENT_EMAIL_LOAD_ALL_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 310
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 312
    .local v8, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 313
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 316
    :cond_9
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->pendingCommand:I

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->emailList:Ljava/util/ArrayList;

    .line 318
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->emailList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->result:Ljava/lang/Object;

    .line 320
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "s":I
    :goto_2
    if-ge v12, v14, :cond_0

    .line 321
    new-instance v9, Lcom/android/internal/telephony/EmailRecord;

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-boolean v5, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    invoke-direct {v9, v3, v2, v5}, Lcom/android/internal/telephony/EmailRecord;-><init>(I[BZ)V

    .line 322
    .restart local v9    # "email":Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    if-nez v12, :cond_b

    .line 324
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v10, v2

    .line 325
    .local v10, "entrylength":I
    iget-boolean v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 326
    add-int/lit8 v10, v10, -0x2

    .line 330
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.usim.email.length"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    .end local v10    # "entrylength":I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 233
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

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    .line 128
    iput-object p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 131
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 132
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v1, "EmailRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 140
    iput-object v4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public loadAllFromEF(IZLandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "inIAP"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 146
    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    .line 147
    iput-boolean p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 151
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 152
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v1, "EmailRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 160
    iput-object v4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public loadFromEF(IILandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "recordNumber"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 101
    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    .line 102
    iput p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    .line 103
    iput-object p3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 106
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v1, "EmailRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 115
    iput-object v4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public updateEF(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 5
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "emailRecord"    # Lcom/android/internal/telephony/EmailRecord;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 178
    iput p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    .line 179
    iput-object p4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    .line 180
    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 183
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 184
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v1, "EmailRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 192
    iput-object v4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V
    .locals 5
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "emailRecord"    # Lcom/android/internal/telephony/EmailRecord;
    .param p4, "isInIAP"    # Z
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 198
    iput p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    .line 199
    iput-boolean p4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    .line 200
    iput-object p5, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    .line 201
    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 204
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 205
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string v1, "EmailRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 213
    iput-object v4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method
