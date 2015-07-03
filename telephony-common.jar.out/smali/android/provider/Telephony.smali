.class public final Landroid/provider/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$namephoto;,
        Landroid/provider/Telephony$CellBroadcasts;,
        Landroid/provider/Telephony$HtcCmas;,
        Landroid/provider/Telephony$BaseHtcCmasColumns;,
        Landroid/provider/Telephony$HtcThreadsColumns;,
        Landroid/provider/Telephony$HtcThreads;,
        Landroid/provider/Telephony$BaseHtcMsgColumns;,
        Landroid/provider/Telephony$HtcMessages;,
        Landroid/provider/Telephony$BaseHtcVvmColumns;,
        Landroid/provider/Telephony$HtcVvm;,
        Landroid/provider/Telephony$CdmaCarriers;,
        Landroid/provider/Telephony$SubGsmCarriers;,
        Landroid/provider/Telephony$GsmCarriers;,
        Landroid/provider/Telephony$Carriers;,
        Landroid/provider/Telephony$MmsSms;,
        Landroid/provider/Telephony$HTCMessageUtil;,
        Landroid/provider/Telephony$Mms;,
        Landroid/provider/Telephony$Threads;,
        Landroid/provider/Telephony$ThreadsColumns;,
        Landroid/provider/Telephony$CanonicalAddressesColumns;,
        Landroid/provider/Telephony$BaseMmsColumns;,
        Landroid/provider/Telephony$Sms;,
        Landroid/provider/Telephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field private static final HTC_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "Telephony"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/provider/Telephony;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Landroid/provider/Telephony;->HTC_DEBUG:Z

    return v0
.end method
