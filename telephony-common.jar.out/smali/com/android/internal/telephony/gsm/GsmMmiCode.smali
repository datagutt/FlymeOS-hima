.class public final Lcom/android/internal/telephony/gsm/GsmMmiCode;
.super Landroid/os/Handler;
.source "GsmMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final END_OF_USSD_COMMAND:C = '#'

.field static final EVENT_GET_CLIR_COMPLETE:I = 0x2

.field static final EVENT_QUERY_CF_COMPLETE:I = 0x3

.field static final EVENT_QUERY_COMPLETE:I = 0x5

.field static final EVENT_REQUERY_CF_COMPLETE:I = 0x8

.field static final EVENT_SET_CFF_COMPLETE:I = 0x6

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final EVENT_USSD_CANCEL_COMPLETE:I = 0x7

.field static final EVENT_USSD_COMPLETE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GsmMmiCode"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static final sBStartSpecialDialString:Ljava/util/ArrayList;

.field static final sEntelSpecialDialString:Ljava/util/ArrayList;

.field static sPatternATTDialString:Ljava/util/regex/Pattern;

.field static sPatternSuppService:Ljava/util/regex/Pattern;

.field static final sSPA_IusacelDialString:Ljava/util/ArrayList;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field mAction:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDialingNumber:Ljava/lang/String;

.field private mHtcContext:Landroid/content/Context;

.field private mIsCallFwdReg:Z

.field private mIsPendingUSSD:Z

.field private mIsUssdRequest:Z

.field mMessage:Ljava/lang/CharSequence;

.field mOriginalDialingNumber:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPoundString:Ljava/lang/String;

.field mPwd:Ljava/lang/String;

.field private mQueryCount:I

.field mSc:Ljava/lang/String;

.field mSia:Ljava/lang/String;

.field mSib:Ljava/lang/String;

