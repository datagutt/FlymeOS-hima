.class public abstract Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Ljava/lang/Object;
.source "IccPhoneBookInterfaceManager.java"


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_ADD_PB_DONE:I = 0x7

.field protected static final EVENT_DELETE_PB_DONE:I = 0x8

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_LOAD_PB_DONE:I = 0x6

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field protected static final EVENT_UPDATE_PB_DONE:I = 0x9

.field private static final FAKE_ADN_SIZE_RESULT:[I


# instance fields
.field protected mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnError:Lcom/android/internal/telephony/ADNErrorType;

.field protected mBaseHandler:Landroid/os/Handler;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIs3gCard:Z

.field protected final mLock:Ljava/lang/Object;

.field protected final mLockHtcPbk:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected final mQueryHtcPbk:Ljava/lang/Object;

.field protected mRecordSize:[I

.field protected mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

.field protected mSuccess:Z

.field private phoneBookEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->FAKE_ADN_SIZE_RESULT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mQueryHtcPbk:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    .line 106
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 272
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 282
    invoke-static {p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getHtcIccPbkEntryCache(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    .line 283
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->FAKE_ADN_SIZE_RESULT:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private enforceSharePermission()V
    .locals 6

    .prologue
    .line 750
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "sense_version"

    const-string v3, "5.5"

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 753
    .local v0, "sensVersion":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.htc.permission.APP_SHARED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    return-void
.end method

.method private static getHtcIccPbkEntryCache(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 266
    new-instance v0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 714
    const-string v0, "IccPhoneBookInterfaceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method private setupIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 3
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "iccFileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz p1, :cond_0

    .line 722
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 725
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access Phonebook from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 728
    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 729
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->setupIccFileHandler(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 732
    :cond_1
    return-void

    .line 725
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateEfForIccType(I)I
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 488
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 490
    const/16 p1, 0x4f30

    .line 493
    .end local p1    # "efid":I
    :cond_0
    return p1
.end method


# virtual methods
.method public addSimPbkEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "number1"    # Ljava/lang/String;
    .param p4, "number2"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    .line 502
    new-instance v8, Lcom/android/internal/telephony/ADNErrorType;

    invoke-direct {v8}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 504
    .local v8, "error":Lcom/android/internal/telephony/ADNErrorType;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v9

    .line 512
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 518
    .local v6, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J

    move-result-wide v10

    .line 520
    .local v10, "index":J
    iput-wide v10, v8, Lcom/android/internal/telephony/ADNErrorType;->mIndex:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .end local v6    # "response":Landroid/os/Message;
    .end local v10    # "index":J
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    :goto_0
    :try_start_2
    iget v0, v8, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    if-eqz v0, :cond_2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSimPbkEntry failed: mError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 537
    :cond_2
    monitor-exit v9

    return-object v8

    .line 527
    :catch_0
    move-exception v7

    .line 529
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v0, "interrupted while trying to add pbk entry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected checkThread()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    return-void
.end method

.method public deleteSimPbkEntry(I)Lcom/android/internal/telephony/ADNErrorType;
    .locals 6
    .param p1, "recordNumber"    # I

    .prologue
    .line 549
    new-instance v1, Lcom/android/internal/telephony/ADNErrorType;

    invoke-direct {v1}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 551
    .local v1, "error":Lcom/android/internal/telephony/ADNErrorType;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 558
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v4

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 561
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v3, :cond_1

    .line 563
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 565
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v3, p1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->deletePBKEntry(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    .end local v2    # "response":Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :goto_0
    :try_start_2
    iget v3, v1, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    if-eqz v3, :cond_2

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSimPbkEntry failed: mError = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 583
    :cond_2
    monitor-exit v4

    return-object v1

    .line 573
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "interrupted while trying to delete sim pbk entry"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 287
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->dispose()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    .line 293
    :cond_0
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 1

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->enforceSharePermission()V

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->dropSimPbkEntries()V

    .line 697
    :cond_0
    return-void
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 451
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 453
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 454
    .local v1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 455
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 461
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object v2

    .line 459
    :cond_1
    :try_start_1
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public abstract getAdnRecordsSize(I)[I
.end method

.method public getLastError()Lcom/android/internal/telephony/ADNErrorType;
    .locals 1

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->enforceSharePermission()V

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getLastError()Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v0

    return-object v0
.end method

.method public getPBKEntries()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_0
    const-string v2, "getPBKEntries"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 650
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mQueryHtcPbk:Ljava/lang/Object;

    monitor-enter v3

    .line 651
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 652
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 657
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v2, :cond_1

    .line 659
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->requestLoadAllPBEntry(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mQueryHtcPbk:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;

    return-object v2

    .line 663
    :cond_1
    :try_start_3
    const-string v2, "getPBKEntries with no cache"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 664
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 665
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 674
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 671
    .restart local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isSIMPBKHandlerType(I)Z
    .locals 3
    .param p1, "simtype"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 738
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->enforceSharePermission()V

    .line 739
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v2, :cond_1

    .line 740
    if-ne p1, v1, :cond_2

    .line 741
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/SIMFileHandler;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/UsimFileHandler;

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 746
    :cond_1
    :goto_0
    return v0

    .line 742
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 743
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/RuimFileHandler;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->enforceSharePermission()V

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 709
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 403
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 406
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 407
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 408
    .local v5, "response":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .local v2, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 411
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 415
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 413
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    .end local v2    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 350
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 353
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 354
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 355
    .local v5, "response":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v2, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move v1, p1

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 359
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 363
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 361
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    .end local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 1
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 302
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->setupIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 304
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    goto :goto_0
.end method

.method public updateSimPbkEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 11
    .param p1, "recordNumber"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "number1"    # Ljava/lang/String;
    .param p5, "number2"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;

    .prologue
    .line 592
    new-instance v9, Lcom/android/internal/telephony/ADNErrorType;

    invoke-direct {v9}, Lcom/android/internal/telephony/ADNErrorType;-><init>()V

    .line 594
    .local v9, "error":Lcom/android/internal/telephony/ADNErrorType;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v10

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 608
    .local v7, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimPbkEntryCache:Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;->updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    .end local v7    # "response":Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    :goto_0
    :try_start_2
    iget v0, v9, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    if-eqz v0, :cond_2

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimPbkEntry failed: mError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    .line 626
    :cond_2
    monitor-exit v10

    return-object v9

    .line 616
    :catch_0
    move-exception v8

    .line 618
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v0, "interrupted while trying to update sim pbk entry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "status"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 477
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
