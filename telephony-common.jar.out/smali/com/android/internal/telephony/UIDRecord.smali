.class public Lcom/android/internal/telephony/UIDRecord;
.super Ljava/lang/Object;
.source "UIDRecord.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UIDRecord"


# instance fields
.field public mRecordData:[B

.field public mRecordNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    .line 62
    iput-object p2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    .line 63
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/UIDRecord;-><init>(I[B)V

    .line 58
    return-void
.end method


# virtual methods
.method public buildUIDString(I)[B
    .locals 5
    .param p1, "recordSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 88
    new-array v1, p1, [B

    .line 90
    .local v1, "recordString":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 91
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    iget-object v3, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 98
    const-string v2, "UIDRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uidRecord.mRecordNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 102
    const-string v2, "UIDRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uidRecord.mRecordData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    aget-byte v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    return-object v1
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    return-object v0
.end method
