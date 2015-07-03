.class public Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
.super Ljava/lang/Object;
.source "HtcMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcMessageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SprintReassembleSmsInformation"
.end annotation


# instance fields
.field public currentSegment:I

.field public normalizedText:Ljava/lang/String;

.field public totalSegment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    return-void
.end method
