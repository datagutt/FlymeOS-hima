.class final Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
.super Ljava/lang/Object;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccAPDUArgument"
.end annotation


# instance fields
.field public channel:I

.field public cla:I

.field public command:I

.field public data:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3417
    iput p3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->channel:I

    .line 3418
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    .line 3419
    iput p2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    .line 3420
    iput p4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    .line 3421
    iput p5, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    .line 3422
    iput p6, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    .line 3423
    iput-object p7, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    .line 3424
    return-void
.end method
