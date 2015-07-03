.class public final Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.super Landroid/os/Handler;
.source "ImsPhoneMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field private static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field private static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field private static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field private static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field private static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field private static final CLIR_DEFAULT:I = 0x0

.field private static final CLIR_INVOCATION:I = 0x1

.field private static final CLIR_NOT_PROVISIONED:I = 0x0

.field private static final CLIR_PRESENTATION_ALLOWED_TEMPORARY:I = 0x4

.field private static final CLIR_PRESENTATION_RESTRICTED_TEMPORARY:I = 0x3

.field private static final CLIR_PROVISIONED_PERMANENT:I = 0x1

.field private static final CLIR_SUPPRESSION:I = 0x2

.field static final CfuTimer:Ljava/lang/String; = "Call Forward Unconditional Timer"

.field private static final END_OF_USSD_COMMAND:C = '#'

.field private static final EVENT_GET_CLIR_COMPLETE:I = 0x6

.field private static final EVENT_QUERY_CFUT_COMPLETE:I = 0x8

.field private static final EVENT_QUERY_CF_COMPLETE:I = 0x1

.field private static final EVENT_QUERY_COMPLETE:I = 0x3

.field private static final EVENT_QUERY_ICB_COMPLETE:I = 0xa

.field private static final EVENT_SET_CFF_COMPLETE:I = 0x4

.field private static final EVENT_SET_CFF_TIMER_COMPLETE:I = 0x9

.field private static final EVENT_SET_COMPLETE:I = 0x0

.field private static final EVENT_SUPP_SVC_QUERY_COMPLETE:I = 0x7

.field private static final EVENT_USSD_CANCEL_COMPLETE:I = 0x5

.field private static final EVENT_USSD_COMPLETE:I = 0x2

.field static final IcbAnonymousMmi:Ljava/lang/String; = "Anonymous Incoming Call Barring"

.field static final IcbDnMmi:Ljava/lang/String; = "Specific Incoming Call Barring"

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneMmiCode"

.field private static final MATCH_GROUP_ACTION:I = 0x2

.field private static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_GLOBALDEV_DIALNUM:I = 0x5

.field static final MATCH_GROUP_GLOBALDEV_DIALPREFIX:I = 0x4

.field private static final MATCH_GROUP_POUND_STRING:I = 0x1

.field private static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field private static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field private static final MATCH_GROUP_SIA:I = 0x5

.field private static final MATCH_GROUP_SIB:I = 0x7

.field private static final MATCH_GROUP_SIC:I = 0x9

.field private static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field private static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final NUM_PRESENTATION_RESTRICTED:I = 0x1

.field private static final SC_BAIC:Ljava/lang/String; = "35"

.field private static final SC_BAICa:Ljava/lang/String; = "157"

.field private static final SC_BAICr:Ljava/lang/String; = "351"

.field private static final SC_BAOC:Ljava/lang/String; = "33"

.field private static final SC_BAOIC:Ljava/lang/String; = "331"

.field private static final SC_BAOICxH:Ljava/lang/String; = "332"

.field private static final SC_BA_ALL:Ljava/lang/String; = "330"

.field private static final SC_BA_MO:Ljava/lang/String; = "333"

.field private static final SC_BA_MT:Ljava/lang/String; = "353"

.field private static final SC_BS_MT:Ljava/lang/String; = "156"

.field private static final SC_CFB:Ljava/lang/String; = "67"

.field private static final SC_CFNR:Ljava/lang/String; = "62"

.field private static final SC_CFNRy:Ljava/lang/String; = "61"

.field private static final SC_CFU:Ljava/lang/String; = "21"

.field private static final SC_CFUT:Ljava/lang/String; = "22"

.field private static final SC_CF_All:Ljava/lang/String; = "002"

.field private static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field private static final SC_CLIP:Ljava/lang/String; = "30"

.field private static final SC_CLIR:Ljava/lang/String; = "31"

.field private static final SC_CNAP:Ljava/lang/String; = "300"

.field private static final SC_COLP:Ljava/lang/String; = "76"

.field private static final SC_COLR:Ljava/lang/String; = "77"

.field static final SC_GLOBALDEV_CLIR_INVK:Ljava/lang/String; = "67"

.field static final SC_GLOBALDEV_CLIR_SUPP:Ljava/lang/String; = "82"

.field private static final SC_PIN:Ljava/lang/String; = "04"

.field private static final SC_PIN2:Ljava/lang/String; = "042"

.field private static final SC_PUK:Ljava/lang/String; = "05"

