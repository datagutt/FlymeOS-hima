.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const-string v0, "EF_CSIM_SPN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 542
    iget-object v9, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    .line 543
    .local v0, "data":[B
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSIM_SPN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 547
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v10, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 549
    const/4 v9, 0x1

    aget-byte v2, v0, v9

    .line 550
    .local v2, "encoding":I
    const/4 v9, 0x2

    aget-byte v3, v0, v9

    .line 551
    .local v3, "language":I
    const/16 v9, 0x20

    new-array v8, v9, [B

    .line 552
    .local v8, "spnData":[B
    array-length v9, v0

    add-int/lit8 v9, v9, -0x3

    const/16 v10, 0x20

    if-ge v9, v10, :cond_3

    array-length v9, v0

    add-int/lit8 v4, v9, -0x3

    .line 553
    .local v4, "len":I
    :goto_1
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v0, v9, v8, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 556
    const/4 v5, 0x0

    .local v5, "numBytes":I
    :goto_2
    array-length v9, v8

    if-ge v5, v9, :cond_0

    .line 557
    aget-byte v9, v8, v5

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_4

    .line 560
    :cond_0
    if-nez v5, :cond_5

    .line 561
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 633
    :cond_1
    :goto_3
    return-void

    .line 547
    .end local v2    # "encoding":I
    .end local v3    # "language":I
    .end local v4    # "len":I
    .end local v5    # "numBytes":I
    .end local v8    # "spnData":[B
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 552
    .restart local v2    # "encoding":I
    .restart local v3    # "language":I
    .restart local v8    # "spnData":[B
    :cond_3
    const/16 v4, 0x20

    goto :goto_1

    .line 556
    .restart local v4    # "len":I
    .restart local v5    # "numBytes":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 565
    :cond_5
    const/4 v6, 0x0

    .line 567
    .local v6, "spn":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 604
    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, "SPN encoding not supported"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 610
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spnCondition="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-boolean v11, v11, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 614
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-boolean v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsControlledByIccCardProxy:Z

    if-nez v9, :cond_7

    .line 616
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->isReportImsiFromeMe()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 618
    :cond_6
    const-string v9, "gsm.sim.operator.alpha"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 625
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->isDualPhoneWithCdmaSupport()Z
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$300(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 627
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->setUimOperatorAlpha(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$400(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 570
    :pswitch_1
    :try_start_1
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ISO-8859-1"

    invoke-direct {v7, v8, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 571
    .end local v6    # "spn":Ljava/lang/String;
    .local v7, "spn":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 572
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/16 v10, 0xff

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;
    invoke-static {v7, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$200(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v7

    .end local v7    # "spn":Ljava/lang/String;
    .restart local v6    # "spn":Ljava/lang/String;
    goto/16 :goto_4

    .line 577
    :pswitch_2
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO-8859-1"

    invoke-direct {v10, v8, v11, v5, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spn decode error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 581
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_4
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v10, 0x0

    mul-int/lit8 v11, v5, 0x8

    div-int/lit8 v11, v11, 0x7

    invoke-static {v8, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 585
    :pswitch_4
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "US-ASCII"

    invoke-direct {v7, v8, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 591
    .end local v6    # "spn":Ljava/lang/String;
    .restart local v7    # "spn":Ljava/lang/String;
    :try_start_5
    invoke-static {v7}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 592
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    move-object v6, v7

    .end local v7    # "spn":Ljava/lang/String;
    .restart local v6    # "spn":Ljava/lang/String;
    goto/16 :goto_4

    .line 594
    .end local v6    # "spn":Ljava/lang/String;
    .restart local v7    # "spn":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Some corruption in SPN decoding = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 595
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, "Using ENCODING_GSM_7BIT_ALPHABET scheme..."

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 596
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v10, 0x0

    mul-int/lit8 v11, v5, 0x8

    div-int/lit8 v11, v11, 0x7

    invoke-static {v8, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v7

    .line 599
    .end local v7    # "spn":Ljava/lang/String;
    .restart local v6    # "spn":Ljava/lang/String;
    goto/16 :goto_4

    .line 601
    :pswitch_5
    :try_start_6
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "utf-16"

    invoke-direct {v10, v8, v11, v5, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 606
    .end local v6    # "spn":Ljava/lang/String;
    .restart local v7    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v6, v7

    .end local v7    # "spn":Ljava/lang/String;
    .restart local v6    # "spn":Ljava/lang/String;
    goto/16 :goto_5

    .end local v6    # "spn":Ljava/lang/String;
    .restart local v7    # "spn":Ljava/lang/String;
    :cond_9
    move-object v6, v7

    .end local v7    # "spn":Ljava/lang/String;
    .restart local v6    # "spn":Ljava/lang/String;
    goto/16 :goto_4

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
