.class public final Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache_QMI.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;
    }
.end annotation


# static fields
.field private static final ADN_ALPHA_TAG_LENGTH:I = 0x0

.field private static final ADN_NUMBER_LENGTH:I = 0x1

.field private static final ADN_RECORDS_CAPACITY:I = 0x2

.field private static final ANR_ENTRIES_PER_PBK:I = 0x3

.field public static final ANR_ENTRY_INDEX_1:I = 0x0

.field public static final ANR_ENTRY_INDEX_2:I = 0x1

.field static final DBG:Z

.field private static final EMAIL_ENTRIES_PER_PBK:I = 0x4

.field static final ERROR_ADN_FULL:I = 0x10

.field static final ERROR_ANR1_FULL:I = 0x2

.field static final ERROR_ANR2_FULL:I = 0x4

.field static final ERROR_EMAIL_FULL:I = 0x1

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_UNKNOWN:I = 0x8

.field private static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field private static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field private static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field private static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field private static final EVENT_LOAD_PB_ADN_DONE:I = 0x9

.field private static final EVENT_LOAD_PB_ANR_DONE:I = 0xd

.field private static final EVENT_LOAD_PB_CC_DONE:I = 0x16

.field private static final EVENT_LOAD_PB_EMAIL_DONE:I = 0xc

.field private static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field private static final EVENT_LOAD_PB_EXT1_DONE:I = 0x8

.field private static final EVENT_LOAD_PB_IAP_DONE:I = 0xb

.field private static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field private static final EVENT_LOAD_PB_PSC_DONE:I = 0x14

.field private static final EVENT_LOAD_PB_PUID_DONE:I = 0x18

.field private static final EVENT_LOAD_PB_UID_DONE:I = 0xa

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x12

.field private static final EVENT_UPDATE_ANR_EXT1_DONE:I = 0x13

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0x11

.field private static final EVENT_UPDATE_EXT1_DONE:I = 0xf

.field private static final EVENT_UPDATE_IAP_DONE:I = 0x10

.field private static final EVENT_UPDATE_PB_CC_DONE:I = 0x17

.field private static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field private static final EVENT_UPDATE_PB_PSC_DONE:I = 0x15

.field private static final EVENT_UPDATE_PB_PUID_DONE:I = 0x19

.field private static final EVENT_UPDATE_PB_UID_DONE:I = 0xe

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final IAP_ENTRY_ANR_1_INDEX:I = 0x0

.field static final IAP_ENTRY_ANR_2_INDEX:I = 0x1

.field static final IAP_ENTRY_EMAIL_INDEX:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache_QMI"

.field static final MAX_INT_VALUE:J = 0xffffffffL

.field public static final MAX_NUM_ANR_PER_PBK_ENTRY:I = 0x2

.field static final MAX_SHORT_VALUE:I = 0xffff

.field private static final QUERY_SIM_CONTACT_FILE_TIMESTAMP:Ljava/lang/String; = "query_sim_contact_file_timestamp"

.field static final SDBG:Z


# instance fields
.field m2GPhonebook:Z

.field mADNRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mANR_swap:Z

.field mAnrFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAnrRecordLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AnrRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mChangeCounter:I

.field mDropSIMTimeStamp:J

