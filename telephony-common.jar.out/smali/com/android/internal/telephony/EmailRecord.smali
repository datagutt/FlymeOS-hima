.class public Lcom/android/internal/telephony/EmailRecord;
.super Ljava/lang/Object;
.source "EmailRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final RECORD_ID_BYTES:I = 0x1

.field static final SDBG:Z = false

.field static final SFI_BYTES:I = 0x1


# instance fields
.field public mAdnRecordNumber:I

.field public mAdnSFI:I

.field public mEmailAddress:Ljava/lang/String;

.field public mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/internal/telephony/EmailRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/EmailRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/EmailRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "adnSFI"    # I
    .param p2, "recordNumber"    # I
    .param p3, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 131
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 132
    iput p2, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    .line 133
    iput-object p3, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 117
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    .line 118
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/EmailRecord;->parseRecord([B)V

    .line 119
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B
    .param p3, "isInIAP"    # Z

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 124
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/EmailRecord;->parseRecord(I[BZ)V

    .line 126
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/EmailRecord;-><init>(I[B)V

    .line 112
    return-void
.end method

.method private parseRecord(I[BZ)V
    .locals 7
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B
    .param p3, "EmailPresentInIAP"    # Z

    .prologue
    const/16 v6, 0xff

    const/16 v5, 0xa1

    .line 237
    if-eqz p3, :cond_0

    .line 239
    :try_start_0
    array-length v3, p2

    add-int/lit8 v1, v3, -0x1

    .line 240
    .local v1, "offset":I
    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 243
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, -0x1

    .line 244
    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 247
    const/4 v3, 0x0

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p2, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 267
    .end local v1    # "offset":I
    .local v2, "tempAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/EmailRecord;->replaceTmpAddressIByAt()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    const/16 v3, 0x40

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 284
    :goto_1
    return-void

    .line 250
    .end local v2    # "tempAddress":Ljava/lang/String;
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 251
    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {p2, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "tempAddress":Ljava/lang/String;
    goto :goto_0

    .line 254
    .end local v2    # "tempAddress":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "exc":Ljava/lang/StringIndexOutOfBoundsException;
    if-eqz p3, :cond_1

    .line 260
    iput v6, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 261
    iput v6, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 263
    :cond_1
    const-string v2, ""

    .restart local v2    # "tempAddress":Ljava/lang/String;
    goto :goto_0

    .line 275
    .end local v0    # "exc":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseRecord([B)V
    .locals 3
    .param p1, "record"    # [B

    .prologue
    .line 295
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 296
    .local v0, "offset":I
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 299
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 300
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 303
    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 311
    return-void
.end method

.method private static final replaceTmpAddressIByAt()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public buildEmailString(IZ)[B
    .locals 6
    .param p1, "recordSize"    # I
    .param p2, "EmailPresentInIAP"    # Z

    .prologue
    const/4 v5, 0x0

    .line 182
    new-array v2, p1, [B

    .line 184
    .local v2, "recordString":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 185
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    const/16 v4, 0xff

    if-ge v3, v4, :cond_1

    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    .local v0, "emailAddress":[B
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 194
    if-eqz p2, :cond_1

    .line 197
    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 200
    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 205
    .end local v0    # "emailAddress":[B
    :cond_1
    return-object v2
.end method

.method public clear()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 163
    iput v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 164
    iput v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return-void
.end method
