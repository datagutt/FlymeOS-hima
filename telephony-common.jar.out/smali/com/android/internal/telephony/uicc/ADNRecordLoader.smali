.class Lcom/android/internal/telephony/uicc/ADNRecordLoader;
.super Landroid/os/Handler;
.source "HtcAdnRecord.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x2

.field static final EVENT_EXT_RECORD_UPDATE:I = 0x4

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "HtcADNRecord"


# instance fields
.field adnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field mExt1List:Ljava/util/ArrayList;
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

.field pendingCommand:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;)V
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
    .line 70
    .local p1, "ext1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcExt1Record;>;"
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->ef:I

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
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
    .line 79
    .local p1, "ext1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcExt1Record;>;"
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->ef:I

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    .line 82
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 83
    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->pendingCommand:I

    if-nez v2, :cond_1

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 272
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    .line 274
    :cond_1
    :goto_1
    return-void

    .line 159
    :pswitch_0
    :try_start_1
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 161
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    move-object v7, v0

    .line 163
    .local v7, "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 164
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .end local v7    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v10

    .line 259
    .local v10, "exc":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 264
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 168
    .end local v10    # "exc":Ljava/lang/RuntimeException;
    .restart local v7    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v15, v0

    .line 174
    .local v15, "recordSize":[I
    array-length v2, v15

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v15, v3

    if-le v2, v3, :cond_4

    .line 175
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 179
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget v3, v15, v3

    invoke-virtual {v7, v2, v3}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->buildAdnString(Ljava/util/ArrayList;I)[B

    move-result-object v4

    .line 181
    .local v4, "data":[B
    if-nez v4, :cond_5

    .line 182
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong ADN format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 186
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 187
    .local v1, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_6

    .line 188
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 194
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->pendingCommand:I

    goto/16 :goto_0

    .line 191
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 197
    .end local v1    # "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v4    # "data":[B
    .end local v7    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "recordSize":[I
    :pswitch_1
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 200
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 201
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF ADN record failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 204
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->pendingCommand:I

    .line 205
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 209
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_EXT_RECORD_UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->pendingCommand:I

    goto/16 :goto_0

    .line 217
    :pswitch_3
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_ADN_LOAD_ALL_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 220
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    .line 222
    .local v9, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 223
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 225
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->pendingCommand:I

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->result:Ljava/lang/Object;

    .line 230
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, "s":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 231
    new-instance v7, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v7, v3, v2}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;-><init>(I[B)V

    .line 232
    .restart local v7    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    if-nez v13, :cond_9

    .line 235
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v14, v2

    .line 237
    .local v14, "maxAlphaTagLength":I
    const/16 v2, 0xe

    if-ge v14, v2, :cond_b

    const/4 v14, 0x0

    .line 241
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.usim.alpha-tag.length"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v14    # "maxAlphaTagLength":I
    :cond_9
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 247
    iget v12, v7, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->extRecord:I

    .line 248
    .local v12, "extindex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v12, v2, :cond_a

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 251
    .local v11, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->getBytes()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->appendExtRecord([B)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    .end local v11    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v12    # "extindex":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 237
    .restart local v14    # "maxAlphaTagLength":I
    :cond_b
    add-int/lit8 v14, v14, -0xe

    goto :goto_3

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method loadAllFromEF(ILandroid/os/Message;)V
    .locals 5
    .param p1, "efid"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 95
    iput p1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->ef:I

    .line 96
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 99
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v1, "HtcADNRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 107
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/uicc/HtcAdnRecord;Landroid/os/Message;)V
    .locals 5
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "adnRecord"    # Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->ef:I

    .line 128
    iput p2, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->recordNumber:I

    .line 129
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 132
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 133
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v1, "HtcADNRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 141
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method
