.class public Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "ImsSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "SMS"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 45
    return-void
.end method


# virtual methods
.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .prologue
    .line 166
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->copyMessageToIccEfWithType(Ljava/lang/String;ZI[B[B)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResult(I[B[B)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->copyMessageToIccEfForResultWithType(ZI[B[B)I

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResultWithType(ZI[B[B)I
    .locals 6
    .param p1, "isCdmaFormat"    # Z
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .prologue
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEfForResultWithType cdma: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(no security flag)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 233
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 235
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    .line 236
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mReturnedIndex:I

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 239
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    iget v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mReturnedIndex:I

    return v2

    .line 242
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 250
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 247
    .restart local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public copyMessageToIccEfWithType(Ljava/lang/String;ZI[B[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "isCdmaFormat"    # Z
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B

    .prologue
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEfWithType: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(no security flag)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 188
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 190
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 193
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    iget-boolean v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 196
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p3, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 204
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 201
    .restart local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    .prologue
    .line 262
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    .local v0, "context":Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from UICC"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 272
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    if-nez v3, :cond_0

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    .line 277
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 278
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 279
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    if-nez v3, :cond_2

    .line 280
    const-string v3, "getAllMessagesFromIccEf fails because getIccFileHandler(CSIM) is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    if-nez v3, :cond_1

    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    .line 285
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    monitor-exit v4

    .line 317
    :goto_2
    return-object v3

    .line 275
    .end local v2    # "response":Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 284
    .restart local v2    # "response":Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 288
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    goto :goto_2

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "interrupted while trying to load from the CSIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 297
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    if-nez v3, :cond_5

    .line 298
    const-string v3, "getAllMessagesFromIccEf fails because getIccFileHandler(USIM) is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    if-nez v3, :cond_4

    .line 300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    .line 303
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    monitor-exit v4

    goto :goto_2

    .line 302
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_4

    .line 306
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 311
    :catch_1
    move-exception v1

    .line 312
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v3, "interrupted while trying to load from the USIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public getMessageFromIccEf(I)[B
    .locals 7
    .param p1, "nIndexOnSim"    # I

    .prologue
    const/4 v3, 0x0

    .line 328
    const-string v4, "getMessageFromEF"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 332
    .local v0, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Reading messages from UICC"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 336
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 338
    .local v2, "response":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 339
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    if-nez v5, :cond_0

    .line 340
    const-string v5, "getMessageFromIccEf fails because getIccFileHandler(CSIM) is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 341
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    .line 342
    monitor-exit v4

    .line 364
    :goto_0
    return-object v3

    .line 345
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    goto :goto_0

    .line 348
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    if-nez v5, :cond_2

    .line 349
    const-string v5, "getMessageFromIccEf fails because getIccFileHandler(USIM) is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 350
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    .line 351
    monitor-exit v4

    goto :goto_0

    .line 363
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 354
    .restart local v2    # "response":Landroid/os/Message;
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_1

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public getMessageFromIccEfWithType(ZI)[B
    .locals 7
    .param p1, "bIsCdmaFormat"    # Z
    .param p2, "nIndexOnSim"    # I

    .prologue
    const/4 v3, 0x0

    .line 369
    const-string v4, "getMessageFromEF"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 371
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 373
    .local v0, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Reading messages from UICC"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 377
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 379
    .local v2, "response":Landroid/os/Message;
    if-eqz p1, :cond_1

    .line 380
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    if-nez v5, :cond_0

    .line 381
    const-string v5, "getMessageFromIccEfWithType fails because getIccFileHandler(CSIM) is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 382
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    .line 383
    monitor-exit v4

    .line 405
    :goto_0
    return-object v3

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p2, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    goto :goto_0

    .line 389
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    if-nez v5, :cond_2

    .line 390
    const-string v5, "getMessageFromIccEfWithType fails because getIccFileHandler(USIM) is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 391
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    .line 392
    monitor-exit v4

    goto :goto_0

    .line 404
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 395
    .restart local v2    # "response":Landroid/os/Message;
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p2, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_1

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImsSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->updateMessageOnIccEfWithType(Ljava/lang/String;ZII[B)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->updateMessageOnIccEfWithType(Ljava/lang/String;ZII[B)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMessageOnIccEfWithType(Ljava/lang/String;ZII[B)Z
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "isCdmaFormat"    # Z
    .param p3, "index"    # I
    .param p4, "status"    # I
    .param p5, "pdu"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageOnIccEf: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(no security flag)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 81
    const-string v1, "Updating message on SIM"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 82
    iget-object v7, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 83
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 86
    .local v5, "response":Landroid/os/Message;
    if-nez p4, :cond_1

    .line 89
    if-ne p2, v9, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p3, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    iget-boolean v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    :goto_2
    return v0

    .line 92
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p3, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    goto :goto_0

    .line 159
    .end local v5    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 95
    .restart local v5    # "response":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLinearFixedEfRecordLength:I

    .line 97
    if-ne p2, v9, :cond_3

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 99
    const-string v1, "updateMessageOnIccEfWithType fails because getIccFileHandler(CSIM) is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 100
    monitor-exit v7

    goto :goto_2

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f3c

    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    :goto_4
    :try_start_6
    iget v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLinearFixedEfRecordLength:I

    if-nez v1, :cond_5

    .line 122
    const-string v1, "EF record length is 0, updateMessageOnIccEfWithType fail!!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 123
    monitor-exit v7

    goto :goto_2

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    if-nez v1, :cond_4

    .line 107
    const-string v1, "updateMessageOnIccEfWithType fails because getIccFileHandler(USIM) is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 108
    monitor-exit v7

    goto :goto_2

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f3c

    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto :goto_3

    .line 117
    :catch_0
    move-exception v6

    .line 118
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by index"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 126
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLinearFixedEfRecordLength:I

    invoke-virtual {p0, p2, p4, p5, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->makeSmsRecordDataWithType(ZI[BI)[B

    move-result-object v3

    .line 129
    .local v3, "record":[B
    if-ne p2, v9, :cond_7

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    if-nez v1, :cond_6

    .line 131
    const-string v1, "updateMessageOnIccEfWithType fails because getIccFileHandler(CSIM) is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 132
    monitor-exit v7

    goto/16 :goto_2

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 140
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    if-nez v1, :cond_8

    .line 141
    const-string v1, "updateMessageOnIccEfWithType fails because getIccFileHandler(USIM) is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 142
    monitor-exit v7

    goto/16 :goto_2

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 156
    .end local v3    # "record":[B
    :catch_1
    move-exception v6

    .line 157
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method
