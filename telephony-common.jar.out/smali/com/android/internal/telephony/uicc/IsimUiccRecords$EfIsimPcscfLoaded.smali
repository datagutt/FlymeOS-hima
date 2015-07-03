.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimPcscfLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const-string v0, "EF_ISIM_PCSCF"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 382
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/internal/telephony/HtcIsimData;->SetPCSCF(Landroid/os/Bundle;)V

    .line 384
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 385
    .local v6, "pcscflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EF_PCSCF record count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 386
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1102(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, "i":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 389
    .local v4, "identity":[B
    # invokes: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->isimTlvToString([B)Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$500([B)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "pcscf":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EF_PCSCF["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 391
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1100(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v5, v7, v1

    .line 394
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {v0, v7, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)V

    .line 395
    .local v0, "addressRecord":Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;
    if-eqz v0, :cond_0

    iget v7, v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddressType:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 397
    iget v7, v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddressType:I

    if-nez v7, :cond_1

    .line 398
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    move v1, v2

    .line 406
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 399
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    iget v7, v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddressType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 400
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    :cond_2
    iget v7, v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddressType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 402
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    .end local v0    # "addressRecord":Lcom/android/internal/telephony/uicc/IsimUiccRecords$PCSCF_Address;
    .end local v2    # "i":I
    .end local v4    # "identity":[B
    .end local v5    # "pcscf":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 410
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCFList:Landroid/os/Bundle;

    const-string v8, "address_type_fqdn"

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v9, v9, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 414
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 415
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCFList:Landroid/os/Bundle;

    const-string v8, "address_type_ipv4"

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v9, v9, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 419
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 420
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCFList:Landroid/os/Bundle;

    const-string v8, "address_type_ipv6"

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v9, v9, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 424
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCFList:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 425
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mPCSCFList:Landroid/os/Bundle;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcIsimData;->SetPCSCF(Landroid/os/Bundle;)V

    .line 428
    :cond_7
    return-void
.end method
