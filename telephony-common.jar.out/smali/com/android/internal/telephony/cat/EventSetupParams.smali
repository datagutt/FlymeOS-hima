.class Lcom/android/internal/telephony/cat/EventSetupParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mEventList:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "eventList"    # [I

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 186
    iput-object p2, p0, Lcom/android/internal/telephony/cat/EventSetupParams;->mEventList:[I

    .line 187
    return-void
.end method
