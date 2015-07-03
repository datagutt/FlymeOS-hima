.class Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;
.super Ljava/lang/Object;
.source "HtcCdmaVoiceMail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "vmRequest"
.end annotation


# instance fields
.field number:Ljava/lang/String;

.field reason:I

.field requestStatus:I

.field requestType:I

.field response:Landroid/os/Message;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;
    .param p2, "x1"    # Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail$vmRequest;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;)V

    return-void
.end method
