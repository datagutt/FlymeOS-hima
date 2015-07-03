.class final Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;
.super Ljava/lang/Object;
.source "HtcRilExtendApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcRilExtendApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "argument"    # Ljava/lang/Object;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->argument:Ljava/lang/Object;

    .line 135
    return-void
.end method
