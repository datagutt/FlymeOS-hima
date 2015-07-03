.class public Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
.super Ljava/lang/Object;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthRequest"
.end annotation


# instance fields
.field public autn:[B

.field public rand:[B

.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V
    .locals 0
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B

    .prologue
    .line 3779
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3780
    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    .line 3781
    iput-object p3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    .line 3782
    return-void
.end method