.field private static final SC_PUK2:Ljava/lang/String; = "052"

.field private static final SC_PWD:Ljava/lang/String; = "03"

.field private static final SC_WAIT:Ljava/lang/String; = "43"

.field public static final UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"

.field public static final UT_BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"

.field static final sBStartSpecialDialString:Ljava/util/ArrayList;

.field static final sEntelSpecialDialString:Ljava/util/ArrayList;

.field static sPatternATTDialString:Ljava/util/regex/Pattern;

.field private static sPatternSuppService:Ljava/util/regex/Pattern;

.field static sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

.field static final sSPA_IusacelDialString:Ljava/util/ArrayList;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialingNumber:Ljava/lang/String;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsCallFwdReg:Z

.field private mIsPendingUSSD:Z

.field private mIsUssdRequest:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mPoundString:Ljava/lang/String;

.field private mPwd:Ljava/lang/String;

.field private mSc:Ljava/lang/String;

.field private mSia:Ljava/lang/String;

.field private mSib:Ljava/lang/String;

.field private mSic:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    .line 230
    const-string v0, "(\\*|#)(\\d{1,5})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternATTDialString:Ljava/util/regex/Pattern;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "*1"

    aput-object v2, v1, v4

    const-string v2, "*2"

    aput-object v2, v1, v5

    const-string v2, "*7"

    aput-object v2, v1, v3

    const-string v2, "*9"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sEntelSpecialDialString:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "*1"

    aput-object v2, v1, v4

    const-string v2, "*2"

    aput-object v2, v1, v5

    const-string v2, "*3"

    aput-object v2, v1, v3

    const-string v2, "*4"

    aput-object v2, v1, v6

    const-string v2, "*5"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "*6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "*7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "*8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "*9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "*20"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "*21"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "*171"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "*611"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sBStartSpecialDialString:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "#9"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sSPA_IusacelDialString:Ljava/util/ArrayList;

    .line 267
    const-string v0, "((\\*)(\\d{2})(\\+{0,1})(\\d{0,}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 627
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 628
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 629
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 631
    return-void
.end method

.method private static final attSpecialDialString()Z
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v0

    return v0
.end method

.method private static final brightstarSpecialDialString()Z
    .locals 2

    .prologue
    .line 294
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    .line 1992
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1995
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1996
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    .line 1999
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    .line 2000
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1997
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2004
    :cond_1
    return-object v1
.end method

