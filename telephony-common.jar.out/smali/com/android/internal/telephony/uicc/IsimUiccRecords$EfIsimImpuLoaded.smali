.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;
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
    name = "EfIsimImpuLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-string v0, "EF_ISIM_IMPU"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v8, 0x0

    .line 289
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$602(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;

    .line 290
    invoke-static {v8}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPU([Ljava/lang/String;)V

    .line 293
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 294
    .local v5, "impuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EF_IMPU record count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 295
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$602(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 298
    .local v3, "identity":[B
    # invokes: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->isimTlvToString([B)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$500([B)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "impu":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EF_IMPU["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 300
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$600(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v4, v7, v0

    move v0, v1

    .line 301
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 303
    .end local v3    # "identity":[B
    .end local v4    # "impu":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$600(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPU([Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 308
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.movial.gba_initialized"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v6, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
