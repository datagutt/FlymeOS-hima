.class Lcom/android/internal/telephony/cat/LanguageNotificationParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mLang:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 196
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->mLang:Ljava/lang/String;

    .line 197
    return-void
.end method