.method private static final entelSpecialDialString()Z
    .locals 2

    .prologue
    .line 288
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040098

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1468
    :goto_0
    return-object v0

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1446
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1447
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1448
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1449
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1450
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1452
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "76"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1453
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1454
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1458
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1459
    const-string v0, "Call Forward Unconditional Timer"

    goto/16 :goto_0

    .line 1460
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1461
    const-string v0, "Specific Incoming Call Barring"

    goto/16 :goto_0

    .line 1462
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "157"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1463
    const-string v0, "Anonymous Incoming Call Barring"

    goto/16 :goto_0

    .line 1468
    :cond_a
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 493
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isScMatchesSuppServType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "isMatch":Z
    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 478
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "sc":Ljava/lang/String;
    const-string v3, "22"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    const/4 v0, 0x1

    .line 486
    .end local v2    # "sc":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 482
    .restart local v2    # "sc":Ljava/lang/String;
    :cond_1
    const-string v3, "156"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 7
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 583
    .local v5, "resource":Landroid/content/res/Resources;
    if-eqz p0, :cond_1

    .line 584
    const v6, 0x1070034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "barringMMI":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 587
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 588
    .local v4, "match":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    .line 592
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "barringMMI":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "match":Ljava/lang/String;
    :goto_1
    return v6

    .line 587
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "barringMMI":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "match":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "barringMMI":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "match":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 567
    if-eqz p0, :cond_1

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeUncondCallFwdTimer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 576
    if-eqz p0, :cond_0

    const-string v0, "22"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 2
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    const/4 v0, 0x0

    .line 724
    if-nez p0, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v0

    .line 732
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 759
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_2

    .line 760
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v0

    .line 764
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 769
    goto :goto_0
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 697
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "isTwoDigitShortCode"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v4

    .line 701
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v5, :cond_2

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .line 706
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 707
    .local v1, "dialnumber":Ljava/lang/String;
    const-string v5, "ImsPhoneMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Two Digit Number Pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 709
    const-string v4, "ImsPhoneMmiCode"

    const-string v5, "Two Digit Number Pattern -true"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v4, 0x1

    goto :goto_0

    .line 706
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 713
    .end local v1    # "dialnumber":Ljava/lang/String;
    :cond_4
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "Two Digit Number Pattern -false"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final iusacellSpecialDialString()Z
    .locals 2

    .prologue
    .line 303
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1561
    new-array v3, v8, [Ljava/lang/String;

    const-string v7, "{0}"

    aput-object v7, v3, v6

    const-string v7, "{1}"

    aput-object v7, v3, v5

    const-string v7, "{2}"

    aput-object v7, v3, v9

    .line 1562
    .local v3, "sources":[Ljava/lang/String;
    new-array v1, v8, [Ljava/lang/CharSequence;

    .line 1568
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v7, v9, :cond_1

    move v2, v5

    .line 1571
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v5, :cond_3

    .line 1572
    if-eqz v2, :cond_2

    .line 1573
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400c8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1600
    .local v4, "template":Ljava/lang/CharSequence;
    :goto_1
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v6

    .line 1601
    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 1602
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    .line 1604
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v7, :cond_0

    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    if-ne v7, v5, :cond_0

    .line 1607
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v5, :cond_6

    move v0, v5

    .line 1608
    .local v0, "cffEnabled":Z
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_0

    .line 1609
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v5, v0, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1613
    .end local v0    # "cffEnabled":Z
    :cond_0
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5

    .end local v2    # "needTimeTemplate":Z
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_1
    move v2, v6

    .line 1568
    goto :goto_0

    .line 1576
    .restart local v2    # "needTimeTemplate":Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400c7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1579
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_3
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v7, :cond_4

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1580
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400c6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1586
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v2, :cond_5

    .line 1587
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1590
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400c9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    :cond_6
    move v0, v6

    .line 1607
    goto :goto_2
.end method

.method private makeCFTQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1730
    const-string v3, "ImsPhoneMmiCode"

    const-string v4, "makeCFTQueryResultMessage: "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "{0}"

    aput-object v3, v1, v5

    const-string v3, "{1}"

    aput-object v3, v1, v6

    const-string v3, "{2}"

    aput-object v3, v1, v7

    .line 1733
    .local v1, "sources":[Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/CharSequence;

    .line 1736
    .local v0, "destinations":[Ljava/lang/CharSequence;
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1737
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x10400c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1743
    .local v2, "template":Ljava/lang/CharSequence;
    :goto_0
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v3, p2

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v5

    .line 1744
    iget-object v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 1745
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 1747
    invoke-static {v2, v1, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 1740
    .end local v2    # "template":Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x10400c9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "template":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 469
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 471
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 11
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 323
    const/4 v7, 0x0

    .line 326
    .local v7, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->attSpecialDialString()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 327
    const/4 v5, 0x0

    .line 328
    .local v5, "isATTDialString":Z
    sget-object v9, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternATTDialString:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 329
    .local v0, "ATTString":Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "0"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const-string v9, "00"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 331
    :cond_1
    const/4 v5, 0x1

    .line 334
    :cond_2
    const/4 v9, 0x1

    if-eq v5, v9, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move-object v8, v7

    .line 427
    .end local v0    # "ATTString":Ljava/util/regex/Matcher;
    .end local v5    # "isATTDialString":Z
    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .local v8, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :goto_0
    return-object v8

    .line 344
    .end local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->entelSpecialDialString()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 345
    sget-object v9, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sEntelSpecialDialString:Ljava/util/ArrayList;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    move-object v8, v7

    .line 346
    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_0

    .line 352
    .end local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->brightstarSpecialDialString()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 353
    sget-object v9, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sBStartSpecialDialString:Ljava/util/ArrayList;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    move-object v8, v7

    .line 354
    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_0

    .line 360
    .end local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->iusacellSpecialDialString()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 361
    sget-object v9, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sSPA_IusacelDialString:Ljava/util/ArrayList;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    move-object v8, v7

    .line 362
    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_0

    .line 369
    .end local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_7
    sget v9, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_8

    .line 370
    sget-object v9, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 371
    .local v4, "gm":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 372
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "DialCode":Ljava/lang/String;
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "DialPrefix":Ljava/lang/String;
    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "DialNumber":Ljava/lang/String;
    const-string v9, "67"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v2, :cond_a

    .line 377
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#31#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 387
    .end local v1    # "DialCode":Ljava/lang/String;
    .end local v2    # "DialNumber":Ljava/lang/String;
    .end local v3    # "DialPrefix":Ljava/lang/String;
    .end local v4    # "gm":Ljava/util/regex/Matcher;
    :cond_8
    :goto_1
    sget-object v9, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 390
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 391
    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 392
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 393
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    .line 394
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 395
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 396
    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    .line 397
    const/16 v9, 0x9

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    .line 398
    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    .line 399
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 405
    iget-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "#"

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 408
    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 409
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    :cond_9
    :goto_2
    move-object v8, v7

    .line 427
    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto/16 :goto_0

    .line 379
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v1    # "DialCode":Ljava/lang/String;
    .restart local v2    # "DialNumber":Ljava/lang/String;
    .restart local v3    # "DialPrefix":Ljava/lang/String;
    .restart local v4    # "gm":Ljava/util/regex/Matcher;
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_a
    const-string v9, "82"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v2, :cond_8

    .line 381
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*31#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 411
    .end local v1    # "DialCode":Ljava/lang/String;
    .end local v2    # "DialNumber":Ljava/lang/String;
    .end local v3    # "DialPrefix":Ljava/lang/String;
    .end local v4    # "gm":Ljava/util/regex/Matcher;
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    :cond_b
    const-string v9, "#"

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 416
    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 417
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_2

    .line 418
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 420
    const/4 v7, 0x0

    goto :goto_2

    .line 421
    :cond_d
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 423
    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 424
    .restart local v7    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 453
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 455
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 456
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 459
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 435
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 437
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 438
    iput-boolean p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 441
    if-eqz p1, :cond_0

    .line 442
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 443
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 448
    :goto_0
    return-object v0

    .line 445
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0
.end method

.method private onIcbQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v7, 0x1040083

    .line 1811
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "onIcbQueryComplete "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1813
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 1816
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1818
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/ims/ImsException;

    if-eqz v5, :cond_1

    .line 1819
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1820
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1821
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1849
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1850
    return-void

    .line 1823
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1826
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1829
    :cond_2
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/ims/ImsSsInfo;

    move-object v2, v5

    check-cast v2, [Lcom/android/ims/ImsSsInfo;

    .line 1830
    .local v2, "infos":[Lcom/android/ims/ImsSsInfo;
    array-length v5, v2

    if-nez v5, :cond_4

    .line 1831
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1846
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1833
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1834
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1835
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Num: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    iget-object v6, v6, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    iget v6, v6, Lcom/android/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1837
    :cond_5
    aget-object v5, v2, v1

    iget v5, v5, Lcom/android/ims/ImsSsInfo;->mStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 1838
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x1040081

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1841
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1620
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 1623
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1625
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/ims/ImsException;

    if-eqz v7, :cond_1

    .line 1626
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1627
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1628
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1678
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1680
    return-void

    .line 1630
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1634
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1639
    :cond_2
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v7

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1641
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    if-nez v7, :cond_4

    .line 1643
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x1040083

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1646
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v7, :cond_3

    .line 1647
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1674
    :cond_3
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1651
    :cond_4
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1659
    .local v6, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x1

    .line 1660
    .local v5, "serviceClassMask":I
    :goto_2
    const/16 v7, 0x80

    if-gt v5, v7, :cond_7

    .line 1663
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .local v3, "s":I
    :goto_3
    if-ge v1, v3, :cond_6

    .line 1664
    aget-object v7, v2, v1

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_5

    .line 1665
    aget-object v7, v2, v1

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1667
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1663
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1661
    :cond_6
    shl-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1671
    .end local v1    # "i":I
    .end local v3    # "s":I
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryClirComplete(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v11, 0x10400a4

    const v10, 0x10400a1

    const/4 v9, 0x1

    const v8, 0x104007f

    const/4 v7, 0x0

    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1854
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1857
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 1859
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 1860
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1861
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1862
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1943
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1944
    return-void

    .line 1864
    .restart local v1    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1868
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1869
    .local v3, "ssInfo":Landroid/os/Bundle;
    const-string v4, "queryClir"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 1872
    .local v0, "clirInfo":[I
    const-string v4, "ImsPhoneMmiCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLIR param n="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    aget v4, v0, v9

    packed-switch v4, :pswitch_data_0

    .line 1936
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1938
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1878
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x10400a5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1880
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1883
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x10400a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1885
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1889
    :pswitch_3
    aget v4, v0, v7

    packed-switch v4, :pswitch_data_1

    .line 1906
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1908
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1891
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1893
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1896
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1898
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1901
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x10400a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1903
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1913
    :pswitch_7
    aget v4, v0, v7

    packed-switch v4, :pswitch_data_2

    .line 1930
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1932
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1915
    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1917
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1920
    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x10400a3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1922
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1925
    :pswitch_a
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1927
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1876
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 1889
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1913
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v7, 0x104007f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1949
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 1952
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1954
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/ims/ImsException;

    if-eqz v3, :cond_1

    .line 1955
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1956
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1957
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1987
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1988
    return-void

    .line 1959
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1962
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1966
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 1968
    .local v1, "ints":[I
    array-length v3, v1

    if-eqz v3, :cond_6

    .line 1969
    aget v3, v1, v5

    if-nez v3, :cond_3

    .line 1970
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1983
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1971
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1973
    aget v3, v1, v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1974
    :cond_4
    aget v3, v1, v5

    if-ne v3, v6, :cond_5

    .line 1976
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1978
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1981
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryUncondCfTimerComplete(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1685
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 1688
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1689
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1724
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1725
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1727
    return-void

    .line 1692
    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v6

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1693
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v6, v1

    if-nez v6, :cond_1

    .line 1695
    const-string v6, "ImsPhoneMmiCode"

    const-string v7, "In infos.length == 0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040083

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1721
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1698
    :cond_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1699
    .local v5, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x1

    .line 1700
    .local v4, "serviceClassMask":I
    :goto_2
    const/16 v6, 0x80

    if-gt v4, v6, :cond_5

    .line 1702
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v1

    .local v2, "s":I
    :goto_3
    if-ge v0, v2, :cond_4

    .line 1703
    aget-object v6, v1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    aget-object v6, v1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-eqz v6, :cond_3

    .line 1706
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->startHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->startMinute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EndTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->endHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->endMinute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400b0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 1712
    :cond_3
    aget-object v6, v1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_2

    .line 1713
    aget-object v6, v1, v0

    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFTQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1715
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 1701
    :cond_4
    shl-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1719
    .end local v0    # "i":I
    .end local v2    # "s":I
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v5, 0x1040084

    const v4, 0x104007f

    .line 1473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1474
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 1477
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1479
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 1480
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1481
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_0

    .line 1482
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040086

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1523
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1524
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1525
    return-void

    .line 1485
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1489
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1490
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1491
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1493
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1496
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1497
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1498
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    if-eqz v3, :cond_4

    .line 1499
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1502
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1505
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1506
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1507
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1509
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1510
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1511
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1513
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1514
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1515
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040085

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1518
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1519
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v11, 0x1040083

    const v10, 0x1040081

    const v9, 0x104007f

    const/4 v8, 0x1

    .line 1752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1753
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 1756
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1758
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/ims/ImsException;

    if-eqz v5, :cond_1

    .line 1759
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1760
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1761
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1807
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1808
    return-void

    .line 1763
    .restart local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1766
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1769
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1770
    const/4 v3, 0x0

    .line 1771
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v5, v5, Landroid/os/Bundle;

    if-eqz v5, :cond_6

    .line 1772
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "Received CLIP/COLP/COLR Response."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1775
    .local v4, "ssInfoResp":Landroid/os/Bundle;
    const-string v5, "imsSsInfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    check-cast v3, Lcom/android/ims/ImsSsInfo;

    .line 1776
    .restart local v3    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    if-eqz v3, :cond_5

    .line 1777
    const-string v5, "ImsPhoneMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImsSsInfo mStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-nez v5, :cond_3

    .line 1779
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1780
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1781
    :cond_3
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v5, v8, :cond_4

    .line 1782
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1783
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1785
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1788
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1792
    .end local v4    # "ssInfoResp":Landroid/os/Bundle;
    :cond_6
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "Received Call Barring Response."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 1795
    .local v0, "cbInfos":[I
    const/4 v5, 0x0

    aget v5, v0, v5

    if-ne v5, v8, :cond_7

    .line 1796
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1797
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1799
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1800
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0
.end method

.method private processIcbMmiCodeForUpdate()V
    .locals 7

    .prologue
    .line 1407
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 1408
    .local v1, "dialingNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1413
    .local v3, "icbNum":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1414
    const-string v4, "\\$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1417
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->callBarrAction(Ljava/lang/String;)I

    move-result v0

    .line 1420
    .local v0, "callAction":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v0, v6, v3}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :goto_0
    return-void

    .line 1429
    :catch_0
    move-exception v2

    .line 1430
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v4, "ImsPhoneMmiCode"

    const-string v5, "Could not get UT handle for updating ICB."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 597
    if-nez p0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    const-string v0, "AO"

    .line 616
    :goto_0
    return-object v0

    .line 603
    :cond_1
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    const-string v0, "OI"

    goto :goto_0

    .line 605
    :cond_2
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    const-string v0, "OX"

    goto :goto_0

    .line 607
    :cond_3
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    const-string v0, "AI"

    goto :goto_0

    .line 609
    :cond_4
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 610
    const-string v0, "IR"

    goto :goto_0

    .line 611
    :cond_5
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 612
    const-string v0, "AB"

    goto :goto_0

    .line 613
    :cond_6
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 614
    const-string v0, "AG"

    goto :goto_0

    .line 615
    :cond_7
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 616
    const-string v0, "AC"

    goto :goto_0

    .line 618
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 498
    if-nez p0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const/4 v0, 0x4

    .line 516
    :goto_0
    return v0

    .line 506
    :cond_1
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "22"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 509
    :cond_3
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    const/4 v0, 0x1

    goto :goto_0

    .line 511
    :cond_4
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    const/4 v0, 0x3

    goto :goto_0

    .line 513
    :cond_5
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 514
    const/4 v0, 0x2

    goto :goto_0

    .line 515
    :cond_6
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 516
    const/4 v0, 0x5

    goto :goto_0

    .line 518
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .prologue
    .line 1535
    sparse-switch p1, :sswitch_data_0

    .line 1553
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1537
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1539
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1541
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1543
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1545
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1547
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1549
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1551
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1535
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    .line 524
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 525
    :cond_0
    const/4 v1, 0x0

    .line 547
    :goto_0
    return v1

    .line 528
    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 530
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    .line 550
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :sswitch_0
    const/16 v1, 0xd

    goto :goto_0

    .line 532
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 533
    :sswitch_2
    const/16 v1, 0xc

    goto :goto_0

    .line 534
    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 536
    :sswitch_4
    const/16 v1, 0x8

    goto :goto_0

    .line 538
    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 540
    :sswitch_6
    const/16 v1, 0x30

    goto :goto_0

    .line 542
    :sswitch_7
    const/16 v1, 0xa0

    goto :goto_0

    .line 543
    :sswitch_8
    const/16 v1, 0x50

    goto :goto_0

    .line 544
    :sswitch_9
    const/16 v1, 0x10

    goto :goto_0

    .line 545
    :sswitch_a
    const/16 v1, 0x20

    goto :goto_0

    .line 546
    :sswitch_b
    const/16 v1, 0x11

    goto :goto_0

    .line 547
    :sswitch_c
    const/16 v1, 0x40

    goto :goto_0

    .line 530
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    .line 557
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 561
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public calForwardAction(Ljava/lang/String;)I
    .locals 4
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 874
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 879
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 880
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    .line 891
    :goto_0
    return v0

    .line 883
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    move v0, v1

    .line 884
    goto :goto_0

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 887
    goto :goto_0

    .line 888
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 889
    goto :goto_0

    .line 890
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 891
    const/4 v0, 0x4

    goto :goto_0

    .line 893
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callBarrAction(Ljava/lang/String;)I
    .locals 2
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x1

    .line 915
    :goto_0
    return v0

    .line 906
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    const/4 v0, 0x0

    goto :goto_0

    .line 908
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 910
    const/4 v0, 0x3

    goto :goto_0

    .line 912
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 915
    const/4 v0, 0x4

    goto :goto_0

    .line 917
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 661
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->cancelUSSD()V

    goto :goto_0

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    const/4 v0, 0x2

    .line 807
    :goto_0
    return v0

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    const/4 v0, 0x1

    goto :goto_0

    .line 807
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDialingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 1312
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1314
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1316
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1320
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1326
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_1

    .line 1327
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_2

    move v1, v3

    .line 1328
    .local v1, "cffEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1

    .line 1329
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1333
    .end local v1    # "cffEnabled":Z
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1327
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1338
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1339
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1344
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1345
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1350
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1351
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryUncondCfTimerComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1356
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1357
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1361
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1363
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1364
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1365
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1367
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0

    .line 1378
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0

    .line 1382
    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1383
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1388
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1389
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onIcbQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1394
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1395
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_4
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isPinPukCommand()Z
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShortCode()Z
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportedOverImsPhone()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 845
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    :cond_0
    :goto_0
    return v1

    .line 846
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 847
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "77"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "76"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "156"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "157"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 857
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 858
    .local v0, "serviceClass":I
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    move v1, v2

    .line 860
    goto/16 :goto_0

    .line 863
    .end local v0    # "serviceClass":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    move v1, v2

    .line 866
    goto/16 :goto_0

    .line 867
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v3, :cond_0

    move v1, v2

    .line 869
    goto/16 :goto_0
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .param p2, "isUssdRequest"    # Z

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 1253
    if-nez p1, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040087

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1258
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 1260
    if-nez p2, :cond_0

    .line 1261
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1266
    :cond_1
    return-void

    .line 1256
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 1

    .prologue
    .line 1277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError(Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method onUssdFinishedError(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 1282
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "ussdMessage":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1291
    :cond_1
    return-void
.end method

.method processCode()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 926
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 927
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "isShortCode"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-string v4, "ImsPhoneMmiCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending short code \'"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\' over CS pipe."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "cs_fallback"

    invoke-direct {v4, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :catch_0
    move-exception v22

    .line 1235
    .local v22, "exc":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x104007f

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1239
    .end local v22    # "exc":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 933
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 934
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "is CF"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 938
    .local v7, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v6

    .line 939
    .local v6, "reason":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v8

    .line 941
    .local v8, "time":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0

    .line 971
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->calForwardAction(Ljava/lang/String;)I

    move-result v5

    .line 974
    .local v5, "cfAction":I
    if-eqz v6, :cond_2

    const/4 v4, 0x4

    if-ne v6, v4, :cond_4

    :cond_2
    const/16 v25, 0x1

    .line 978
    .local v25, "isSettingUnconditional":I
    :goto_1
    const/4 v4, 0x1

    if-eq v5, v4, :cond_3

    const/4 v4, 0x3

    if-ne v5, v4, :cond_5

    :cond_3
    const/16 v24, 0x1

    .line 982
    .local v24, "isEnableDesired":I
    :goto_2
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "is CF setCallForward"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    move-object/from16 v3, p0

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 974
    .end local v24    # "isEnableDesired":I
    .end local v25    # "isSettingUnconditional":I
    :cond_4
    const/16 v25, 0x0

    goto :goto_1

    .line 978
    .restart local v25    # "isSettingUnconditional":I
    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    .line 990
    .end local v5    # "cfAction":I
    .end local v6    # "reason":I
    .end local v7    # "dialingNumber":Ljava/lang/String;
    .end local v8    # "time":I
    .end local v25    # "isSettingUnconditional":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeUncondCallFwdTimer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 991
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "is UncondCFTimer"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 994
    .restart local v7    # "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v6

    .line 996
    .restart local v6    # "reason":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v9, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1002
    :cond_7
    const/4 v10, 0x0

    .line 1003
    .local v10, "startHour":I
    const/4 v11, 0x0

    .line 1004
    .local v11, "startMinute":I
    const/4 v12, 0x0

    .line 1005
    .local v12, "endHour":I
    const/4 v13, 0x0

    .line 1006
    .local v13, "endMinute":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    const-string v9, "\\$"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1013
    .local v19, "duration":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v19, v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    aget-object v4, v19, v4

    if-eqz v4, :cond_b

    .line 1015
    const/4 v4, 0x0

    aget-object v4, v19, v4

    const-string v9, "\\:"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1016
    .local v27, "start":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v27, v4

    if-eqz v4, :cond_8

    .line 1017
    const/4 v4, 0x0

    aget-object v4, v27, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1019
    :cond_8
    const/4 v4, 0x1

    aget-object v4, v27, v4

    if-eqz v4, :cond_9

    .line 1020
    const/4 v4, 0x1

    aget-object v4, v27, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1023
    :cond_9
    const/4 v4, 0x1

    aget-object v4, v19, v4

    const-string v9, "\\:"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1024
    .local v21, "end":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v21, v4

    if-eqz v4, :cond_a

    .line 1025
    const/4 v4, 0x0

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1027
    :cond_a
    const/4 v4, 0x1

    aget-object v4, v21, v4

    if-eqz v4, :cond_b

    .line 1028
    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1032
    .end local v19    # "duration":[Ljava/lang/String;
    .end local v21    # "end":[Ljava/lang/String;
    .end local v27    # "start":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->calForwardAction(Ljava/lang/String;)I

    move-result v14

    .line 1033
    .local v14, "cfTimerAction":I
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "is CFUT setCallForward"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    move v15, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1040
    .end local v6    # "reason":I
    .end local v7    # "dialingNumber":Ljava/lang/String;
    .end local v10    # "startHour":I
    .end local v11    # "startMinute":I
    .end local v12    # "endHour":I
    .end local v13    # "endMinute":I
    .end local v14    # "cfTimerAction":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1046
    .local v26, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1048
    .local v23, "facility":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1051
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1052
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v9, v1, v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1055
    :cond_f
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1057
    .end local v23    # "facility":Ljava/lang/String;
    .end local v26    # "password":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "31"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_11

    .line 1063
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1065
    :catch_1
    move-exception v20

    .line 1066
    .local v20, "e":Lcom/android/ims/ImsException;
    :try_start_3
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1068
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    if-eqz v4, :cond_12

    .line 1070
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1072
    :catch_2
    move-exception v20

    .line 1073
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_5
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1075
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    if-eqz v4, :cond_13

    .line 1077
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1079
    :catch_3
    move-exception v20

    .line 1080
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_7
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1083
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_13
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1085
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "30"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v4

    if-eqz v4, :cond_16

    .line 1090
    :cond_15
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 1092
    :catch_4
    move-exception v20

    .line 1093
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_9
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1095
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v4

    if-eqz v4, :cond_18

    .line 1097
    :cond_17
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 1099
    :catch_5
    move-exception v20

    .line 1100
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_b
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1104
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    move-result v4

    if-eqz v4, :cond_19

    .line 1106
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 1108
    :catch_6
    move-exception v20

    .line 1109
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_d
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCLIP."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1111
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    move-result v4

    if-eqz v4, :cond_1b

    .line 1113
    :cond_1a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 1115
    :catch_7
    move-exception v20

    .line 1116
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_f
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCLIP."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1119
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_1b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1121
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "76"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    move-result v4

    if-eqz v4, :cond_1d

    .line 1125
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_10
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 1127
    :catch_8
    move-exception v20

    .line 1128
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_11
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCOLP."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1130
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    move-result v4

    if-eqz v4, :cond_1f

    .line 1132
    :cond_1e
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_12
    .catch Lcom/android/ims/ImsException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_0

    .line 1134
    :catch_9
    move-exception v20

    .line 1135
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_13
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCOLP."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1138
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_1f
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1140
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "77"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    move-result v4

    if-eqz v4, :cond_21

    .line 1146
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_14
    .catch Lcom/android/ims/ImsException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 1149
    :catch_a
    move-exception v20

    .line 1150
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_15
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCOLR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1152
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    move-result v4

    if-eqz v4, :cond_22

    .line 1156
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_16
    .catch Lcom/android/ims/ImsException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_0

    .line 1159
    :catch_b
    move-exception v20

    .line 1160
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_17
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCOLR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1162
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    move-result v4

    if-eqz v4, :cond_23

    .line 1164
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_18
    .catch Lcom/android/ims/ImsException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_0

    .line 1166
    :catch_c
    move-exception v20

    .line 1167
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_19
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCOLR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1170
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_23
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1172
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "156"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    move-result v4

    if-eqz v4, :cond_26

    .line 1174
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/16 v9, 0xa

    const/16 v15, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_1a
    .catch Lcom/android/ims/ImsException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_0

    .line 1186
    :catch_d
    move-exception v20

    .line 1187
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_1b
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for ICB."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_0

    .line 1183
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_25
    :try_start_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_1c
    .catch Lcom/android/ims/ImsException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    goto/16 :goto_0

    .line 1189
    :cond_26
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "157"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0

    move-result v4

    if-eqz v4, :cond_2a

    .line 1191
    const/16 v18, 0x0

    .line 1195
    .local v18, "callAction":I
    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x6

    const/16 v15, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_1e
    .catch Lcom/android/ims/ImsException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    goto/16 :goto_0

    .line 1213
    :catch_e
    move-exception v20

    .line 1214
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_1f
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for ICBa."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_0

    .line 1201
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_27
    :try_start_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1202
    const/16 v18, 0x1

    .line 1206
    :cond_28
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v4, v9, v0, v15, v1}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1203
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_20
    .catch Lcom/android/ims/ImsException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0

    move-result v4

    if-eqz v4, :cond_28

    .line 1204
    const/16 v18, 0x0

    goto :goto_3

    .line 1216
    .end local v18    # "callAction":I
    :cond_2a
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "43"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1220
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v4, v9, v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1222
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1225
    :cond_2d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1227
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v4, :cond_2f

    .line 1228
    const-string v4, "ImsPhoneMmiCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending pound string \'"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\' over CS pipe."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "cs_fallback"

    invoke-direct {v4, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1232
    :cond_2f
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2016
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsPhoneMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2018
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " poundString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dialingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