.field mEmailFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEmailRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mExt1RecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field mIAPRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IAPRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mIap_Updatedata:[B

.field mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPSC:J

.field mPUID:I

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mRecordNums:I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAnr:[Z

.field mSupportCC:Z

.field mSupportEmail:Z

.field mSupportPSC:Z

.field mSupportPUID:Z

.field private mTotal:I

.field mUIDRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UIDRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field misloading:Z

.field pollingContext:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 287
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 243
    iput v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 245
    iput v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 253
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 259
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    .line 261
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 268
    iput v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 270
    iput-wide v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 272
    iput v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 274
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 282
    iput-wide v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 289
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 290
    return-void
.end method

.method private addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 8
    .param p1, "anrNumber"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;
    .param p3, "anrEntryIndex"    # I

    .prologue
    const/4 v4, 0x1

    .line 2471
    const-string v0, "addAnrRecord()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2472
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_1

    .line 2473
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2476
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v0, v1

    .line 2477
    .local v7, "num":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v7, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2478
    .local v3, "efid":I
    if-eqz v3, :cond_1

    .line 2480
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v7

    sub-int v6, v0, v1

    .line 2482
    .local v6, "adnRecordNumber":I
    const/4 v2, 0x0

    .line 2483
    .local v2, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2484
    invoke-virtual {p0, v7, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v2

    .line 2485
    if-eqz v2, :cond_0

    .line 2486
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 2510
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 2511
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2512
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2513
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2514
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2516
    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v7, p3, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2530
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v3    # "efid":I
    .end local v6    # "adnRecordNumber":I
    .end local v7    # "num":I
    :cond_1
    :goto_1
    return-void

    .line 2490
    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .restart local v3    # "efid":I
    .restart local v6    # "adnRecordNumber":I
    .restart local v7    # "num":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2491
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 2493
    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v6, v0, :cond_3

    .line 2496
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    goto :goto_0

    .line 2499
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2502
    :cond_4
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrindex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2506
    :cond_5
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2524
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "Can not find empty ANR record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I
    .locals 7
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "num"    # I
    .param p5, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2196
    const/4 v2, 0x0

    .line 2197
    .local v2, "error":I
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2199
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 2264
    :goto_0
    return v3

    .line 2204
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v5, :cond_1

    move v3, v4

    .line 2205
    goto :goto_0

    .line 2208
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 2209
    goto :goto_0

    .line 2212
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2213
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2214
    iget v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-nez v4, :cond_3

    .line 2215
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v1

    .line 2216
    .local v1, "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    if-nez v1, :cond_3

    .line 2217
    add-int/lit8 v2, v2, 0x1

    .line 2223
    .end local v1    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2224
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2226
    iget-object v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, v3

    if-nez v4, :cond_4

    .line 2227
    invoke-virtual {p0, p4, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2228
    .local v0, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_4

    .line 2229
    add-int/lit8 v2, v2, 0x2

    .line 2235
    .end local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2236
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 2238
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_5

    .line 2239
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2240
    .restart local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_5

    .line 2241
    add-int/lit8 v2, v2, 0x4

    .end local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_5
    :goto_1
    move v3, v2

    .line 2264
    goto :goto_0

    .line 2246
    :cond_6
    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 2247
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_8

    .line 2249
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_9

    .line 2250
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2251
    .restart local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    if-eqz v0, :cond_8

    .line 2252
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2259
    .end local v0    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_8
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    if-ne v3, v6, :cond_5

    .line 2260
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 2255
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    goto :goto_2
.end method

.method private checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "number1"    # Ljava/lang/String;
    .param p3, "number2"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2b

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 2161
    const/4 v0, 0x0

    .line 2163
    .local v0, "error":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2164
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 2191
    .end local v0    # "error":I
    :cond_0
    :goto_0
    return v0

    .line 2169
    .restart local v0    # "error":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v3, :cond_4

    .line 2170
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v2, :cond_3

    move v0, v1

    .line 2171
    goto :goto_0

    .line 2174
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2175
    goto :goto_0

    .line 2179
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2180
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 2181
    goto :goto_0

    .line 2185
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2186
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 2187
    goto :goto_0
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    .line 3333
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3335
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleExt1loaded(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1531
    const-string v4, "handleExt1loaded"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1534
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1535
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 1537
    .local v1, "ext1Data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1538
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1539
    .local v2, "ext1DataSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 1540
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1541
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v6, v4}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->parseFromEf(I[B)Lcom/android/internal/telephony/uicc/HtcExt1Record;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1545
    .end local v2    # "ext1DataSize":I
    .end local v3    # "i":I
    :cond_0
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Failed to load EF_EXT1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_1
    return-void
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1551
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    if-eq v3, v4, :cond_1

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1556
    const-string v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1558
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1559
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1561
    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1563
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 1564
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_0

    .line 1566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1570
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1572
    .local v0, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1574
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1575
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1569
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1559
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private notifySimPbkWaiter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1516
    const-string v2, "notifySimPbkWaiter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1518
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1519
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 1520
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1521
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1525
    const/4 v2, -0x1

    invoke-static {v1, v3, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1528
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 7
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    const/4 v6, 0x0

    .line 2767
    if-nez p1, :cond_0

    .line 2782
    :goto_0
    return-void

    .line 2771
    :cond_0
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyWaiters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 2773
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2774
    .local v2, "waiter":Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2776
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2777
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2772
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2781
    .end local v2    # "waiter":Landroid/os/Message;
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0
.end method

.method private parserIAP(II[Z)V
    .locals 14
    .param p1, "num"    # I
    .param p2, "tag"    # I
    .param p3, "searchlist"    # [Z

    .prologue
    .line 3394
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parserIAP num:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3395
    if-nez p3, :cond_1

    .line 3587
    :cond_0
    :goto_0
    return-void

    .line 3399
    :cond_1
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v12, :cond_0

    .line 3403
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 3407
    move-object/from16 v0, p3

    array-length v12, v0

    if-eqz v12, :cond_0

    .line 3411
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, p1, :cond_0

    .line 3415
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 3423
    :sswitch_0
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3432
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v12, p1, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v4

    .line 3433
    .local v4, "efid":I
    if-eqz v4, :cond_8

    .line 3434
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12, p1, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v10

    .line 3435
    .local v10, "position":I
    if-lez v10, :cond_8

    .line 3436
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3437
    .local v11, "total":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v11, :cond_8

    .line 3438
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IAPRecord;

    .line 3439
    .local v7, "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    if-eqz v7, :cond_3

    .line 3440
    invoke-virtual {v7}, Lcom/android/internal/telephony/IAPRecord;->getBytes()[B

    move-result-object v3

    .line 3441
    .local v3, "data":[B
    if-eqz v3, :cond_3

    array-length v12, v3

    if-gt v10, v12, :cond_3

    .line 3442
    add-int/lit8 v12, v10, -0x1

    aget-byte v12, v3, v12

    and-int/lit16 v8, v12, 0xff

    .line 3443
    .local v8, "index":I
    const/16 v12, 0xff

    if-eq v8, v12, :cond_3

    .line 3444
    add-int/lit8 v8, v8, -0x1

    .line 3445
    if-ltz v8, :cond_3

    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v8, v12, :cond_3

    aget-boolean v12, p3, v8

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 3447
    sparse-switch p2, :sswitch_data_1

    .line 3437
    .end local v3    # "data":[B
    .end local v8    # "index":I
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3417
    .end local v4    # "efid":I
    .end local v6    # "i":I
    .end local v7    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .end local v10    # "position":I
    .end local v11    # "total":I
    :sswitch_1
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_0

    .line 3449
    .restart local v3    # "data":[B
    .restart local v4    # "efid":I
    .restart local v6    # "i":I
    .restart local v7    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .restart local v8    # "index":I
    .restart local v10    # "position":I
    .restart local v11    # "total":I
    :sswitch_2
    const/4 v5, 0x0

    .line 3450
    .local v5, "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge p1, v12, :cond_4

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_4

    .line 3453
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    check-cast v5, Lcom/android/internal/telephony/EmailRecord;

    .line 3456
    .restart local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    :cond_4
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3458
    iget v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v12, p1

    add-int v1, v12, v6

    .line 3459
    .local v1, "adnRecNum":I
    if-ltz v1, :cond_3

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 3461
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 3463
    .local v9, "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v9, :cond_3

    .line 3464
    const/4 v12, 0x0

    aput-boolean v12, p3, v8

    .line 3465
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3466
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3469
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "emailEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3472
    const-string v12, "Becasue the corresponding pbkEntry entry is empty, clear email entry."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v5}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    goto/16 :goto_2

    .line 3476
    :cond_5
    iget v12, v5, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    iput v12, v9, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 3477
    iget-object v12, v5, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    iput-object v12, v9, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 3478
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3481
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.indexEmail = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3484
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.email = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3493
    .end local v1    # "adnRecNum":I
    .end local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    .end local v9    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :sswitch_3
    const/4 v2, 0x0

    .line 3496
    .local v2, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge p1, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p2

    if-ge v0, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_6

    .line 3501
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 3505
    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3506
    iget v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v12, p1

    add-int v1, v12, v6

    .line 3507
    .restart local v1    # "adnRecNum":I
    if-ltz v1, :cond_3

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 3509
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 3511
    .restart local v9    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v9, :cond_3

    .line 3512
    const/4 v12, 0x0

    aput-boolean v12, p3, v8

    .line 3513
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3514
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3517
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ANREntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3520
    const-string v12, "Becasue the corresponding pbkEntry entry is empty, clear ANR entry."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    goto/16 :goto_2

    .line 3524
    :cond_7
    iget-object v12, v9, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    iget v13, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    aput v13, v12, p2

    .line 3525
    iget-object v12, v9, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    iget-object v13, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    aput-object v13, v12, p2

    .line 3526
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3529
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.adnumber["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3534
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbkEntry.anr = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3551
    .end local v1    # "adnRecNum":I
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v3    # "data":[B
    .end local v6    # "i":I
    .end local v7    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .end local v8    # "index":I
    .end local v9    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v10    # "position":I
    .end local v11    # "total":I
    :cond_8
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_0

    .line 3569
    :sswitch_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v6, v12, :cond_0

    .line 3570
    aget-boolean v12, p3, v6

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 3571
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge p1, v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p2

    if-ge v0, v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v6, v12, :cond_9

    .line 3575
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 3576
    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    if-eqz v2, :cond_9

    .line 3577
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not find the corresponding pbkEntry entry, clear ANR entry num: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3579
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 3569
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3553
    .end local v6    # "i":I
    :sswitch_5
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v6, v12, :cond_0

    .line 3554
    aget-boolean v12, p3, v6

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 3555
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge p1, v12, :cond_a

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v6, v12, :cond_a

    .line 3557
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/EmailRecord;

    .line 3558
    .restart local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    if-eqz v5, :cond_a

    .line 3559
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not find the corresponding pbkEntry entry, clear email entry num: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3561
    invoke-virtual {v5}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 3553
    .end local v5    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3415
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3447
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0xca -> :sswitch_2
    .end sparse-switch

    .line 3551
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0xca -> :sswitch_5
    .end sparse-switch
.end method

.method private pollPBList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1668
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    .line 1669
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aput v5, v3, v5

    .line 1671
    const/4 v2, 0x0

    .local v2, "start":I
    const/4 v0, 0x0

    .line 1673
    .local v0, "end":I
    const-string v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1675
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-ge v0, v3, :cond_2

    .line 1676
    add-int/lit8 v2, v0, 0x1

    .line 1677
    add-int/lit8 v0, v2, 0xa

    .line 1679
    iget v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-le v0, v3, :cond_0

    .line 1680
    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1682
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 1683
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1685
    .local v1, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_1

    .line 1686
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    .line 1691
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1688
    :cond_1
    const-string v3, "mPhone is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1693
    .end local v1    # "response":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2886
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 2785
    if-nez p1, :cond_1

    .line 2796
    :cond_0
    :goto_0
    return-void

    .line 2789
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2790
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2792
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2793
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 2799
    if-nez p1, :cond_1

    .line 2809
    :cond_0
    :goto_0
    return-void

    .line 2803
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2805
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2806
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private setLocalMemberToDefault()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3368
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 3369
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 3370
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 3371
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 3372
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 3373
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v2

    .line 3374
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v1

    .line 3375
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 3376
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 3377
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 3378
    iput v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 3379
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 3380
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 3381
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 3382
    return-void
.end method

.method private setSIMSystemProperties(II)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .prologue
    .line 3341
    const/4 v0, 0x0

    .line 3343
    .local v0, "propertyName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3362
    :goto_0
    if-eqz v0, :cond_0

    .line 3363
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    :cond_0
    return-void

    .line 3345
    :pswitch_0
    const-string v0, "gsm.usim.alpha-tag.length"

    .line 3346
    goto :goto_0

    .line 3348
    :pswitch_1
    const-string v0, "gsm.usim.number.length"

    .line 3349
    goto :goto_0

    .line 3351
    :pswitch_2
    const-string v0, "gsm.adn.records.capacity"

    .line 3352
    goto :goto_0

    .line 3354
    :pswitch_3
    const-string v0, "gsm.usim.anr.max-no"

    .line 3355
    goto :goto_0

    .line 3357
    :pswitch_4
    const-string v0, "gsm.usim.email.max-no"

    goto :goto_0

    .line 3343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setSIMSystemPropertiesToDefault()V
    .locals 3

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.usim.alpha-tag.length"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.usim.number.length"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.adn.records.capacity"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.usim.anr.max-no"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.usim.email.max-no"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.usim.email.length"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    return-void
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2145
    if-nez p0, :cond_0

    .line 2146
    const/4 v4, 0x0

    .line 2157
    :goto_0
    return-object v4

    .line 2148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2149
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2151
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2152
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2153
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator_FDN(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2154
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2157
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2640
    const/4 v2, 0x0

    .line 2641
    .local v2, "efid":I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v5, v6

    .line 2642
    .local v3, "num":I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v6, v3

    sub-int v1, v5, v6

    .line 2644
    .local v1, "adnRecordNumber":I
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    if-nez v5, :cond_1

    .line 2645
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v5, :cond_0

    .line 2646
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2647
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v6, 0xc0

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2654
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2655
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2656
    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v1, v5, :cond_2

    .line 2657
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    .line 2658
    .local v0, "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    iput-object p1, v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 2659
    iput-object p2, v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->number:Ljava/lang/String;

    .line 2662
    iget v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    rem-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 2663
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {v5, v6, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2665
    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {p0, v5, v6, v3, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2667
    .local v4, "res":Landroid/os/Message;
    iget v5, v0, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->recordNumber:I

    invoke-virtual {p0, v5, v0, v2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateADNByIndex(ILcom/android/internal/telephony/uicc/HtcAdnRecord;ILandroid/os/Message;)V

    .line 2680
    .end local v0    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .end local v4    # "res":Landroid/os/Message;
    :goto_1
    return-void

    .line 2651
    :cond_1
    const/16 v2, 0x6f3a

    goto :goto_0

    .line 2669
    :cond_2
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "adnRecordNumber out of mADNRecordList.get(num).size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2673
    :cond_3
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "num out of mADNRecordList.size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2677
    :cond_4
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "The efid of ADN is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 11
    .param p1, "anrNumber"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;
    .param p3, "anrEntryIndex"    # I

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x12

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAnrRecord()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2537
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v0, v1

    .line 2538
    .local v8, "num":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v8, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2539
    .local v3, "efid":I
    if-eqz v3, :cond_0

    .line 2541
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v8

    sub-int v6, v0, v1

    .line 2543
    .local v6, "adnRecordNumber":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2545
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2546
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2547
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_0

    .line 2549
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2552
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2555
    .local v2, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 2556
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2563
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aput v10, v0, p3

    .line 2564
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 2566
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2567
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2568
    .local v7, "index":I
    if-ltz v7, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 2637
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v3    # "efid":I
    .end local v6    # "adnRecordNumber":I
    .end local v7    # "index":I
    .end local v8    # "num":I
    :cond_0
    :goto_0
    return-void

    .line 2573
    .restart local v3    # "efid":I
    .restart local v6    # "adnRecordNumber":I
    .restart local v8    # "num":I
    :cond_1
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2578
    :cond_2
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2582
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2588
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_9

    .line 2591
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2592
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2593
    .restart local v7    # "index":I
    if-ltz v7, :cond_5

    .line 2594
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 2598
    .end local v7    # "index":I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    .line 2599
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 2600
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_6

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_6

    .line 2603
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2605
    .restart local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    iput v10, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2606
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2607
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2608
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2610
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2618
    .end local v2    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2622
    :cond_7
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2626
    :cond_8
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2631
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    goto/16 :goto_0
.end method

.method private updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V
    .locals 11
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/internal/telephony/PhoneBookEntry;

    .prologue
    const/16 v10, 0xc0

    const/16 v9, 0x11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2268
    const-string v4, "updateEmailRecord()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2269
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v4, :cond_0

    .line 2270
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2271
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v4, v5

    .line 2272
    .local v3, "num":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v5, 0xca

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 2273
    .local v1, "efid":I
    if-eqz v1, :cond_0

    .line 2274
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v5, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 2275
    .local v0, "adnRecordNumber":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2277
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2278
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    .line 2279
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_1

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_1

    .line 2281
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2283
    .local v2, "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 2284
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    .line 2290
    iput v7, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 2291
    const-string v4, ""

    iput-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 2293
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2294
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v8

    .line 2370
    .end local v0    # "adnRecordNumber":I
    .end local v1    # "efid":I
    .end local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    .end local v3    # "num":I
    :cond_0
    :goto_0
    return-void

    .line 2297
    .restart local v0    # "adnRecordNumber":I
    .restart local v1    # "efid":I
    .restart local v3    # "num":I
    :cond_1
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2301
    :cond_2
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2304
    :cond_3
    const/4 v2, 0x0

    .line 2307
    .restart local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 2308
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2309
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2311
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2312
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_5

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_5

    .line 2314
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2316
    .restart local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2317
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2318
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2321
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2328
    :cond_5
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2331
    :cond_6
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2336
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 2337
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v2

    .line 2338
    if-eqz v2, :cond_8

    .line 2339
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2355
    :cond_8
    :goto_1
    if-eqz v2, :cond_c

    .line 2356
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2357
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2358
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2360
    iget v4, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2342
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 2343
    if-lez v0, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_a

    .line 2345
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .restart local v2    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    goto :goto_1

    .line 2348
    :cond_a
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2351
    :cond_b
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2363
    :cond_c
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Can not find empty email record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateIAP(IZ)V
    .locals 15
    .param p1, "index"    # I
    .param p2, "clear"    # Z

    .prologue
    .line 2373
    const-string v11, "updateIAP()"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2374
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2378
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v11, :cond_3

    .line 2379
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2380
    add-int/lit8 v11, p1, -0x1

    iget v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v11, v12

    .line 2382
    .local v7, "num":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xc1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2384
    .local v3, "efid_iap":I
    if-eqz v3, :cond_9

    .line 2385
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 2386
    iget v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v11, v7

    sub-int v9, p1, v11

    .line 2388
    .local v9, "recordNumber":I
    if-lez v9, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v9, v11, :cond_7

    .line 2390
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IAPRecord;

    .line 2392
    .local v5, "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    new-array v10, v11, [B

    .line 2394
    .local v10, "recordString":[B
    const/4 v1, 0x0

    .line 2395
    .local v1, "doUpdate":Z
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 2396
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 2397
    const/4 v11, -0x1

    aput-byte v11, v10, v4

    .line 2396
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2399
    :cond_1
    const/4 v1, 0x1

    .line 2443
    .end local v4    # "i":I
    :cond_2
    :goto_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 2444
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "num ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doUpdate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " iapRecord.mRecordNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2447
    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2450
    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v7, v12, v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v5, v3, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V

    .line 2467
    .end local v1    # "doUpdate":Z
    .end local v3    # "efid_iap":I
    .end local v5    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .end local v7    # "num":I
    .end local v9    # "recordNumber":I
    .end local v10    # "recordString":[B
    :cond_3
    :goto_2
    return-void

    .line 2401
    .restart local v1    # "doUpdate":Z
    .restart local v3    # "efid_iap":I
    .restart local v5    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .restart local v7    # "num":I
    .restart local v9    # "recordNumber":I
    .restart local v10    # "recordString":[B
    :cond_4
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v11, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2403
    iget-boolean v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 2405
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xca

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2407
    .local v2, "efid":I
    if-eqz v2, :cond_5

    .line 2408
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2409
    .local v8, "position":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    if-eqz v11, :cond_5

    if-lez v8, :cond_5

    .line 2411
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 2412
    const/4 v1, 0x1

    .line 2417
    .end local v2    # "efid":I
    .end local v8    # "position":I
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2419
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2420
    .restart local v2    # "efid":I
    if-eqz v2, :cond_6

    .line 2421
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2422
    .restart local v8    # "position":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2423
    .local v6, "index_iap":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_6

    if-lez v8, :cond_6

    .line 2424
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2425
    const/4 v1, 0x1

    .line 2430
    .end local v2    # "efid":I
    .end local v6    # "index_iap":I
    .end local v8    # "position":I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x1

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 2432
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2433
    .restart local v2    # "efid":I
    if-eqz v2, :cond_2

    .line 2434
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2435
    .restart local v8    # "position":I
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2436
    .restart local v6    # "index_iap":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_2

    if-lez v8, :cond_2

    .line 2437
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2438
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2454
    .end local v1    # "doUpdate":Z
    .end local v2    # "efid":I
    .end local v5    # "iapRecord":Lcom/android/internal/telephony/IAPRecord;
    .end local v6    # "index_iap":I
    .end local v8    # "position":I
    .end local v10    # "recordString":[B
    :cond_7
    const-string v11, "HtcIccPbkEntryCache_QMI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "out of mIAPRecordList.get(num).size()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2458
    .end local v9    # "recordNumber":I
    :cond_8
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "num out of mIAPRecordList.size()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2461
    :cond_9
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "no EF-IAP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updatePSCRecord(ZII)V
    .locals 12
    .param p1, "addpbk"    # Z
    .param p2, "num"    # I
    .param p3, "index"    # I

    .prologue
    .line 2040
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 2042
    .local v3, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v7, 0x0

    .line 2043
    .local v7, "updatePSC":Z
    const/4 v5, 0x0

    .line 2044
    .local v5, "resetAllUID":Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2045
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 2047
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    const v9, 0xffff

    if-le v8, v9, :cond_0

    .line 2048
    const/4 v7, 0x1

    .line 2049
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 2052
    :cond_0
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 2053
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_1

    .line 2054
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 2055
    .local v4, "offset":I
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 2053
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2057
    .end local v4    # "offset":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update Change Counter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2059
    if-eqz v3, :cond_2

    .line 2060
    const/16 v8, 0x4f23

    const/16 v9, 0x17

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2064
    .end local v0    # "data":[B
    .end local v2    # "i":I
    :cond_2
    const/4 v8, 0x1

    if-ne p1, v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 2065
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 2067
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    const v9, 0xffff

    if-le v8, v9, :cond_3

    .line 2069
    const/4 v7, 0x1

    .line 2070
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 2073
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 2074
    .restart local v0    # "data":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    const/4 v8, 0x2

    if-ge v2, v8, :cond_4

    .line 2075
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 2076
    .restart local v4    # "offset":I
    iget v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 2074
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2078
    .end local v4    # "offset":I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update mPUID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2080
    if-eqz v3, :cond_5

    .line 2081
    const/16 v8, 0x4f24

    const/16 v9, 0x19

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2085
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v8

    if-ge p2, v8, :cond_c

    .line 2086
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v9, 0xc9

    invoke-virtual {v8, p2, v9}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 2087
    .local v1, "efid":I
    if-eqz v1, :cond_b

    .line 2088
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p2, v8, :cond_a

    .line 2089
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p3, v8, :cond_9

    .line 2090
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/UIDRecord;

    .line 2091
    .local v6, "uidRecord":Lcom/android/internal/telephony/UIDRecord;
    array-length v8, v0

    iget-object v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v9, v9

    if-ne v8, v9, :cond_7

    .line 2092
    const/4 v2, 0x0

    :goto_2
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v8, v8

    if-ge v2, v8, :cond_6

    .line 2093
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    aget-byte v9, v0, v2

    aput-byte v9, v8, v2

    .line 2092
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2095
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/UIDRecordLoader;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    const/16 v10, 0xe

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v1, v9, v6, v10}, Lcom/android/internal/telephony/UIDRecordLoader;->updateEF(IILcom/android/internal/telephony/UIDRecord;Landroid/os/Message;)V

    .line 2123
    .end local v0    # "data":[B
    .end local v1    # "efid":I
    .end local v2    # "i":I
    .end local v6    # "uidRecord":Lcom/android/internal/telephony/UIDRecord;
    :cond_7
    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 2124
    iget-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 2125
    iget-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 2126
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 2128
    :cond_8
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 2129
    .restart local v0    # "data":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    const/4 v8, 0x4

    if-ge v2, v8, :cond_d

    .line 2130
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 2131
    .restart local v4    # "offset":I
    iget-wide v8, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    ushr-long/2addr v8, v4

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 2129
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2100
    .end local v4    # "offset":I
    .restart local v1    # "efid":I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "out of EFUID index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2103
    :cond_a
    const-string v8, "num out of mUIDRecordList().size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2106
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find EFUID id num:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2109
    .end local v1    # "efid":I
    :cond_c
    const-string v8, "num out of mPBRParser size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 2134
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update PSC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2136
    if-eqz v3, :cond_e

    .line 2137
    const/16 v8, 0x4f22

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2140
    .end local v0    # "data":[B
    .end local v2    # "i":I
    :cond_e
    return-void
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "number1"    # Ljava/lang/String;
    .param p4, "number2"    # Ljava/lang/String;
    .param p5, "emailAddress"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1714
    const-string v17, "addPBKEntry()"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1715
    const-wide/16 v10, 0x0

    .line 1716
    .local v10, "index":J
    const/4 v5, 0x0

    .line 1718
    .local v5, "error":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1719
    const-string v17, "mPhone null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v12, v10

    .line 1824
    .end local v10    # "index":J
    .local v12, "index":J
    :goto_0
    return-wide v12

    .line 1724
    .end local v12    # "index":J
    .restart local v10    # "index":J
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-byte v18, v17, v7

    .line 1724
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1728
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1729
    .local v14, "phonenumber":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1730
    .local v15, "phonenumber1":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1732
    .local v16, "phonenumber2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1734
    if-eqz v5, :cond_2

    .line 1735
    const-string v17, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v12, v10

    .line 1736
    .end local v10    # "index":J
    .restart local v12    # "index":J
    goto :goto_0

    .line 1740
    .end local v12    # "index":J
    .restart local v10    # "index":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    .line 1743
    .local v8, "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    sget-boolean v17, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v17, :cond_4

    .line 1745
    const-string v17, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :cond_3
    :goto_2
    move-wide v12, v10

    .line 1824
    .end local v10    # "index":J
    .restart local v12    # "index":J
    goto :goto_0

    .line 1750
    .end local v12    # "index":J
    .restart local v10    # "index":J
    :cond_4
    const/4 v4, 0x0

    .line 1752
    .local v4, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p5

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;
    :try_end_0
    .catch Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1772
    :goto_3
    if-eqz v4, :cond_3

    .line 1773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v17, v0

    if-gtz v17, :cond_5

    .line 1774
    const-string v17, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1753
    :catch_0
    move-exception v6

    .line 1754
    .local v6, "ex":Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;
    iget v0, v6, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;->mError:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1768
    :pswitch_0
    const-string v17, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_3

    .line 1756
    :pswitch_1
    const-string v17, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_3

    .line 1765
    :pswitch_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MemoryFull:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v6, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;->mError:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_3

    .line 1776
    .end local v6    # "ex":Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;
    :cond_5
    iget v0, v4, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v18, v0

    div-int v9, v17, v18

    .line 1778
    .local v9, "num":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1779
    move-object/from16 v16, v15

    .line 1780
    const-string v15, ""

    .line 1786
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1787
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1793
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-boolean v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1794
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v4, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1797
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-boolean v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1798
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1804
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1805
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-boolean v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-boolean v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1807
    :cond_a
    iget v0, v4, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1814
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v14, v4, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1816
    const/16 v17, 0x1

    iget v0, v4, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    .line 1818
    iget v0, v4, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v10, v0

    goto/16 :goto_2

    .line 1754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method checkSupportANR(I)Z
    .locals 1
    .param p1, "anrEntryIndex"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method checkSupportEmail()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    return v0
.end method

.method convertEventToTag(II)I
    .locals 1
    .param p1, "event"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 3207
    packed-switch p1, :pswitch_data_0

    .line 3228
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3210
    :pswitch_0
    const/16 v0, 0xc9

    goto :goto_0

    .line 3213
    :pswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 3215
    :pswitch_2
    const/16 v0, 0xc1

    goto :goto_0

    .line 3217
    :pswitch_3
    const/16 v0, 0xca

    goto :goto_0

    .line 3219
    :pswitch_4
    const/16 v0, 0xc2

    goto :goto_0

    .line 3221
    :pswitch_5
    if-nez p2, :cond_1

    .line 3223
    const/4 v0, 0x0

    goto :goto_0

    .line 3224
    :cond_1
    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3207
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 9
    .param p1, "recordNumber"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1841
    const-string v4, "deletePBKEntry()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1843
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1844
    const-string v4, "mPhone null"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1848
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1851
    .local v1, "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_1

    .line 1853
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1908
    :goto_0
    return-void

    .line 1858
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 1859
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1861
    .local v0, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_3

    .line 1862
    :cond_2
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1867
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_4

    .line 1868
    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1874
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-ne v4, v6, :cond_5

    .line 1875
    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1878
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_6

    .line 1879
    invoke-direct {p0, v8, v0, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1885
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1887
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_8

    .line 1889
    :cond_7
    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1896
    :cond_8
    const/4 v2, 0x0

    .line 1897
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1898
    .local v3, "number":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0, p2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1900
    invoke-direct {p0, v7, v7, v7}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto :goto_0

    .line 1904
    .end local v0    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_9
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "mSimPbkEntryList = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3257
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3258
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 3259
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3263
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3264
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 3268
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 3269
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 3270
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    const/4 v2, 0x0

    .local v2, "msgNum":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 3272
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 3273
    .local v3, "response":Landroid/os/Message;
    if-eqz v3, :cond_2

    .line 3274
    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    .line 3275
    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 3277
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3271
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3282
    .end local v2    # "msgNum":I
    .end local v3    # "response":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2908
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "dropSimPbkEntries()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 2912
    const-string v1, "HtcIccPbkEntryCache_QMI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDropSIMTimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->dispose()V

    .line 2916
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setLocalMemberToDefault()V

    .line 2918
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemPropertiesToDefault()V

    .line 2920
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 2921
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2922
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 2925
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2926
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2927
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 2929
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2930
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2933
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2934
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2938
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2939
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2940
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 2944
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 2945
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2949
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v1, :cond_6

    .line 2950
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->reset()V

    .line 2955
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 2956
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2959
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 2960
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2963
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 2964
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2968
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 2969
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2972
    :cond_a
    return-void
.end method

.method getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;
    .locals 4
    .param p1, "num"    # I
    .param p2, "anrEntryIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 2746
    const/4 v0, 0x0

    .line 2748
    .local v0, "entry":Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2762
    :goto_0
    return-object v2

    .line 2750
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    move-object v2, v3

    .line 2751
    goto :goto_0

    .line 2753
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2754
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/internal/telephony/AnrRecord;
    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    .line 2756
    .restart local v0    # "entry":Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 2757
    goto :goto_0

    .line 2753
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 2762
    goto :goto_0
.end method

.method getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;
    .locals 4
    .param p1, "num"    # I

    .prologue
    const/4 v3, 0x0

    .line 2727
    const/4 v0, 0x0

    .line 2729
    .local v0, "entry":Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2742
    :goto_0
    return-object v2

    .line 2733
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2734
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/internal/telephony/EmailRecord;
    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    .line 2736
    .restart local v0    # "entry":Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 2737
    goto :goto_0

    .line 2733
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 2742
    goto :goto_0
.end method

.method getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 10
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;
    .param p3, "emailaddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    .line 2684
    const/4 v6, 0x1

    .line 2685
    .local v6, "adn_full":Z
    const/4 v7, 0x0

    .line 2686
    .local v7, "error":I
    const/4 v5, 0x0

    .line 2690
    .local v5, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v0, :cond_0

    .line 2691
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "mRecordNums <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;-><init>(I)V

    throw v0

    .line 2693
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2695
    :cond_1
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "mSimPbkEntryList == null || mSimPbkEntryList.size() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;-><init>(I)V

    throw v0

    .line 2698
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 2699
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    check-cast v5, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 2700
    .restart local v5    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    iget v0, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v4, v0, v1

    .line 2701
    .local v4, "num":I
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2702
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2703
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v7

    .line 2704
    if-nez v7, :cond_3

    .line 2705
    return-object v5

    .line 2707
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_5

    .line 2708
    iget v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    add-int/2addr v0, v8

    iget v1, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    sub-int v8, v0, v1

    .line 2698
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2717
    .end local v4    # "num":I
    :cond_5
    const/4 v0, 0x1

    if-ne v6, v0, :cond_6

    .line 2718
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "IccPbk: ADN null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;-><init>(I)V

    throw v0

    .line 2721
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccPbk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;-><init>(I)V

    throw v0
.end method

.method getIAPIndex(I)I
    .locals 1
    .param p1, "anrEntryIndex"    # I

    .prologue
    .line 3233
    packed-switch p1, :pswitch_data_0

    .line 3239
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3235
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3237
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getNextEvent(III)I
    .locals 5
    .param p1, "event"    # I
    .param p2, "num"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 3169
    const/4 v0, 0x0

    .line 3170
    .local v0, "nextEvent":I
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v1

    .line 3171
    .local v1, "tag":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_0

    .line 3172
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 3173
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move p1, v0

    .line 3203
    .end local p1    # "event":I
    :cond_1
    :goto_1
    return p1

    .line 3178
    .restart local p1    # "event":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3181
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-eqz v2, :cond_3

    .line 3182
    const/16 p1, 0xb

    goto :goto_1

    .line 3185
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    .line 3187
    goto :goto_0

    .line 3195
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-nez v2, :cond_1

    .line 3198
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    goto :goto_0

    .line 3173
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 314
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    packed-switch v43, :pswitch_data_0

    .line 1513
    :cond_0
    :goto_0
    return-void

    .line 316
    :pswitch_0
    const-string v43, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    if-eqz v43, :cond_3

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v27

    .line 322
    .local v27, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v27, :cond_1

    .line 323
    const/16 v43, 0x4f22

    const/16 v44, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v44

    move-object/from16 v0, v27

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 336
    .end local v27    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_0

    .line 337
    new-instance v36, Landroid/os/Bundle;

    invoke-direct/range {v36 .. v36}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v36, "queryTimeStamp":Landroid/os/Bundle;
    const-string v43, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 340
    new-instance v43, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v45, v0

    invoke-direct/range {v43 .. v45}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v44, 0x6f4a

    const/16 v45, 0x8

    const/16 v46, 0x0

    const/16 v47, 0x6f4a

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 328
    .end local v36    # "queryTimeStamp":Landroid/os/Bundle;
    :cond_2
    const-string v43, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 329
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 333
    :cond_3
    const-string v43, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 334
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 349
    :pswitch_1
    const-string v43, "EVENT_LOAD_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 351
    .local v14, "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_5

    .line 352
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [B

    move-object/from16 v16, v43

    check-cast v16, [B

    .line 353
    .local v16, "data":[B
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_4

    .line 354
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Phonebook Synchronisation Counter: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 356
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x10

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 357
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 364
    .end local v16    # "data":[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_0

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v27

    .line 367
    .restart local v27    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v27, :cond_0

    .line 368
    const/16 v43, 0x4f23

    const/16 v44, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v44

    move-object/from16 v0, v27

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 359
    .end local v27    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v16    # "data":[B
    :cond_4
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 362
    .end local v16    # "data":[B
    :cond_5
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 376
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v43, "EVENT_UPDATE_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 378
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 379
    const-string v43, "Update PB_PCS failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    const-string v43, "EVENT_LOAD_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 386
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_7

    .line 387
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [B

    move-object/from16 v16, v43

    check-cast v16, [B

    .line 388
    .restart local v16    # "data":[B
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_6

    .line 389
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Change Counter: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 390
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x10

    invoke-static/range {v43 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 391
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 398
    .end local v16    # "data":[B
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_0

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v27

    .line 401
    .restart local v27    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v27, :cond_0

    .line 402
    const/16 v43, 0x4f24

    const/16 v44, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v44

    move-object/from16 v0, v27

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 393
    .end local v27    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v16    # "data":[B
    :cond_6
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 396
    .end local v16    # "data":[B
    :cond_7
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 410
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string v43, "EVENT_UPDATE_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 413
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 414
    const-string v43, "Update PB_CC failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    const-string v43, "EVENT_LOAD_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 422
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_9

    .line 423
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [B

    move-object/from16 v16, v43

    check-cast v16, [B

    .line 424
    .restart local v16    # "data":[B
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_8

    .line 425
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Previous Unique Identifier: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 426
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x10

    invoke-static/range {v43 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 427
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 435
    .end local v16    # "data":[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0xc2

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v18

    .line 438
    .local v18, "efid":I
    if-eqz v18, :cond_a

    .line 439
    const/16 v43, 0x8

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 429
    .end local v18    # "efid":I
    .restart local v16    # "data":[B
    :cond_8
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 432
    .end local v16    # "data":[B
    :cond_9
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 441
    .restart local v18    # "efid":I
    :cond_a
    const/16 v43, 0x1

    const/16 v44, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 442
    const/16 v43, 0x9

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 450
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "efid":I
    :pswitch_6
    const-string v43, "EVENT_UPDATE_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 453
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 454
    const-string v43, "Update PB_PUID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    const-string v43, "EVENT_LOAD_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 462
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    const/16 v22, 0x0

    .line 463
    .local v22, "event":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 465
    .local v32, "num":I
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Bundle;

    .line 467
    .local v34, "queryTimeBundle":Landroid/os/Bundle;
    const-string v43, "query_sim_contact_file_timestamp"

    const-wide/16 v44, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    .line 470
    .local v36, "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v44, v0

    cmp-long v43, v36, v44

    if-ltz v43, :cond_0

    .line 474
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_c

    .line 475
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v42, v43

    check-cast v42, Ljava/util/ArrayList;

    .line 476
    .local v42, "uidRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 478
    add-int/lit8 v32, v32, 0x1

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_b

    .line 480
    const/16 v43, 0xa

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v32

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 490
    .end local v42    # "uidRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :goto_5
    if-eqz v22, :cond_0

    .line 491
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v31

    .line 492
    .local v31, "next_event":I
    if-eqz v31, :cond_d

    .line 493
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "next_event = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 482
    .end local v31    # "next_event":I
    .restart local v42    # "uidRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_b
    const/16 v22, 0xb

    goto :goto_5

    .line 485
    .end local v42    # "uidRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_c
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EVENT_LOAD_PB_UID_DONE Failed: num = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " ar.exception = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/16 v22, 0xb

    goto :goto_5

    .line 496
    .restart local v31    # "next_event":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 503
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "event":I
    .end local v31    # "next_event":I
    .end local v32    # "num":I
    .end local v34    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v36    # "queryTimeStamp":J
    :pswitch_8
    const-string v43, "EVENT_UPDATE_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 506
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 507
    const-string v43, "Update PB_UID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    const-string v43, "EVENT_LOAD_PB_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 516
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Bundle;

    .line 518
    .restart local v34    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v43, "query_sim_contact_file_timestamp"

    const-wide/16 v44, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    .line 521
    .restart local v36    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v44, v0

    cmp-long v43, v36, v44

    if-ltz v43, :cond_0

    .line 524
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_e

    .line 525
    const/16 v43, 0x1

    const/16 v44, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 526
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 531
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v43, v0

    if-nez v43, :cond_10

    .line 532
    const/16 v43, 0x9

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v22

    .line 533
    .restart local v22    # "event":I
    if-eqz v22, :cond_f

    .line 534
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 528
    .end local v22    # "event":I
    :cond_e
    const/16 v43, 0x1

    const/16 v44, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    goto :goto_6

    .line 536
    .restart local v22    # "event":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 539
    .end local v22    # "event":I
    :cond_10
    const-string v43, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 541
    new-instance v43, Lcom/android/internal/telephony/uicc/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v46, v0

    invoke-direct/range {v43 .. v46}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v44, 0x6f3a

    const/16 v45, 0x9

    const/16 v46, 0x0

    const/16 v47, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 550
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v34    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v36    # "queryTimeStamp":J
    :pswitch_a
    const-string v43, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 553
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    const/16 v22, 0x0

    .line 554
    .restart local v22    # "event":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 556
    .restart local v32    # "num":I
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Bundle;

    .line 558
    .restart local v34    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v43, "query_sim_contact_file_timestamp"

    const-wide/16 v44, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    .line 561
    .restart local v36    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v44, v0

    cmp-long v43, v36, v44

    if-ltz v43, :cond_0

    .line 565
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_1b

    .line 566
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v7, v43

    check-cast v7, Ljava/util/ArrayList;

    .line 567
    .local v7, "adnRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcAdnRecord;>;"
    if-nez v32, :cond_13

    .line 568
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 570
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_12

    .line 571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 578
    :cond_11
    :goto_7
    const/16 v43, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    if-lez v43, :cond_13

    .line 581
    new-instance v43, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v44, v0

    invoke-direct/range {v43 .. v44}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_13

    .line 583
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_13

    .line 584
    new-instance v20, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 585
    .local v20, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v43, v25, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 573
    .end local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v25    # "i":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    if-eqz v43, :cond_11

    .line 574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v44

    mul-int v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    goto :goto_7

    .line 592
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1a

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 599
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_16

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    .line 601
    .local v6, "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->isEmpty()Z

    move-result v43

    if-nez v43, :cond_14

    .line 602
    const/4 v8, 0x0

    .line 603
    .local v8, "adnRecordNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    mul-int v43, v43, v32

    iget v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->recordNumber:I

    move/from16 v44, v0

    add-int v8, v43, v44

    .line 605
    if-lez v8, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-gt v8, v0, :cond_15

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v8, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 609
    .local v33, "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 610
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 611
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 613
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 615
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.indexEmail = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 618
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.email = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 599
    .end local v8    # "adnRecordNumber":I
    .end local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_14
    :goto_a
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_9

    .line 620
    .restart local v8    # "adnRecordNumber":I
    :cond_15
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 626
    .end local v6    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .end local v8    # "adnRecordNumber":I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v43, v0

    if-nez v43, :cond_19

    .line 627
    add-int/lit8 v32, v32, 0x1

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_17

    .line 629
    const/16 v43, 0x9

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v32

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 637
    :goto_b
    if-eqz v22, :cond_0

    .line 638
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v31

    .line 639
    .restart local v31    # "next_event":I
    if-eqz v31, :cond_18

    .line 640
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "next_event = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 633
    .end local v31    # "next_event":I
    :cond_17
    const/16 v22, 0xa

    goto :goto_b

    .line 643
    .restart local v31    # "next_event":I
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 647
    .end local v31    # "next_event":I
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 650
    .end local v25    # "i":I
    :cond_1a
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "mSimPbkEntryList is null"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 654
    .end local v7    # "adnRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcAdnRecord;>;"
    :cond_1b
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EVENT_LOAD_PB_ADN_DONE Failed: num = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " ar.exception = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0xc0

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1c

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->clear()V

    .line 660
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 662
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 667
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "event":I
    .end local v32    # "num":I
    .end local v34    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v36    # "queryTimeStamp":J
    :pswitch_b
    const-string v43, "EVENT_LOAD_PB_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 670
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    const/16 v22, 0x0

    .line 671
    .restart local v22    # "event":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 672
    .restart local v32    # "num":I
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Bundle;

    .line 674
    .restart local v34    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v43, "query_sim_contact_file_timestamp"

    const-wide/16 v44, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    .line 677
    .restart local v36    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v44, v0

    cmp-long v43, v36, v44

    if-ltz v43, :cond_0

    .line 681
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_1f

    .line 682
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v26, v43

    check-cast v26, Ljava/util/ArrayList;

    .line 683
    .local v26, "iapRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 685
    add-int/lit8 v32, v32, 0x1

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_1d

    .line 687
    const/16 v43, 0xb

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v32

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 692
    :goto_c
    if-eqz v22, :cond_0

    .line 693
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v31

    .line 694
    .restart local v31    # "next_event":I
    if-eqz v31, :cond_1e

    .line 695
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "next_event = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 689
    .end local v31    # "next_event":I
    :cond_1d
    const/16 v22, 0xc

    goto :goto_c

    .line 698
    .restart local v31    # "next_event":I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 702
    .end local v26    # "iapRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    .end local v31    # "next_event":I
    :cond_1f
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EVENT_LOAD_PB_IAP_DONE Failed: num = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " ar.exception = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->clear()V

    .line 706
    const/16 v22, 0xc

    .line 708
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "remove IAP file from mPbrFile.mFileIds catch"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0xc1

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v43

    if-eqz v43, :cond_20

    .line 712
    const/16 v22, 0x8

    .line 713
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0xca

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 717
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v43

    if-nez v43, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v43

    if-eqz v43, :cond_22

    .line 719
    :cond_21
    const/16 v22, 0x0

    .line 720
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "remove ANR1 file from mPbrFile.mFileIds catch"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 723
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "remove ANR2 file from mPbrFile.mFileIds catch"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x1

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 727
    :cond_22
    if-eqz v22, :cond_24

    .line 728
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v31

    .line 729
    .restart local v31    # "next_event":I
    if-eqz v31, :cond_23

    .line 730
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "next_event = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 733
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 736
    .end local v31    # "next_event":I
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 743
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "event":I
    .end local v32    # "num":I
    .end local v34    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v36    # "queryTimeStamp":J
    :pswitch_c
    const-string v43, "EVENT_LOAD_PB_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 747
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Bundle;

    .line 749
    .restart local v34    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v43, "query_sim_contact_file_timestamp"

    const-wide/16 v44, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    .line 752
    .restart local v36    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v44, v0

    cmp-long v43, v36, v44

    if-ltz v43, :cond_0

    .line 756
    const/16 v22, 0x0

    .line 757
    .restart local v22    # "event":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 758
    .restart local v32    # "num":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 759
    .restart local v18    # "efid":I
    const/4 v15, 0x0

    .line 761
    .local v15, "composeErr":Z
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2f

    .line 762
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v29, v43

    check-cast v29, Ljava/util/ArrayList;

    .line 764
    .local v29, "mailRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_2d

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 767
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    new-array v0, v0, [Z

    move-object/from16 v41, v0

    .line 771
    .local v41, "searchErr":[Z
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_2c

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/EmailRecord;

    .line 774
    .local v19, "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v43

    if-nez v43, :cond_25

    .line 775
    const/4 v8, 0x0

    .line 776
    .restart local v8    # "adnRecordNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2a

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v35

    .line 779
    .local v35, "recNum":I
    if-lez v35, :cond_29

    .line 780
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    if-eqz v43, :cond_28

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    const/16 v44, 0xff

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_28

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-gt v0, v1, :cond_28

    .line 783
    add-int/lit8 v43, v35, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v44, v0

    mul-int v43, v43, v44

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v44, v0

    add-int v8, v43, v44

    .line 789
    if-lez v8, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-gt v8, v0, :cond_26

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v8, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 793
    .restart local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v33, :cond_27

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v43

    if-eqz v43, :cond_27

    .line 794
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 796
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "emailEntry.index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 799
    const-string v43, "Becasue the corresponding pbkEntry entry is empty, clear email entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 771
    .end local v8    # "adnRecordNumber":I
    .end local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v35    # "recNum":I
    :cond_25
    :goto_e
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_d

    .line 806
    .restart local v8    # "adnRecordNumber":I
    .restart local v35    # "recNum":I
    :cond_26
    const-string v43, "Can not find the corresponding pbkEntry entry. Try to use EF-IAP to recover it."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 807
    const/4 v15, 0x1

    .line 808
    const/16 v43, 0x1

    aput-boolean v43, v41, v25

    .line 827
    .end local v35    # "recNum":I
    :cond_27
    :goto_f
    if-lez v8, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-gt v8, v0, :cond_2b

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v8, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 830
    .restart local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 831
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 833
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 835
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.indexEmail = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 838
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.email = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 811
    .end local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .restart local v35    # "recNum":I
    :cond_28
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "The emailRecord.mAdnRecordNumber:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " is incorrect, the mRecordNums:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 815
    const/4 v15, 0x1

    .line 816
    const/16 v43, 0x1

    aput-boolean v43, v41, v25

    goto/16 :goto_f

    .line 819
    :cond_29
    const-string v43, "Can not find the corresponding EF-ADN file. Try to use EF-IAP to recover it."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 820
    const/4 v15, 0x1

    .line 821
    const/16 v43, 0x1

    aput-boolean v43, v41, v25

    goto/16 :goto_f

    .line 824
    .end local v35    # "recNum":I
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    mul-int v43, v43, v32

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v44, v0

    add-int v8, v43, v44

    goto/16 :goto_f

    .line 840
    :cond_2b
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 846
    .end local v8    # "adnRecordNumber":I
    .end local v19    # "emailRecord":Lcom/android/internal/telephony/EmailRecord;
    :cond_2c
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "mEmailRecordList size = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 848
    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v15, v0, :cond_2d

    .line 849
    const/16 v43, 0xca

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v43

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->parserIAP(II[Z)V

    .line 853
    .end local v25    # "i":I
    .end local v41    # "searchErr":[Z
    :cond_2d
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 854
    const/16 v43, 0x4

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 856
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "mEmailRecordList num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 858
    add-int/lit8 v32, v32, 0x1

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_2e

    .line 860
    const/16 v43, 0xc

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v32

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 878
    .end local v29    # "mailRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :goto_10
    if-eqz v22, :cond_0

    .line 879
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v31

    .line 880
    .restart local v31    # "next_event":I
    if-eqz v31, :cond_30

    .line 881
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 862
    .end local v31    # "next_event":I
    .restart local v29    # "mailRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2e
    const/16 v22, 0xd

    goto :goto_10

    .line 865
    .end local v29    # "mailRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2f
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EVENT_LOAD_PB_EMAIL_DONE Failed: num = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " ar.exception = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->clear()V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->clear()V

    .line 870
    const/16 v22, 0xd

    .line 871
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 872
    const/16 v43, 0x4

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 874
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0xca

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    goto/16 :goto_10

    .line 883
    .restart local v31    # "next_event":I
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 890
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "composeErr":Z
    .end local v18    # "efid":I
    .end local v22    # "event":I
    .end local v31    # "next_event":I
    .end local v32    # "num":I
    .end local v34    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v36    # "queryTimeStamp":J
    :pswitch_d
    const-string v43, "EVENT_LOAD_PB_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 892
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 894
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Bundle;

    .line 895
    .restart local v34    # "queryTimeBundle":Landroid/os/Bundle;
    const-string v43, "query_sim_contact_file_timestamp"

    const-wide/16 v44, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    .line 897
    .restart local v36    # "queryTimeStamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v44, v0

    cmp-long v43, v36, v44

    if-ltz v43, :cond_0

    .line 901
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 902
    .restart local v32    # "num":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 903
    .local v9, "anrEntryIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v18

    .line 904
    .restart local v18    # "efid":I
    const/4 v15, 0x0

    .line 906
    .restart local v15    # "composeErr":Z
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_43

    .line 907
    if-eqz v18, :cond_31

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-ge v9, v0, :cond_33

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 915
    .local v10, "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_11
    if-eqz v10, :cond_31

    .line 916
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-ge v9, v0, :cond_34

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 925
    .end local v10    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_31
    :goto_12
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 928
    .local v13, "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez v9, :cond_35

    .line 929
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v11, "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_13
    if-eqz v11, :cond_42

    .line 934
    invoke-virtual {v11, v9, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 935
    if-nez v9, :cond_36

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 944
    :goto_14
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    new-array v0, v0, [Z

    move-object/from16 v41, v0

    .line 946
    .restart local v41    # "searchErr":[Z
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_15
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_3d

    .line 947
    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/AnrRecord;

    .line 949
    .local v12, "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v12}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v43

    if-nez v43, :cond_32

    .line 950
    const/4 v8, 0x0

    .line 951
    .restart local v8    # "adnRecordNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_3b

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v35

    .line 954
    .restart local v35    # "recNum":I
    if-lez v35, :cond_3a

    .line 955
    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    if-eqz v43, :cond_39

    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    const/16 v44, 0xff

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_39

    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-gt v0, v1, :cond_39

    .line 958
    add-int/lit8 v43, v35, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v44, v0

    mul-int v43, v43, v44

    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v44, v0

    add-int v8, v43, v44

    .line 966
    if-lez v8, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-gt v8, v0, :cond_37

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v8, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 971
    .restart local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v33, :cond_38

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v43

    if-eqz v43, :cond_38

    .line 972
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 974
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "ANREntry.index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 977
    const-string v43, "Becasue the corresponding pbkEntry entry is empty, clear ANR entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v12}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 946
    .end local v8    # "adnRecordNumber":I
    .end local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v35    # "recNum":I
    :cond_32
    :goto_16
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_15

    .line 913
    .end local v11    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v12    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .end local v13    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v25    # "i":I
    .end local v41    # "searchErr":[Z
    :cond_33
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .restart local v10    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 920
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    .line 1091
    .end local v9    # "anrEntryIndex":I
    .end local v10    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "composeErr":Z
    .end local v18    # "efid":I
    .end local v32    # "num":I
    .end local v34    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v36    # "queryTimeStamp":J
    :catch_0
    move-exception v17

    .line 1092
    .local v17, "e":Ljava/lang/Exception;
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "ANR arraylist problem"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 931
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v9    # "anrEntryIndex":I
    .restart local v13    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    .restart local v15    # "composeErr":Z
    .restart local v18    # "efid":I
    .restart local v32    # "num":I
    .restart local v34    # "queryTimeBundle":Landroid/os/Bundle;
    .restart local v36    # "queryTimeStamp":J
    :cond_35
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .restart local v11    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_13

    .line 938
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 984
    .restart local v8    # "adnRecordNumber":I
    .restart local v12    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    .restart local v25    # "i":I
    .restart local v35    # "recNum":I
    .restart local v41    # "searchErr":[Z
    :cond_37
    const-string v43, "Can not find the corresponding pbkEntry entry. Try to use EF-IAP to recover it."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 985
    const/4 v15, 0x1

    .line 986
    const/16 v43, 0x1

    aput-boolean v43, v41, v25

    .line 1009
    .end local v35    # "recNum":I
    :cond_38
    :goto_17
    if-lez v8, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-gt v8, v0, :cond_3c

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v8, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1012
    .restart local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v43, v0

    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v44, v0

    aput v44, v43, v9

    .line 1013
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v43, v0

    iget-object v0, v12, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v44, v0

    aput-object v44, v43, v9

    .line 1015
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.index = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1017
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.indexAnr = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v44, v0

    aget v44, v44, v9

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1021
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "pbkEntry.adnumber = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v44, v0

    aget-object v44, v44, v9

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 989
    .end local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    .restart local v35    # "recNum":I
    :cond_39
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "The anrRecord.mAdnRecordNumber:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " is incorrect, the mRecordNums:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 993
    const/4 v15, 0x1

    .line 994
    const/16 v43, 0x1

    aput-boolean v43, v41, v25

    goto/16 :goto_17

    .line 997
    :cond_3a
    const-string v43, "Can not find the corresponding EF-ADN file. Try to use EF-IAP to recover it."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 998
    const/4 v15, 0x1

    .line 999
    const/16 v43, 0x1

    aput-boolean v43, v41, v25

    goto/16 :goto_17

    .line 1002
    .end local v35    # "recNum":I
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    mul-int v43, v43, v32

    iget v0, v12, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v44, v0

    add-int v8, v43, v44

    goto/16 :goto_17

    .line 1024
    :cond_3c
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1031
    .end local v8    # "adnRecordNumber":I
    .end local v12    # "anrRecord":Lcom/android/internal/telephony/AnrRecord;
    :cond_3d
    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v15, v0, :cond_3e

    .line 1032
    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->parserIAP(II[Z)V

    .line 1035
    :cond_3e
    const/16 v43, 0x2

    move/from16 v0, v43

    if-ge v9, v0, :cond_3f

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aput-boolean v44, v43, v9

    .line 1042
    const/16 v43, 0x3

    add-int/lit8 v44, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 1045
    :cond_3f
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "mAnrRecordList num = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1047
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "mAnrRecordList anrEntryIndex = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1050
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "mAnrRecordList size = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1052
    add-int/lit8 v9, v9, 0x1

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v43

    move/from16 v0, v43

    if-ge v9, v0, :cond_40

    const/16 v43, 0x2

    move/from16 v0, v43

    if-ge v9, v0, :cond_40

    .line 1060
    const/16 v43, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 1062
    :cond_40
    add-int/lit8 v32, v32, 0x1

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_41

    .line 1064
    const/4 v9, 0x0

    .line 1065
    const/16 v43, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 1069
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 1073
    .end local v25    # "i":I
    .end local v41    # "searchErr":[Z
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 1076
    .end local v11    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v13    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_43
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EVENT_LOAD_PB_ANR_DONE Failed, num = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " anrEntryIndex = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " ar.exception = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->clear()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->clear()V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x1

    invoke-virtual/range {v43 .. v45}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 1085
    const/16 v43, 0x3

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    aput-boolean v45, v43, v44

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v43, v0

    const/16 v44, 0x1

    const/16 v45, 0x0

    aput-boolean v45, v43, v44

    .line 1089
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1099
    .end local v9    # "anrEntryIndex":I
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "composeErr":Z
    .end local v18    # "efid":I
    .end local v32    # "num":I
    .end local v34    # "queryTimeBundle":Landroid/os/Bundle;
    .end local v36    # "queryTimeStamp":J
    :pswitch_e
    const-string v43, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1103
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_46

    .line 1104
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/PhoneBookMemory;

    .line 1106
    .local v28, "mPBMemory":Lcom/android/internal/telephony/PhoneBookMemory;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "get PB length:total="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " used="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1107
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1108
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 1109
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "get PB length:total="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " used="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUsed:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1112
    new-instance v43, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v44, v0

    invoke-direct/range {v43 .. v44}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 1114
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_44

    .line 1115
    new-instance v20, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 1116
    .restart local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v43, v25, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 v25, v25, 0x1

    goto :goto_18

    .line 1120
    .end local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    if-lez v43, :cond_45

    .line 1121
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 1123
    :cond_45
    const-string v43, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1124
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1128
    .end local v25    # "i":I
    .end local v28    # "mPBMemory":Lcom/android/internal/telephony/PhoneBookMemory;
    :cond_46
    const-string v43, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1131
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    if-lez v43, :cond_48

    .line 1134
    new-instance v43, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v44, v0

    invoke-direct/range {v43 .. v44}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 1136
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v43, v0

    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_47

    .line 1137
    new-instance v20, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 1138
    .restart local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v43, v25, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    add-int/lit8 v25, v25, 0x1

    goto :goto_19

    .line 1142
    .end local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 1144
    .end local v25    # "i":I
    :cond_48
    const-string v43, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1145
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1154
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    const-string v43, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1156
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_49

    .line 1157
    const-string v43, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1158
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    .line 1163
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget v45, v43, v44

    add-int/lit8 v45, v45, -0x1

    aput v45, v43, v44

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget v43, v43, v44

    if-nez v43, :cond_0

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1168
    const-string v43, "load Phonebook Entries Complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1170
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v43

    if-nez v43, :cond_0

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1160
    :cond_49
    const-string v43, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_1a

    .line 1182
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    const-string v43, "EVENT_ADD_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1183
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1184
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1185
    .local v30, "msgNum":I
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1186
    .restart local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/Message;

    .line 1188
    .local v40, "response":Landroid/os/Message;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_4a

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1193
    :cond_4a
    const-string v43, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1197
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v43, v0

    if-eqz v43, :cond_4b

    .line 1198
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/CommandException;

    check-cast v43, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v21

    .line 1201
    .local v21, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v43, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_4b

    .line 1202
    const-string v43, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1203
    const-string v43, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1208
    .end local v21    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4b
    const-string v43, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1215
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v30    # "msgNum":I
    .end local v40    # "response":Landroid/os/Message;
    :pswitch_11
    const-string v43, "EVENT_UPDATE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1217
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1218
    .restart local v30    # "msgNum":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .line 1219
    .restart local v32    # "num":I
    iget-object v6, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;

    .line 1220
    .restart local v6    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/Message;

    .line 1222
    .restart local v40    # "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1224
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_55

    .line 1225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    mul-int v43, v43, v32

    iget v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->recordNumber:I

    move/from16 v44, v0

    add-int v8, v43, v44

    .line 1227
    .restart local v8    # "adnRecordNumber":I
    if-lez v8, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-gt v8, v0, :cond_54

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v8, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1229
    .restart local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v33, :cond_4c

    .line 1230
    iget-object v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1231
    iget-object v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->number:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1232
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_4f

    .line 1233
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1242
    :cond_4c
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    iget v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->recordNumber:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1245
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v43

    if-eqz v43, :cond_53

    .line 1247
    const/16 v18, 0x0

    .line 1248
    .restart local v18    # "efid":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v43, v0

    if-nez v43, :cond_50

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    if-eqz v43, :cond_4d

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_4d

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0xc2

    move-object/from16 v0, v43

    move/from16 v1, v32

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v18

    .line 1258
    :cond_4d
    :goto_1c
    if-eqz v18, :cond_52

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_51

    .line 1261
    iget v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->extRecord:I

    move/from16 v24, v0

    .line 1262
    .local v24, "ext1index":I
    if-lez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v24

    move/from16 v1, v43

    if-gt v0, v1, :cond_0

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v24, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 1265
    .local v23, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v30

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1266
    const/16 v43, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    move/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v39

    .line 1269
    .local v39, "res":Landroid/os/Message;
    iget-boolean v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->mClearExt1Record:Z

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_4e

    .line 1270
    const/16 v43, 0xff

    move/from16 v0, v43

    iput v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->extRecord:I

    .line 1271
    const/16 v43, 0x0

    move/from16 v0, v43

    iput-boolean v0, v6, Lcom/android/internal/telephony/uicc/HtcAdnRecord;->mClearExt1Record:Z

    .line 1273
    :cond_4e
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v23

    move/from16 v3, v18

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/uicc/HtcExt1Record;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1235
    .end local v18    # "efid":I
    .end local v23    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v24    # "ext1index":I
    .end local v39    # "res":Landroid/os/Message;
    :cond_4f
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    move-object/from16 v43, v0

    if-nez v43, :cond_4c

    .line 1236
    const/16 v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1237
    const/16 v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 1238
    const/16 v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    goto/16 :goto_1b

    .line 1256
    .restart local v18    # "efid":I
    :cond_50
    const/16 v18, 0x6f4a

    goto/16 :goto_1c

    .line 1276
    :cond_51
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1279
    :cond_52
    const-string v43, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1282
    .end local v18    # "efid":I
    :cond_53
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1285
    .end local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_54
    const-string v43, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1288
    .end local v8    # "adnRecordNumber":I
    :cond_55
    const-string v43, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1290
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v43, v0

    if-eqz v43, :cond_56

    .line 1291
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/CommandException;

    check-cast v43, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v21

    .line 1294
    .restart local v21    # "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v43, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_56

    .line 1295
    const-string v43, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1296
    const-string v43, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1301
    .end local v21    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_56
    const-string v43, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1307
    .end local v6    # "adnRecord":Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v30    # "msgNum":I
    .end local v32    # "num":I
    .end local v40    # "response":Landroid/os/Message;
    :pswitch_12
    const-string v43, "EVENT_UPDATE_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1308
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1309
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1310
    .restart local v30    # "msgNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/Message;

    .line 1311
    .restart local v40    # "response":Landroid/os/Message;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_57

    .line 1312
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1314
    :cond_57
    const-string v43, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1315
    const-string v43, "update failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1321
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v30    # "msgNum":I
    .end local v40    # "response":Landroid/os/Message;
    :pswitch_13
    const-string v43, "EVENT_UPDATE_ANR_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1322
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1324
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_58

    .line 1325
    const-string v43, "Update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1327
    :cond_58
    const-string v43, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1333
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    const-string v43, "EVENT_DELETE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1335
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1336
    .restart local v30    # "msgNum":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v38, v0

    .line 1337
    .local v38, "recordNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/Message;

    .line 1339
    .restart local v40    # "response":Landroid/os/Message;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_59

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v38, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1342
    .restart local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1343
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1345
    .end local v20    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_59
    const-string v43, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1346
    const-string v43, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1352
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v30    # "msgNum":I
    .end local v38    # "recordNumber":I
    .end local v40    # "response":Landroid/os/Message;
    :pswitch_15
    const-string v43, "EVENT_UPDATE_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1353
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1354
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 1355
    .restart local v32    # "num":I
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_5c

    .line 1356
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/IAPRecord;

    .line 1358
    .local v20, "entry":Lcom/android/internal/telephony/IAPRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_5b

    .line 1359
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v43, v0

    if-lez v43, :cond_5a

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v44

    move/from16 v1, v43

    if-gt v0, v1, :cond_5a

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1363
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "num = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "IAPRecord.mRecordNumber = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1366
    :cond_5a
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "out of IAP index = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1369
    :cond_5b
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "out of mIAPRecordList.size() = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1372
    .end local v20    # "entry":Lcom/android/internal/telephony/IAPRecord;
    :cond_5c
    const-string v43, "Update IAP entry failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1378
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v32    # "num":I
    :pswitch_16
    const-string v43, "EVENT_UPDATE_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1380
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1381
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 1383
    .restart local v32    # "num":I
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_61

    .line 1384
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/EmailRecord;

    .line 1385
    .local v20, "entry":Lcom/android/internal/telephony/EmailRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_60

    .line 1386
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v43

    if-nez v43, :cond_5d

    .line 1387
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    if-lez v43, :cond_5f

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v44

    move/from16 v1, v43

    if-gt v0, v1, :cond_5f

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    mul-int v43, v43, v32

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v44, v0

    add-int v8, v43, v44

    .line 1392
    .restart local v8    # "adnRecordNumber":I
    if-lez v8, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-gt v8, v0, :cond_5e

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v8, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1396
    .restart local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v33, :cond_5d

    .line 1397
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 1398
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1408
    .end local v8    # "adnRecordNumber":I
    .end local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_5d
    :goto_1d
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "num = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EmailRecord.mRecordNumber = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EmailRecord.mAdnRecordNumber ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 1413
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EmailRecord.mEmailAddress ="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    .restart local v8    # "adnRecordNumber":I
    :cond_5e
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1405
    .end local v8    # "adnRecordNumber":I
    :cond_5f
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "out of E-mail index = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1416
    :cond_60
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "out of mEmailRecordList.size() = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1419
    .end local v20    # "entry":Lcom/android/internal/telephony/EmailRecord;
    :cond_61
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "updateEmailRecord failed"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1425
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v32    # "num":I
    :pswitch_17
    const-string v43, "EVENT_UPDATE_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1427
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 1428
    .restart local v32    # "num":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 1430
    .restart local v9    # "anrEntryIndex":I
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 1432
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_6a

    const/16 v43, 0x2

    move/from16 v0, v43

    if-ge v9, v0, :cond_6a

    .line 1433
    iget-object v0, v14, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/AnrRecord;

    .line 1435
    .local v20, "entry":Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_69

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-ge v9, v0, :cond_68

    .line 1437
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v43

    if-nez v43, :cond_62

    .line 1439
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    if-lez v43, :cond_66

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v44

    move/from16 v1, v43

    if-gt v0, v1, :cond_66

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v43, v0

    mul-int v43, v43, v32

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v44, v0

    add-int v8, v43, v44

    .line 1446
    .restart local v8    # "adnRecordNumber":I
    if-lez v8, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    if-gt v8, v0, :cond_65

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v8, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1450
    .restart local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v33, :cond_62

    .line 1451
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v43, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v44, v0

    aput v44, v43, v9

    .line 1452
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v44, v0

    aput-object v44, v43, v9

    .line 1463
    .end local v8    # "adnRecordNumber":I
    .end local v33    # "pbkEntry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_62
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    if-eqz v43, :cond_64

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_64

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v43, v0

    const/16 v44, 0xc2

    move-object/from16 v0, v43

    move/from16 v1, v32

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v18

    .line 1467
    .restart local v18    # "efid":I
    if-eqz v18, :cond_64

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_67

    .line 1469
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    move/from16 v24, v0

    .line 1470
    .restart local v24    # "ext1index":I
    if-lez v24, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v24

    move/from16 v1, v43

    if-gt v0, v1, :cond_64

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    add-int/lit8 v44, v24, -0x1

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 1474
    .restart local v23    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    const/16 v43, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v39

    .line 1476
    .restart local v39    # "res":Landroid/os/Message;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_63

    .line 1477
    const/16 v43, 0xff

    move/from16 v0, v43

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 1478
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 1480
    :cond_63
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v23

    move/from16 v3, v18

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/uicc/HtcExt1Record;ILandroid/os/Message;)V

    .line 1491
    .end local v18    # "efid":I
    .end local v23    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v24    # "ext1index":I
    .end local v39    # "res":Landroid/os/Message;
    :cond_64
    :goto_1f
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "num = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "anrEntryIndex = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "AnrRecord.mRecordNumber = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "AnrRecord.mAdnRecordNumber ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 1497
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "AnrRecord.mNumber ="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1455
    .restart local v8    # "adnRecordNumber":I
    :cond_65
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1459
    .end local v8    # "adnRecordNumber":I
    :cond_66
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "out of Anr index = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1484
    .restart local v18    # "efid":I
    :cond_67
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1500
    .end local v18    # "efid":I
    :cond_68
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "anrEntryIndex out of mAnrRecordLists.get(num).size = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1504
    :cond_69
    const-string v43, "HtcIccPbkEntryCache_QMI"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "num out of mAnrRecordLists.size() = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1507
    .end local v20    # "entry":Lcom/android/internal/telephony/AnrRecord;
    :cond_6a
    const-string v43, "HtcIccPbkEntryCache_QMI"

    const-string v44, "updateAnrRecord failed"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handleNextSequence(III)V
    .locals 18
    .param p1, "event"    # I
    .param p2, "num"    # I
    .param p3, "index"    # I

    .prologue
    .line 2977
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v14, :cond_1

    .line 3163
    :cond_0
    :goto_0
    return-void

    .line 2981
    :cond_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2982
    .local v12, "queryTimeBundle":Landroid/os/Bundle;
    const-string v14, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2984
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v14, :cond_0

    .line 2985
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 2986
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v13

    .line 2987
    .local v13, "tag":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v14, v0, v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v7

    .line 2988
    .local v7, "efid":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3064
    :pswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read EF-EXT1 num:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3068
    new-instance v14, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v15, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v7, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2994
    :pswitch_1
    new-instance v14, Lcom/android/internal/telephony/UIDRecordLoader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v15, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v7, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Lcom/android/internal/telephony/UIDRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3007
    :pswitch_2
    new-instance v14, Lcom/android/internal/telephony/uicc/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v15, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v7, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3016
    :pswitch_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read EF-IAP num:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3020
    new-instance v14, Lcom/android/internal/telephony/IAPRecordLoader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v15, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v7, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Lcom/android/internal/telephony/IAPRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3028
    :pswitch_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read EF-EMAIL num:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3029
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3031
    .local v8, "fileindex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_4

    .line 3032
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3034
    add-int/lit8 p2, p2, 0x1

    .line 3035
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v14

    move/from16 v0, p2

    if-ge v0, v14, :cond_2

    .line 3036
    const/16 v14, 0xc

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 3038
    :cond_2
    const/16 v14, 0xd

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v11

    .line 3039
    .local v11, "next_event":I
    if-eqz v11, :cond_3

    .line 3040
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 3042
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 3046
    .end local v11    # "next_event":I
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileindex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "EmailRecordList.size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3050
    .end local v8    # "fileindex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v10

    .line 3055
    .local v10, "inIAP":Z
    new-instance v14, Lcom/android/internal/telephony/EmailRecordLoader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v15, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v7, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v7, v10, v15}, Lcom/android/internal/telephony/EmailRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 3076
    .end local v10    # "inIAP":Z
    :pswitch_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read EF-ANR num"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "index:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3077
    const/4 v9, 0x1

    .line 3078
    .local v9, "flag":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_8

    .line 3079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 3080
    .local v4, "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 3081
    const/4 v9, 0x0

    .line 3082
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3084
    .restart local v8    # "fileindex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_d

    .line 3086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3091
    .local v6, "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez p3, :cond_9

    .line 3092
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3097
    .local v5, "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_1
    if-eqz v5, :cond_6

    .line 3098
    move/from16 v0, p3

    invoke-virtual {v5, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3099
    if-nez p3, :cond_a

    .line 3100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v14, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3106
    :cond_6
    :goto_2
    const/4 v14, 0x2

    move/from16 v0, p3

    if-ge v0, v14, :cond_7

    .line 3112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v15, 0x1

    aput-boolean v15, v14, p3

    .line 3113
    const/4 v14, 0x3

    add-int/lit8 v15, p3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 3116
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 3117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_b

    const/4 v14, 0x2

    move/from16 v0, p3

    if-ge v0, v14, :cond_b

    .line 3124
    const/16 v14, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 3144
    .end local v4    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v6    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v8    # "fileindex":I
    :cond_8
    :goto_3
    if-eqz v9, :cond_0

    .line 3145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v10

    .line 3150
    .restart local v10    # "inIAP":Z
    new-instance v14, Lcom/android/internal/telephony/AnrRecordLoader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v15, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2, v12}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v7, v10, v15}, Lcom/android/internal/telephony/AnrRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 3094
    .end local v10    # "inIAP":Z
    .restart local v4    # "anrFileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v6    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v8    # "fileindex":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .restart local v5    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_1

    .line 3102
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v14, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3126
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 3127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v14

    move/from16 v0, p2

    if-ge v0, v14, :cond_c

    .line 3128
    const/16 v14, 0xd

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto :goto_3

    .line 3132
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto :goto_3

    .line 3136
    .end local v5    # "anrLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v6    # "anrRecordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileindex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "mAnrRecordLists.size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "or index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "mAnrRecordLists.get(fileindex).size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2988
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3301
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 3305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 9
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x6f4a

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1609
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    if-nez v2, :cond_2

    .line 1610
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v1

    .line 1614
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v1, :cond_2

    .line 1615
    if-eqz p1, :cond_0

    .line 1616
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1617
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1619
    :cond_0
    const-string v2, "PB has already loaded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1662
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :cond_1
    :goto_0
    return-void

    .line 1623
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    const-string v2, "HtcIccPbkEntryCache_QMI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLoadAllPBEntry()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v6, :cond_1

    .line 1640
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/UsimFileHandler;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v2, :cond_5

    .line 1642
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_4

    .line 1643
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    .line 1661
    :cond_4
    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0

    .line 1646
    :cond_5
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 1647
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_6

    .line 1648
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setPbrPresent(Z)V

    .line 1651
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1652
    .local v0, "queryTimeStamp":Landroid/os/Bundle;
    const-string v2, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1653
    new-instance v2, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v7, v8, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 3317
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3318
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3319
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setupIccFileHandler(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 3322
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-nez v0, :cond_1

    .line 3323
    const-string v0, "setupIccFileHandler: set mIccFileHandler to null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3326
    :cond_1
    return-void
.end method

.method updateADNByIndex(ILcom/android/internal/telephony/uicc/HtcAdnRecord;ILandroid/os/Message;)V
    .locals 4
    .param p1, "recordIndex"    # I
    .param p2, "adnRecord"    # Lcom/android/internal/telephony/uicc/HtcAdnRecord;
    .param p3, "efid"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2855
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateADNByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2861
    new-instance v0, Lcom/android/internal/telephony/uicc/ADNRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/uicc/ADNRecordLoader;->updateEF(IILcom/android/internal/telephony/uicc/HtcAdnRecord;Landroid/os/Message;)V

    .line 2867
    :cond_0
    return-void
.end method

.method updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V
    .locals 6
    .param p1, "recordIndex"    # I
    .param p2, "anrRecord"    # Lcom/android/internal/telephony/AnrRecord;
    .param p3, "efid"    # I
    .param p4, "anrEntryIndex"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2828
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnrByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    .line 2831
    .local v4, "inIAP":Z
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2835
    new-instance v0, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    move v1, p3

    move v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AnrRecordLoader;->updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V

    .line 2839
    :cond_0
    return-void
.end method

.method updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "recordIndex"    # I
    .param p3, "emailRecord"    # Lcom/android/internal/telephony/EmailRecord;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2812
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmailByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    .line 2815
    .local v4, "inIAP":Z
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2820
    new-instance v0, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/EmailRecordLoader;->updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V

    .line 2824
    :cond_0
    return-void
.end method

.method updateExt1ByIndex(ILcom/android/internal/telephony/uicc/HtcExt1Record;ILandroid/os/Message;)V
    .locals 3
    .param p1, "recordIndex"    # I
    .param p2, "ext1Record"    # Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .param p3, "efid"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2870
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExt1ByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2876
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/uicc/HtcExt1RecordLoader;->updateEF(IILcom/android/internal/telephony/uicc/HtcExt1Record;Landroid/os/Message;)V

    .line 2881
    :cond_0
    return-void
.end method

.method updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V
    .locals 3
    .param p1, "recordIndex"    # I
    .param p2, "iapRecord"    # Lcom/android/internal/telephony/IAPRecord;
    .param p3, "efid"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2842
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIAPByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2848
    new-instance v0, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/IAPRecordLoader;->updateEF(IILcom/android/internal/telephony/IAPRecord;Landroid/os/Message;)V

    .line 2852
    :cond_0
    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "recordNumber"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "number1"    # Ljava/lang/String;
    .param p5, "number2"    # Ljava/lang/String;
    .param p6, "newEmail"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 1925
    const-string v1, "updatePBKEntry()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1927
    const/4 v7, 0x0

    .line 1929
    .local v7, "error":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_0

    .line 1930
    const-string v1, "mPhone null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 2035
    :goto_0
    return-void

    .line 1934
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1935
    .local v10, "phonenumber":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1936
    .local v2, "phonenumber1":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1938
    .local v3, "phonenumber2":Ljava/lang/String;
    invoke-direct {p0, v10, v2, v3}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1940
    if-eqz v7, :cond_1

    .line 1941
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1946
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    .line 1949
    .local v9, "iccCardInterface":Lcom/android/internal/telephony/IccCard;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v1, v1

    if-ge v8, v1, :cond_2

    .line 1950
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v4, 0x0

    aput-byte v4, v1, v8

    .line 1949
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1955
    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v1, :cond_3

    .line 1957
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1962
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 1963
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1965
    .local v6, "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v6, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v1, :cond_5

    .line 1966
    :cond_4
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1968
    :cond_5
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v5, v1, v4

    .line 1969
    .local v5, "num":I
    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v4, p6

    .line 1970
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v7

    .line 1971
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 1972
    move-object v3, v2

    .line 1973
    const-string v2, ""

    .line 1976
    :cond_6
    if-eqz v7, :cond_7

    .line 1977
    packed-switch v7, :pswitch_data_0

    .line 1988
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1985
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoryFull:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1994
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    .line 1995
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 2001
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9

    .line 2002
    const/4 v1, 0x0

    invoke-direct {p0, v2, v6, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 2005
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v4, 0x1

    aget-boolean v1, v1, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_a

    .line 2006
    const/4 v1, 0x1

    invoke-direct {p0, v3, v6, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 2012
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2013
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v4, 0x1

    if-eq v1, v4, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v4, 0x1

    aget-boolean v1, v1, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    .line 2015
    :cond_b
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 2022
    :cond_c
    move-object/from16 v0, p7

    invoke-direct {p0, p2, v10, v6, v0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 2026
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v1, v4, v11}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto/16 :goto_0

    .line 2031
    .end local v5    # "num":I
    .end local v6    # "entry":Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_d
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v4, "mSimPbkEntryList = null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1977
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