.field mSic:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)([^#]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    .line 183
    const-string v0, "(\\*|#)(\\d{1,5})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternATTDialString:Ljava/util/regex/Pattern;

    .line 187
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

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sEntelSpecialDialString:Ljava/util/ArrayList;

    .line 192
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

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sBStartSpecialDialString:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "#9"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sSPA_IusacelDialString:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 604
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 605
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 606
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const-string v2, "com.htc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "GsmMmiCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find htcContext. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private static final attSpecialDialString()Z
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v0

    return v0
.end method

.method private static final brightstarSpecialDialString()Z
    .locals 2

    .prologue
    .line 226
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

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    .line 2027
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2029
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 2030
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    .line 2033
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    .line 2034
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2031
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2038
    :cond_1
    return-object v1
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    .line 2010
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2013
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 2014
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    .line 2017
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    .line 2018
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2015
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2022
    :cond_1
    return-object v1
.end method

.method private static final entelSpecialDialString()Z
    .locals 2

    .prologue
    .line 222
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

.method private formatLtr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1877
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 1878
    .local v0, "fmt":Landroid/text/BidiFormatter;
    if-nez p1, :cond_0

    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v2, 0x104007f

    .line 1455
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 1456
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1457
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 1459
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v2, 0x307020a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1465
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return-object v1

    .line 1461
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1465
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040098

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1515
    :goto_0
    return-object v0

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToCallForwardReasonString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1479
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1481
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1483
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1485
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1494
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104009a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1496
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v1, 0x3070203

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1501
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v1, 0x3070204

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1506
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1509
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v1, 0x3070205

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1515
    :cond_9
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private handlePasswordError(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 1232
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1239
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1240
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1241
    return-void
.end method

.method private handleSimPinDisableError()V
    .locals 4

    .prologue
    .line 1252
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1258
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v3, 0x307020b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1259
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1262
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1263
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1264
    return-void
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 444
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

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 558
    if-eqz p0, :cond_1

    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "353"

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

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 549
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

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 3
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v0, 0x0

    .line 731
    if-nez p0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v0

    .line 739
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    :cond_2
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 762
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSpecificDialNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->isCustomerSpecificDialString(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 798
    if-eqz p0, :cond_3

    .line 799
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v0

    .line 814
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_2

    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 815
    goto :goto_0

    .line 819
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 826
    goto :goto_0
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 706
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v4

    .line 708
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v5, :cond_2

    .line 709
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .line 713
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 714
    .local v1, "dialnumber":Ljava/lang/String;
    const-string v5, "GsmMmiCode"

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

    .line 715
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 716
    const-string v4, "GsmMmiCode"

    const-string v5, "Two Digit Number Pattern -true"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v4, 0x1

    goto :goto_0

    .line 713
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 720
    .end local v1    # "dialnumber":Ljava/lang/String;
    :cond_4
    const-string v5, "GsmMmiCode"

    const-string v6, "Two Digit Number Pattern -false"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final iusacellSpecialDialString()Z
    .locals 2

    .prologue
    .line 233
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
    .locals 11
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1796
    new-array v4, v9, [Ljava/lang/String;

    const-string v8, "{0}"

    aput-object v8, v4, v7

    const-string v8, "{1}"

    aput-object v8, v4, v6

    const-string v8, "{2}"

    aput-object v8, v4, v10

    .line 1797
    .local v4, "sources":[Ljava/lang/String;
    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 1803
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v8, v10, :cond_4

    move v2, v6

    .line 1806
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v6, :cond_6

    .line 1807
    if-eqz v2, :cond_5

    .line 1808
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400c8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1835
    .local v5, "template":Ljava/lang/CharSequence;
    :goto_1
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, p2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v1, v7

    .line 1836
    iget-object v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v9, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->formatLtr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v6

    .line 1838
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v10

    .line 1842
    aget-object v8, v1, v7

    if-nez v8, :cond_0

    .line 1843
    const-string v8, ""

    aput-object v8, v1, v7

    .line 1846
    :cond_0
    aget-object v8, v1, v6

    if-nez v8, :cond_1

    .line 1847
    const-string v8, ""

    aput-object v8, v1, v6

    .line 1850
    :cond_1
    aget-object v8, v1, v10

    if-nez v8, :cond_2

    .line 1851
    const-string v8, ""

    aput-object v8, v1, v10

    .line 1854
    :cond_2
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v8, :cond_3

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, p2

    if-ne v8, v6, :cond_3

    .line 1857
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v6, :cond_9

    move v0, v6

    .line 1862
    .local v0, "cffEnabled":Z
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1863
    .local v3, "simRecord":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v3, :cond_3

    .line 1864
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iget-object v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v6, v0, v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlag(IZILjava/lang/String;)V

    .line 1870
    .end local v0    # "cffEnabled":Z
    .end local v3    # "simRecord":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_3
    invoke-static {v5, v4, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6

    .end local v2    # "needTimeTemplate":Z
    .end local v5    # "template":Ljava/lang/CharSequence;
    :cond_4
    move v2, v7

    .line 1803
    goto :goto_0

    .line 1811
    .restart local v2    # "needTimeTemplate":Z
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400c7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1814
    .end local v5    # "template":Ljava/lang/CharSequence;
    :cond_6
    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v8, :cond_7

    iget-object v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1815
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400c6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1821
    .end local v5    # "template":Ljava/lang/CharSequence;
    :cond_7
    if-eqz v2, :cond_8

    .line 1822
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400ca

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "template":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1825
    .end local v5    # "template":Ljava/lang/CharSequence;
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400c9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "template":Ljava/lang/CharSequence;
    goto/16 :goto_1

    :cond_9
    move v0, v7

    .line 1857
    goto :goto_2
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 436
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 438
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 13
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 258
    const/4 v7, 0x0

    .line 261
    .local v7, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUSSDExcludeNumbers()[Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "ussdexclude":[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 263
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v1, v2

    .line 264
    .local v6, "number":Ljava/lang/String;
    invoke-static {v6, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v8, v7

    .line 385
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .local v8, "ret":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 263
    .end local v8    # "ret":Ljava/lang/Object;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->attSpecialDialString()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 272
    const/4 v3, 0x0

    .line 273
    .local v3, "isATTDialString":Z
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternATTDialString:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 274
    .local v0, "ATTString":Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "0"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    :cond_2
    const-string v10, "00"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 276
    :cond_3
    const/4 v3, 0x1

    .line 279
    :cond_4
    if-eq v3, v11, :cond_5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    move-object v8, v7

    .line 280
    .restart local v8    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 287
    .end local v0    # "ATTString":Ljava/util/regex/Matcher;
    .end local v3    # "isATTDialString":Z
    .end local v8    # "ret":Ljava/lang/Object;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->entelSpecialDialString()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 288
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sEntelSpecialDialString:Ljava/util/ArrayList;

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v11, :cond_9

    move-object v8, v7

    .line 289
    .restart local v8    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 291
    .end local v8    # "ret":Ljava/lang/Object;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->brightstarSpecialDialString()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 292
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sBStartSpecialDialString:Ljava/util/ArrayList;

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v11, :cond_9

    move-object v8, v7

    .line 293
    .restart local v8    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 295
    .end local v8    # "ret":Ljava/lang/Object;
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->iusacellSpecialDialString()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 296
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sSPA_IusacelDialString:Ljava/util/ArrayList;

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v11, :cond_9

    move-object v8, v7

    .line 297
    .restart local v8    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 302
    .end local v8    # "ret":Ljava/lang/Object;
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 303
    const-string v10, "*67"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 307
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 309
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 310
    const-string v10, "67"

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    move-object v8, v7

    .line 311
    .restart local v8    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 312
    .end local v8    # "ret":Ljava/lang/Object;
    :cond_a
    const-string v10, "*82"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 316
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 318
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 319
    const-string v10, "82"

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    move-object v8, v7

    .line 320
    .restart local v8    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 324
    .end local v8    # "ret":Ljava/lang/Object;
    :cond_b
    sget-object v10, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 327
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 330
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 332
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    .line 333
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    .line 334
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    .line 335
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 338
    iget-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 340
    const/4 v10, 0x7

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    .line 341
    const/16 v10, 0x9

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    .line 342
    const/16 v10, 0xb

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    .line 343
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 345
    iget-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 346
    iput-object p0, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mOriginalDialingNumber:Ljava/lang/String;

    .line 349
    iget-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mOriginalDialingNumber:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mOriginalDialingNumber:Ljava/lang/String;

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v10

    if-nez v10, :cond_c

    .line 352
    const/4 v7, 0x0

    :cond_c
    :goto_2
    move-object v8, v7

    .line 385
    .restart local v8    # "ret":Ljava/lang/Object;
    goto/16 :goto_1

    .line 355
    .end local v8    # "ret":Ljava/lang/Object;
    :cond_d
    const-string v10, "#"

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 362
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 367
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_2

    .line 369
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 371
    const/4 v7, 0x0

    goto :goto_2

    .line 372
    :cond_f
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 376
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 381
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 420
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 422
    .local v0, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 423
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 424
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 426
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 398
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 401
    .local v0, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 402
    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    .line 405
    if-eqz p1, :cond_0

    .line 406
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 407
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 412
    :goto_0
    return-object v0

    .line 409
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0
.end method

.method private onGetClirComplete(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v5, 0x10400a4

    const v4, 0x10400a1

    const/4 v3, 0x0

    .line 1679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1680
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1684
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1686
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1687
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1757
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1758
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1759
    return-void

    .line 1691
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 1694
    .local v0, "clirArgs":[I
    const/4 v2, 0x1

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1696
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1698
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1702
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1704
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1708
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104007f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1710
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1716
    :pswitch_3
    aget v2, v0, v3

    packed-switch v2, :pswitch_data_1

    .line 1719
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1731
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1723
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1727
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1736
    :pswitch_6
    aget v2, v0, v3

    packed-switch v2, :pswitch_data_2

    .line 1739
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1752
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1743
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1747
    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 1716
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1736
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x0

    .line 1883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1884
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_0

    .line 1888
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v3, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1890
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1891
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1951
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1952
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1954
    return-void

    .line 1895
    :cond_0
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v7

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1897
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v1

    if-nez v7, :cond_2

    .line 1899
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x1040083

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1906
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1907
    .local v5, "simRecord":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v5, :cond_1

    .line 1908
    const/4 v7, 0x1

    const-string v8, ""

    invoke-virtual {v5, v7, v9, v9, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlag(IZILjava/lang/String;)V

    .line 1948
    .end local v5    # "simRecord":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_1
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1915
    :cond_2
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1923
    .local v6, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x1

    .line 1924
    .local v4, "serviceClassMask":I
    :goto_2
    const/16 v7, 0x80

    if-gt v4, v7, :cond_6

    .line 1927
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v1

    .local v2, "s":I
    :goto_3
    if-ge v0, v2, :cond_5

    .line 1929
    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    const/16 v8, 0x59

    if-ne v7, v8, :cond_4

    .line 1932
    const-string v7, "GsmMmiCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CPHS call forward info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1935
    :cond_4
    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 1936
    aget-object v7, v1, v0

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1938
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 1925
    :cond_5
    shl-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1945
    .end local v0    # "i":I
    .end local v2    # "s":I
    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x1

    const v6, 0x104007f

    const/4 v5, 0x0

    .line 1958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1959
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 1963
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1965
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1968
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    .line 1969
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1970
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_1

    .line 1972
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v4, 0x307020a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2004
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 2005
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 2006
    return-void

    .line 1974
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1977
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1981
    :cond_3
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 1983
    .local v1, "ints":[I
    array-length v3, v1

    if-eqz v3, :cond_8

    .line 1984
    aget v3, v1, v5

    if-nez v3, :cond_4

    .line 1985
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2001
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1986
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1988
    aget v3, v1, v7

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1989
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1991
    aget v3, v1, v5

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1992
    :cond_6
    aget v3, v1, v5

    if-ne v3, v7, :cond_7

    .line 1994
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1996
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1999
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v4, 0x3070207

    const v5, 0x3070206

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1521
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_13

    .line 1525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1527
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1528
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_12

    .line 1529
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 1531
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDetailIccStatus()[I

    move-result-object v0

    .line 1533
    .local v0, "SimStatus":[I
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_b

    .line 1534
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1548
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "04"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1550
    aget v3, v0, v8

    if-nez v3, :cond_1

    .line 1675
    .end local v0    # "SimStatus":[I
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    :goto_0
    return-void

    .line 1554
    .restart local v0    # "SimStatus":[I
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x1040088

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1556
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    aget v3, v0, v8

    if-le v3, v7, :cond_3

    move v3, v4

    :goto_1
    new-array v4, v7, [Ljava/lang/Object;

    aget v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v6, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    .end local v0    # "SimStatus":[I
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1674
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0

    .restart local v0    # "SimStatus":[I
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_3
    move v3, v5

    .line 1557
    goto :goto_1

    .line 1560
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "05"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1561
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x1040089

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1563
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    aget v6, v0, v7

    if-le v6, v7, :cond_5

    :goto_3
    new-array v5, v7, [Ljava/lang/Object;

    aget v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3

    .line 1567
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "042"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1568
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v6, 0x3070208

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1570
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    aget v6, v0, v9

    if-le v6, v7, :cond_7

    :goto_4
    new-array v5, v7, [Ljava/lang/Object;

    aget v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_4

    .line 1574
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v6, "052"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1575
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v6, 0x3070209

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1577
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const/4 v6, 0x3

    aget v6, v0, v6

    if-le v6, v7, :cond_9

    :goto_5
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x3

    aget v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    move v4, v5

    goto :goto_5

    .line 1584
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040086

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1587
    :cond_b
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_c

    .line 1591
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v4, 0x3070208

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1594
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x104008e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1597
    :cond_c
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_d

    .line 1598
    const-string v3, "GsmMmiCode"

    const-string v4, "FDN_CHECK_FAILURE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040080

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1605
    :cond_d
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v3, :cond_e

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_f

    .line 1607
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mHtcContext:Landroid/content/Context;

    const v4, 0x307020a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1609
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "04"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    aget v3, v0, v8

    if-eqz v3, :cond_0

    .line 1613
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "05"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    aget v3, v0, v7

    if-eqz v3, :cond_0

    .line 1618
    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x104007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1623
    .end local v0    # "SimStatus":[I
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x104007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1626
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1627
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1628
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    if-eqz v3, :cond_14

    .line 1629
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040084

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1636
    :goto_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1637
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_2

    .line 1632
    :cond_14
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1639
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1640
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1641
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1644
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1645
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_2

    .line 1647
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1648
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1649
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040084

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1653
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1654
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_2

    .line 1657
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1658
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1659
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040085

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1663
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1664
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    goto/16 :goto_2

    .line 1668
    :cond_18
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1669
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x104007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 571
    if-nez p0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    const-string v0, "AO"

    .line 590
    :goto_0
    return-object v0

    .line 577
    :cond_1
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    const-string v0, "OI"

    goto :goto_0

    .line 579
    :cond_2
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    const-string v0, "OX"

    goto :goto_0

    .line 581
    :cond_3
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    const-string v0, "AI"

    goto :goto_0

    .line 583
    :cond_4
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 584
    const-string v0, "IR"

    goto :goto_0

    .line 585
    :cond_5
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    const-string v0, "AB"

    goto :goto_0

    .line 587
    :cond_6
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 588
    const-string v0, "AG"

    goto :goto_0

    .line 589
    :cond_7
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 590
    const-string v0, "AC"

    goto :goto_0

    .line 592
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
    .line 450
    if-nez p0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    const/4 v0, 0x4

    .line 465
    :goto_0
    return v0

    .line 456
    :cond_1
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_2
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    const/4 v0, 0x1

    goto :goto_0

    .line 460
    :cond_3
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    const/4 v0, 0x3

    goto :goto_0

    .line 462
    :cond_4
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 463
    const/4 v0, 0x2

    goto :goto_0

    .line 464
    :cond_5
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    const/4 v0, 0x5

    goto :goto_0

    .line 467
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scToCallForwardReasonString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "sc"    # Ljava/lang/String;

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    const-string v0, "002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x307016e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 482
    :cond_1
    const-string v0, "21"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x307016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 484
    :cond_2
    const-string v0, "67"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x307016b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_3
    const-string v0, "62"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x307016d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 488
    :cond_4
    const-string v0, "61"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x307016c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_5
    const-string v0, "004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x307016f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .prologue
    .line 1769
    sparse-switch p1, :sswitch_data_0

    .line 1787
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1771
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1773
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1775
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1777
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1779
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1781
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1783
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1785
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1769
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
    .line 500
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 501
    :cond_0
    const/4 v1, 0x0

    .line 529
    :goto_0
    return v1

    .line 504
    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 506
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    .line 532
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

    .line 507
    :sswitch_0
    const/16 v1, 0xd

    goto :goto_0

    .line 508
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 509
    :sswitch_2
    const/16 v1, 0xc

    goto :goto_0

    .line 510
    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 512
    :sswitch_4
    const/16 v1, 0x8

    goto :goto_0

    .line 514
    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 522
    :sswitch_6
    const/16 v1, 0x30

    goto :goto_0

    .line 524
    :sswitch_7
    const/16 v1, 0xa0

    goto :goto_0

    .line 525
    :sswitch_8
    const/16 v1, 0x50

    goto :goto_0

    .line 526
    :sswitch_9
    const/16 v1, 0x10

    goto :goto_0

    .line 527
    :sswitch_a
    const/16 v1, 0x20

    goto :goto_0

    .line 528
    :sswitch_b
    const/16 v1, 0x11

    goto :goto_0

    .line 529
    :sswitch_c
    const/16 v1, 0x40

    goto :goto_0

    .line 506
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
    .line 539
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x0

    .line 543
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static final supportCallForward()Z
    .locals 2

    .prologue
    .line 927
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final supportPin2Puk2()Z
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 657
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->cancelPendingUssd(Landroid/os/Message;)V

    goto :goto_0

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    const/4 v0, 0x2

    .line 884
    :goto_0
    return v0

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    const/4 v0, 0x1

    goto :goto_0

    .line 884
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCLIRModeForLexikon()I
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x1

    .line 867
    :goto_0
    return v0

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    const/4 v0, 0x2

    goto :goto_0

    .line 867
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1339
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1341
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1343
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1347
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1353
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_3

    .line 1354
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v9, :cond_4

    move v2, v9

    .line 1356
    .local v2, "cffEnabled":Z
    :goto_1
    const/4 v6, 0x0

    .line 1357
    .local v6, "serviceClass":I
    const-string v3, ""

    .line 1358
    .local v3, "dialNumber":Ljava/lang/String;
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 1359
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 1360
    .local v4, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v6

    .line 1361
    iget-object v3, v4, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 1365
    .end local v4    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1368
    const-string v8, "GsmMmiCode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "service Class:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    if-eqz v2, :cond_2

    if-lez v6, :cond_2

    and-int/lit8 v8, v6, 0x1

    if-eq v9, v8, :cond_2

    .line 1372
    const/4 v2, 0x0

    .line 1377
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1378
    .local v7, "simRecord":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v7, :cond_3

    .line 1379
    invoke-virtual {v7, v9, v2, v6, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlag(IZILjava/lang/String;)V

    .line 1399
    .end local v2    # "cffEnabled":Z
    .end local v3    # "dialNumber":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    .end local v7    # "simRecord":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_4
    move v2, v10

    .line 1354
    goto :goto_1

    .line 1383
    .restart local v2    # "cffEnabled":Z
    .restart local v3    # "dialNumber":Ljava/lang/String;
    .restart local v6    # "serviceClass":I
    :cond_5
    and-int/lit8 v8, v6, 0x1

    if-nez v8, :cond_6

    if-nez v6, :cond_7

    .line 1384
    :cond_6
    invoke-virtual {p0, v11, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1385
    .local v5, "res":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8, v10, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1386
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCount:I

    .line 1388
    .end local v5    # "res":Landroid/os/Message;
    :cond_7
    and-int/lit8 v8, v6, 0x10

    if-nez v8, :cond_8

    if-nez v6, :cond_3

    .line 1389
    :cond_8
    invoke-virtual {p0, v11, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1390
    .restart local v5    # "res":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8, v10, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataCallForwardingOption(ILandroid/os/Message;)V

    .line 1391
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCount:I

    goto :goto_2

    .line 1405
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cffEnabled":Z
    .end local v3    # "dialNumber":Ljava/lang/String;
    .end local v5    # "res":Landroid/os/Message;
    .end local v6    # "serviceClass":I
    :pswitch_2
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCount:I

    .line 1406
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mQueryCount:I

    if-nez v8, :cond_0

    .line 1407
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1408
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1409
    .local v1, "ar1":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1415
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ar1":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1416
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1420
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1421
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1425
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1426
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1430
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1432
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_0

    .line 1433
    sget-object v8, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1434
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1436
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1447
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto/16 :goto_0

    .line 1339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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
    .line 681
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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
    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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
    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModeCLIRForLexikon()Z
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isPinPukCommand()Z
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

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
    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

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
    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

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

.method public isTemporaryModeCLIR()Z
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

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

.method public isUssdCancel()Z
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .param p2, "isUssdRequest"    # Z

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 1279
    if-nez p1, :cond_2

    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040087

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1284
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    .line 1286
    if-nez p2, :cond_0

    .line 1287
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1292
    :cond_1
    return-void

    .line 1282
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 1

    .prologue
    .line 1303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError(Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method onUssdFinishedError(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 1308
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "ussdMessage":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1316
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    .line 1318
    :cond_1
    return-void
.end method

.method processCode()V
    .locals 25

    .prologue
    .line 938
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 939
    const-string v4, "GsmMmiCode"

    const-string v10, "isShortCode"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1229
    :goto_0
    return-void

    .line 942
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mOriginalDialingNumber:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mOriginalDialingNumber:Ljava/lang/String;

    const-string v10, "#"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mOriginalDialingNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v16

    .line 1224
    .local v16, "exc":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    const v10, 0x104007f

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1226
    const-string v4, "GsmMmiCode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RuntimeException:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_0

    .line 952
    .end local v16    # "exc":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 955
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "30"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 956
    const-string v4, "GsmMmiCode"

    const-string v10, "is CLIP"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 959
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v4, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 962
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 963
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v4, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 968
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 972
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 974
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "31"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 975
    const-string v4, "GsmMmiCode"

    const-string v10, "is CLIR"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 980
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v4, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 984
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 986
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x2

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v4, v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 988
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 992
    :cond_d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 994
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 995
    const-string v4, "GsmMmiCode"

    const-string v10, "is CF"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->supportCallForward()Z

    move-result v4

    if-nez v4, :cond_f

    .line 999
    const-string v4, "GsmMmiCode"

    const-string v10, "is CF for Lexikon"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1003
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 1004
    .local v8, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    .line 1005
    .local v7, "serviceClass":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v6

    .line 1006
    .local v6, "reason":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v9

    .line 1008
    .local v9, "time":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1015
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1020
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1021
    const/4 v5, 0x1

    .line 1022
    .local v5, "cfAction":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    .line 1051
    :goto_1
    if-eqz v6, :cond_11

    const/4 v4, 0x4

    if-ne v6, v4, :cond_18

    :cond_11
    const/16 v18, 0x1

    .line 1054
    .local v18, "isSettingUnconditional":I
    :goto_2
    const/4 v4, 0x1

    if-eq v5, v4, :cond_12

    const/4 v4, 0x3

    if-ne v5, v4, :cond_19

    :cond_12
    const/16 v17, 0x1

    .line 1057
    .local v17, "isEnableDesired":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    move-object/from16 v3, p0

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1024
    .end local v5    # "cfAction":I
    .end local v17    # "isEnableDesired":I
    .end local v18    # "isSettingUnconditional":I
    :cond_13
    const/4 v5, 0x3

    .line 1025
    .restart local v5    # "cfAction":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    goto :goto_1

    .line 1027
    .end local v5    # "cfAction":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1028
    const/4 v5, 0x0

    .restart local v5    # "cfAction":I
    goto :goto_1

    .line 1029
    .end local v5    # "cfAction":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1030
    const/4 v5, 0x3

    .restart local v5    # "cfAction":I
    goto :goto_1

    .line 1031
    .end local v5    # "cfAction":I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1032
    const/4 v5, 0x4

    .restart local v5    # "cfAction":I
    goto :goto_1

    .line 1034
    .end local v5    # "cfAction":I
    :cond_17
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "invalid action"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1051
    .restart local v5    # "cfAction":I
    :cond_18
    const/16 v18, 0x0

    goto :goto_2

    .line 1054
    .restart local v18    # "isSettingUnconditional":I
    :cond_19
    const/16 v17, 0x0

    goto :goto_3

    .line 1067
    .end local v5    # "cfAction":I
    .end local v6    # "reason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "dialingNumber":Ljava/lang/String;
    .end local v9    # "time":I
    .end local v18    # "isSettingUnconditional":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1071
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    .line 1072
    .local v13, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    .line 1073
    .restart local v7    # "serviceClass":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1075
    .local v11, "facility":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v11, v13, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1078
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1079
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v12

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move v14, v7

    invoke-interface/range {v10 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1082
    :cond_1d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1085
    .end local v7    # "serviceClass":I
    .end local v11    # "facility":Ljava/lang/String;
    .end local v13    # "password":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "03"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1092
    .local v23, "oldPwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1093
    .local v20, "newPwd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1095
    :cond_1f
    const-string v4, "**"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-nez v4, :cond_20

    .line 1099
    const-string v11, "AB"

    .line 1103
    .restart local v11    # "facility":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v4, v11, v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1101
    .end local v11    # "facility":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "facility":Ljava/lang/String;
    goto :goto_4

    .line 1108
    :cond_21
    const v4, 0x1040086

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1111
    .end local v11    # "facility":Ljava/lang/String;
    :cond_22
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1114
    .end local v20    # "newPwd":Ljava/lang/String;
    .end local v23    # "oldPwd":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "43"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    .line 1118
    .restart local v7    # "serviceClass":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1119
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    move-result v10

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v4, v10, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1121
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1125
    :cond_26
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1127
    .end local v7    # "serviceClass":I
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "042"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "052"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->supportPin2Puk2()Z

    move-result v4

    if-nez v4, :cond_29

    .line 1131
    const-string v4, "GsmMmiCode"

    const-string v10, "PIN2/PUK2 for lexikon"

    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1139
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1140
    .local v21, "oldPinOrPuk":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1142
    .local v19, "newPinOrPuk":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    .line 1144
    .local v22, "oldPinOrPukLen":I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    .line 1145
    .local v24, "pinLen":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1148
    const v4, 0x104008a

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1151
    :cond_2a
    const/4 v4, 0x4

    move/from16 v0, v22

    if-lt v0, v4, :cond_2b

    const/16 v4, 0x8

    move/from16 v0, v22

    if-gt v0, v4, :cond_2b

    const/4 v4, 0x4

    move/from16 v0, v24

    if-lt v0, v4, :cond_2b

    const/16 v4, 0x8

    move/from16 v0, v24

    if-le v0, v4, :cond_2c

    .line 1155
    :cond_2b
    const v4, 0x104008b

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1156
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "04"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v10, :cond_2d

    .line 1160
    const v4, 0x104008d

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1163
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "04"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1, v10}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1172
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handleSimPinDisableError()V

    goto/16 :goto_0

    .line 1175
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "042"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1, v10}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1183
    :cond_30
    const v4, 0x1040086

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1186
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "05"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 1191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1, v10}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1194
    :cond_32
    const v4, 0x1040086

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1197
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string v10, "052"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 1202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1, v10}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1205
    :cond_34
    const v4, 0x1040086

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_0

    .line 1209
    :cond_35
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uicc unsupported service code="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1213
    :cond_36
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ivalid register/action="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1218
    .end local v19    # "newPinOrPuk":Ljava/lang/String;
    .end local v21    # "oldPinOrPuk":Ljava/lang/String;
    .end local v22    # "oldPinOrPukLen":I
    .end local v24    # "pinLen":I
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v4, :cond_38

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1221
    :cond_38
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v10, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1331
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GsmMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2052
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " poundString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dialingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
