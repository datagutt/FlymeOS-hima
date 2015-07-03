.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;
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
    name = "EfIsimGbabpLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    const-string v0, "EF_ISIM_GBABP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x0

    .line 438
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B

    .line 439
    invoke-static {v7}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 440
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;

    .line 441
    invoke-static {v7}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 442
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;

    .line 443
    invoke-static {v7}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 446
    :try_start_0
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 447
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 448
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v5, v1, v3

    .line 449
    .local v5, "len":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-array v7, v5, [B

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B

    .line 450
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B

    const/4 v7, 0x0

    invoke-static {v1, v4, v6, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 451
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B

    invoke-static {v6}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 453
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRand = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 454
    add-int/lit8 v3, v5, 0x1

    .line 455
    .end local v4    # "i":I
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v5, v1, v3

    .line 456
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;

    .line 457
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 459
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBtid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 460
    add-int v3, v4, v5

    .line 461
    .end local v4    # "i":I
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v5, v1, v3

    .line 462
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;

    .line 463
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 465
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mKeyLifetime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1    # "data":[B
    .end local v4    # "i":I
    .end local v5    # "len":I
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse GBABP contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
